"""Independent SQL, full-matrix and all-coset replay; never infer a missing map is zero."""
import collections
import hashlib
import itertools
import json
import re
import sqlite3
from pathlib import Path

P = Path(__file__).resolve().parent
R = P.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()


def columns(bits, rows, cols):
    assert len(bits) == rows * cols
    return [sum(int(bits[i * cols + j]) << i for i in range(rows)) for j in range(cols)]


def apply(cols, x):
    y = 0
    for j, col in enumerate(cols):
        if (x >> j) & 1:
            y ^= col
    return y


def rank(cols):
    pivots = {}
    for value in cols:
        while value:
            p = value.bit_length() - 1
            if p not in pivots:
                pivots[p] = value
                break
            value ^= pivots[p]
    return len(pivots)


def run():
    coverage = json.loads((P / 'coverage.json').read_text())
    for path, digest in coverage['source_sha256'].items():
        assert sha(R / path) == digest, path
    source = json.loads((R / 'AggregateD5Conditional/source.json').read_text())
    inventory = json.loads((R / 'AggregateTargetInventory/inventory.json').read_text())
    dag = json.loads((R / 'AggregateD5Conditional/dag.json').read_text())
    db = R / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
    assert sha(db) == source['database_sha256']['S0']
    sql = sqlite3.connect(f'file:{db}?mode=ro', uri=True)
    groups = inventory['filtration_groups']
    actual_groups = sql.execute('SELECT s,t,count(*) FROM S0_AdamsE2_basis WHERE t-s=125 GROUP BY s,t ORDER BY s').fetchall()
    assert actual_groups == [(g['filtration'], g['total_degree'], g['dimension']) for g in groups]
    assert len(groups) == 45 and sum(g['dimension'] for g in groups) == 105
    blocks = source['blocks']
    assert len(blocks) == 358
    full_lean = (R / 'AggregateD5Conditional/Data.lean').read_text()
    basis_lean = (R / 'AggregateTargetInventory/Bases.lean').read_text()
    aggregate_lean = (R / 'AggregateTargetInventory/Aggregate.lean').read_text()
    fields = ['version', 'k', 'm', 'n', 'h', 'outgoing', 'incoming', 'inclusion', 'projection', 'up', 'down']
    key = lambda f, r: f'S0:{f},{f+125}:d{r}'
    name = lambda k: 'b_' + k.replace(':', '_').replace(',', '_').replace('-', 'neg')
    known_columns = 0
    null_columns = []
    cycle_pairs = 0
    coset_count = 0
    report_pages = {}
    for page in [2, 3, 4]:
        data = coverage['pages'][str(page)]
        centers = data['centers']
        expected = [g for g in groups if key(g['filtration'], page) in blocks]
        assert [x['filtration'] for x in centers] == [g['filtration'] for g in expected]
        assert data['block_count'] == len(centers)
        assert data['full_recorded_E2_center_coverage'] == (len(centers) == 45)
        lean = (P / f'D{page}.lean').read_text()
        matrix_ranks = []
        for i, center in enumerate(centers):
            f = center['filtration']; t = f + 125; k = key(f, page)
            block = blocks[k]; w = block['wire']
            assert block['center'] == [f,t] and block['page'] == page
            assert center['m'] == w['m'] and center['h'] == w['h']
            assert f'  | ⟨{i},_⟩ => {name(k)}' in lean
            assert f'  · exact {name(k)}_complete' in lean
            literal = ','.join(json.dumps(w[field], separators=(',', ':')) for field in fields)
            assert f'def {name(k)} : WireComparison := ⟨{literal}⟩' in full_lean
            assert f'theorem {name(k)}_complete : {name(k)}.Valid := by lin_cert using ()' in full_lean
            m,n,l,h = (w[z] for z in ['m','n','k','h'])
            A = columns(w['outgoing'],l,m); B = columns(w['incoming'],m,n)
            I = columns(w['inclusion'],m,h); Q = columns(w['projection'],h,m)
            U = columns(w['up'],n,m); V = columns(w['down'],m,l)
            assert all(apply(A,col)==0 for col in B)
            assert all(apply(A,col)==0 for col in I)
            assert all(apply(Q,col)==0 for col in B)
            assert all(apply(Q,col)==1<<j for j,col in enumerate(I))
            assert all(apply(I,apply(Q,1<<j)) ^ apply(B,apply(U,1<<j)) ^ apply(V,apply(A,1<<j)) == 1<<j for j in range(m))
            cycles = [x for x in range(1<<m) if apply(A,x)==0]
            boundaries = {apply(B,y) for y in range(1<<n)}
            assert boundaries <= set(cycles)
            assert h == m-rank(A)-rank(B)
            cosets = {frozenset(x^b for b in boundaries) for x in cycles}
            assert len(cosets) == 1<<h
            assert {apply(Q,x) for x in cycles} == set(range(1<<h))
            for x,y in itertools.product(cycles,repeat=2):
                assert (apply(Q,x)==apply(Q,y)) == ((x^y) in boundaries)
                cycle_pairs += 1
            coset_count += len(cosets)
            matrix_ranks.append({'filtration':f,'input':m,'outgoing_rank':rank(A),'incoming_rank':rank(B),'homology':h})
            actual_basis = [list(z) for z in sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(f,t))]
            assert center['E2_basis_ids'] == [z[0] for z in actual_basis]
            assert actual_basis == dag['degrees'][f'S0:{f},{t}']['e2']
            if page == 2:
                assert m == len(actual_basis)
                assert f'  | ⟨{i},_⟩ => f{f}' in aggregate_lean
                assert f'theorem f{f}_basis : IsBasis f{f}' in basis_lean
                for row_id in center['staircase_ids']:
                    assert f'theorem row{row_id}_coordinates' in basis_lean
                for degree,target_degree,matrix_cols,output_size in [((f,t),(f+2,t+1),A,l),((f-2,t-1),(f,t),B,m)]:
                    rows = sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',degree).fetchall()
                    target_count = sql.execute('SELECT count(*) FROM S0_AdamsE2_basis WHERE s=? AND t=?',target_degree).fetchone()[0]
                    assert len(rows) == len(matrix_cols) and target_count == output_size
                    for j, (row_id,mon,diff) in enumerate(rows):
                        if diff is None:
                            uses = [u for u in block['uses'] if u['kind']=='conditional_d2_staircase' and u['source']==list(degree) and u['column']==j]
                            assert len(uses)==1 and uses[0]['row']==[row_id,mon,None]
                            null_columns.append({'block':k,'source':list(degree),'basis_id':row_id,'column':j,'kind':uses[0]['kind'],'raw_d2':None,'staircase_basis_evidence':uses[0]['staircase_basis_evidence']})
                        else:
                            indices = [] if diff=='' else list(map(int,diff.split(',')))
                            value = 0
                            for target in indices:
                                assert 0<=target<output_size
                                value ^= 1<<target
                            assert matrix_cols[j] == value
                            known_columns += 1
            else:
                predecessor = blocks[key(f,page-1)]
                assert predecessor['wire']['h'] == m
                assert key(f,page-1) in block['predecessors']
                prev_centers = coverage['pages'][str(page-1)]['centers']
                j = [x['filtration'] for x in prev_centers].index(f)
                assert f'  | ⟨{i},_⟩ => ⟨{j},by decide⟩' in lean
        assert sum(x['input'] for x in matrix_ranks)==data['input_dimension']
        assert sum(x['homology'] for x in matrix_ranks)==data['homology_coordinate_count']
        missing=[]
        for group in groups:
            f=group['filtration']; k=key(f,page)
            if k not in blocks:
                prev=blocks.get(key(f,page-1))
                missing.append({'filtration':f,'center':[f,f+125],'previous_h':prev['wire']['h'] if prev else None,'reason':source['failures'].get(k,'not attempted in this snapshot')})
        assert missing == data['missing']
        assert [x for x in missing if x['previous_h']] == data['missing_nonzero_previous']
        closure=set()
        def visit(k):
            if k in closure:return
            closure.add(k)
            for dep in blocks[k]['predecessors']:visit(dep)
        for center in centers:visit(center['key'])
        uses=collections.Counter(u['kind'] for k in closure for u in blocks[k]['uses'])
        report_pages[str(page)]={'matrix_ranks':matrix_ranks,'comparison_dependency_count':len(closure),'source_use_kinds':dict(sorted(uses.items())),'homology_coordinate_count':data['homology_coordinate_count'],'missing_nonzero_previous':data['missing_nonzero_previous']}
    assert len(null_columns)==7
    assert [x['filtration'] for x in coverage['pages']['3']['missing_nonzero_previous']]==[9,34,36,45,57]
    assert sum(x['previous_h'] for x in coverage['pages']['3']['missing_nonzero_previous'])==7
    assert [(coverage['pages'][str(r)]['block_count'],coverage['pages'][str(r)]['input_dimension'],coverage['pages'][str(r)]['homology_coordinate_count']) for r in [2,3,4]]==[(45,105,44),(28,37,23),(9,9,2)]
    paths=[*sorted(P.glob('*.lean')),P/'coverage.json',P/'generate.py',Path(__file__),R/'AggregateD5Conditional/source.json',R/'AggregateD5Conditional/Data.lean',R/'AggregateD5Conditional/event-results.json',R/'AggregateTargetInventory/inventory.json',R/'AggregateTargetInventory/Bases.lean',R/'AggregateTargetInventory/Aggregate.lean']
    result={'status':'full_combination_homology_replay_passed','inputs_sha256':{str(p.relative_to(R)):sha(p) for p in paths},'database_sha256':sha(db),'SQL_known_d2_columns':known_columns,'conditional_NULL_d2_columns':null_columns,'all_cycle_pairs_checked':cycle_pairs,'local_boundary_cosets_checked':coset_count,'pages':report_pages,'limitations':['Finite imported complexes only; all actual Adams identifications and recorded conditional uses remain mathematical premises.','D3 and D4 are restricted products, not complete E4 or E5 pages. No missing block was assigned a zero matrix.','No inference subtracts accepted named events from E2 dimension; exact full-matrix ranks and boundary cosets determine the result.']}
    (P/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print(f'PASS: 45/28/9 blocks, 44/23/2 homology coordinates; {cycle_pairs} cycle pairs, {coset_count} local cosets; {known_columns} raw known d2 columns, 7 conditional NULL columns.')


if __name__=='__main__':
    run()
