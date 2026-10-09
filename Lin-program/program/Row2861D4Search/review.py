"""Independently replay finite columns/comparisons; do not infer E4 map laws."""
import importlib.util
import json
import collections
import sqlite3
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('independent',ROOT/'Row3147MapSearch/review.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)


def run():
    report=json.loads((HERE/'lifted-search.json').read_text());extra=json.loads((HERE/'comparisons.json').read_text())
    config=json.loads((ROOT/'upstream/category-inventory.json').read_text())
    objects={x['source']['name']:x['source'] for x in config['records'] if x['section'] in ['rings','modules']}
    connections={}
    def db(n):
        if n not in connections:connections[n]=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{objects[n]["path"]}?mode=ro',uri=True)
        return connections[n]
    for path,digest in report['sources'].items():assert a.sha(ROOT/'upstream/kervaire-49'/path)==digest
    assert report['aggregate_sha256']==a.sha(ROOT/'AggregateCW2EtaConditional/source.json')
    assert report['generator_sha256']==a.sha(ROOT/'AggregateCW2EtaConditional/generate.py')
    original=json.loads((ROOT/'AggregateCW2EtaConditional/source.json').read_text())['blocks']
    allblocks=dict(original);allblocks.update(extra['blocks'])
    degree_data=dict(extra['degrees'])
    for key,d in degree_data.items():
        n,s_t=key.split(':');s,t=map(int,s_t.split(','));meta=dict(db(n).execute('SELECT name,value FROM version'));assert t<=meta['t_max']
        rows=db(n).execute(f'SELECT id,mon,d2 FROM {n}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        stairs=db(n).execute(f'SELECT id,base,diff,level FROM {n}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
        assert d['e2']==[list(x) for x in rows] and d['staircase']==[list(x) for x in stairs]
    conditional=[];d2count=0
    for key,b in allblocks.items():
        n=b['object'];s,t=b['center'];r=b['page'];w=b['wire']
        a.check_wire(w)
        if r==2:
            meta=dict(db(n).execute('SELECT name,value FROM version'));assert t+1<=meta['t_max']
            groups=[degree_data[f'{n}:{x},{y}']['e2'] for x,y in [(s-2,t-1),(s,t),(s+2,t+1)]]
            assert list(map(len,groups))==[w['n'],w['m'],w['k']]
            if t>meta['d2_t_max']:assert all(not x for x in groups)
            for field,rows,dim in [('incoming',groups[0],w['m']),('outgoing',groups[1],w['k'])]:
                cols=[]
                for rid,mon,raw in rows:
                    assert raw is not None
                    ids=[] if raw=='' else list(map(int,raw.split(',')));assert ids==sorted(set(ids)) and all(0<=i<dim for i in ids);cols.append(ids)
                assert w[field]==[i in col for i in range(dim) for col in cols]
            d2count+=1
        else:
            assert all(pred in allblocks for pred in b['predecessors'])
            for u in b['uses']:
                sn,st=u['source'];row=db(n).execute(f'SELECT id,base,diff,level FROM {n}_AdamsE2_ss WHERE id=? AND s=? AND t=?',(u['row'][0],sn,st)).fetchone();assert list(row)==u['row']
                if u['kind'].startswith('conditional'):
                    assert n=='S0';assert any(u==v for old in original.values() for v in old['uses'])
                    conditional.append(dict(block=key,**u))
                elif u['kind']=='checked_zero_codomain':assert allblocks[u['target_predecessor']]['wire']['h']==0
                elif u['kind']=='stored_event':assert u['row'][2] is not None and u['row'][3]==10000-r
                elif u['kind']=='stored_zero_prefix_or_boundary':assert 2<=u['row'][3]<5000 or 9000<u['row'][3]<10000-r
                else:raise AssertionError(u['kind'])
    def e4(n,s,t,coords):
        w2=allblocks[f'{n}:{s},{t}:d2']['wire'];w3=allblocks[f'{n}:{s},{t}:d3']['wire']
        v=[int(i in coords) for i in range(w2['m'])]
        assert not any(a.matmul(w2['outgoing'],v,w2['k'],w2['m'],1))
        z=a.matmul(w2['projection'],v,w2['h'],w2['m'],1)
        assert not any(a.matmul(w3['outgoing'],z,w3['k'],w3['m'],1))
        return a.matmul(w3['projection'],z,w3['h'],w3['m'],1)
    ring_names={x['source']['name'] for x in config['records'] if x['section']=='rings'}
    reduction_steps=0
    for record in report['maps']:
        n=record['map']['to'];ring=n in ring_names;decode=a.coeff if ring else a.module
        factor=record.get('factor');fp=None if factor is None else a.parity(decode(factor['basis'][i]['mon']) for i in factor['indices'])
        for label in ['source','target']:
            item=record.get(label)
            if not item or 'input' not in item:continue
            cur=set()
            for j in item['source_indices']:
                mon=a.coeff(item['source_basis'][j]['mon'])
                if fp is None:
                    value={()}
                    for g in mon:
                        path=ROOT/'upstream/kervaire-49'/record['map']['path']
                        with sqlite3.connect(f'file:{path}?mode=ro',uri=True) as mc:raw=mc.execute('SELECT map FROM map_AdamsE2_S0_to_tmf WHERE id=?',(g,)).fetchone()[0]
                        assert item['generator_images'][str(g)]==raw
                        value=a.parity(tuple(sorted(x+y)) for x in value for y in a.poly(raw))
                else:value=a.parity(a.add_monomial(x,mon,ring) for x in fp)
                cur.symmetric_difference_update(value)
            assert cur=={a.stored_mon(x,ring) for x in item['input']}
            for step in item['trace']:
                p=step['source'];co='S0' if p['kind']=='lifted_ring_relation' else n
                raw,rs,rt=db(co).execute(f"SELECT rel,s,t FROM {p['table']} WHERE rowid=?",(p['rowid'],)).fetchone();assert raw==p['raw']
                if p['kind']=='lifted_ring_relation':
                    g=p['module_generator'];gs,gt=db(n).execute(f'SELECT s,t FROM {n}_AdamsE2_generators WHERE id=?',(g,)).fetchone();assert p['generator_degree']==[gs,gt] and p['degree']==[rs+gs,rt+gt]
                    terms=a.parity((a.coeff(x),g) for x in raw.split(';'))
                else:terms=a.parity(decode(x) for x in raw.split(';'))
                cur.symmetric_difference_update(a.parity(a.add_monomial(x,tuple(step['multiplier']),ring) for x in terms));reduction_steps+=1
            if 'coordinates' in item:assert cur=={decode(item['target_basis'][i]['mon']) for i in item['coordinates']}
            stage=record['E4']['stages'][label]
            if stage['status']=='complete_E4_image':assert stage['coordinates']==e4(n,*stage['degree'],item['coordinates'])
    assert collections.Counter(x['E4']['status'] for x in report['maps'])==report['E4_counts']=={'unknown':65,'target_zero_E4':4,'candidate_needs_full_map_compatibility':1}
    candidates=[x for x in report['maps'] if x['E4']['status'].startswith('candidate')]
    assert [x['map']['name'] for x in candidates]==['S0__DC2h6']
    assert report['row']==list(db('S0').execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2861').fetchone())==[2861,9,136,'1',None,9000]
    assert report['target_E4_basis_E2_indices']==[[0]]
    c=candidates[0]
    assert c['source']['source_indices']==[1] and c['source']['source_basis'][1]==dict(id=2861,mon='1,1,392,1')
    assert c['target']['source_indices']==[0] and c['target']['source_basis'][0]==dict(id=3082,mon='1,1,426,1')
    assert c['E4']['stages']['source']['coordinates']==[0,0] and c['E4']['stages']['target']['coordinates']==[1,0]
    result=dict(status='bounded_E4_numerical_search_independently_replayed',map_records=70,map_counts=report['E4_counts'],
        complete_comparison_union=len(allblocks),d2_comparison_union=d2count,module_reduction_steps=reduction_steps,
        inherited_conditional_uses=conditional,candidates=[x['map']['name'] for x in candidates],
        map_unknowns=[dict(map=x['map']['name'],stages=x['E4']['stages']) for x in report['maps'] if x['E4']['status']=='unknown'],
        source_raw_row=report['row'],target_E4_basis_E2_indices=report['target_E4_basis_E2_indices'],
        inputs_sha256={p.name:a.sha(p) for p in [HERE/'lifted-search.json',HERE/'comparisons.json']},script_sha256=a.sha(Path(__file__)),
        limitation='Numerical DC2h6 candidate with complete E4 images; explicit imported prefix and inherited d3 conditions retained. Full actual E4 map descent still requires a Lean proof.')
    (HERE/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print('Independent E4 audit passed:',report['E4_counts'],'DC2h6 candidate')
if __name__=='__main__':run()
