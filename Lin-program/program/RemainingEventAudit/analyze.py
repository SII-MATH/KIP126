"""Check exact quotient matches and record conditional routes without overrides."""
import importlib.util
import json
from pathlib import Path
import re
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('linear_audit',ROOT/'Row2925Detector/source_independent_audit.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)


def run():
    source=json.loads((HERE/'source.json').read_text())
    for path,digest in source['inputs_sha256'].items():
        assert a.sha(ROOT/path)==digest
    screen=json.loads((ROOT/'Row2708MapSearch/lifted-search.json').read_text())
    records=source['physical_proof_records']
    maps=[]
    for entry in screen['maps']:
        if entry['status']!='source_nonzero_quotient' or not any(entry['target']['quotient']):
            continue
        name=entry['map']['to'];s,t=entry['source']['degree'];w=entry['source']['comparison']['wire']
        a.wire_laws(w)
        raw_degrees=next(x for x in source['selected_degrees'] if (x['object'],x['degree'])==(name,[s,t]))
        assert [[r['id'],r['mon'],r['d2']] for r in entry['source']['comparison']['rows'][1]]==raw_degrees['e2']
        values=[]
        later_zero=[]
        for e in records:
            if (e['name'],int(e['s']),int(e['t']))!=(name,s,t):
                continue
            try:
                ids=list(map(int,e['x'].split(','))) if e['x'] else []
            except ValueError:
                continue
            if ids!=sorted(set(ids)) or any(i<0 or i>=w['m'] for i in ids):
                continue
            v=[i in ids for i in range(w['m'])]
            if any(a.matmul(w['outgoing'],v,w['k'],w['m'],1)):
                continue
            q=a.matmul(w['projection'],v,w['h'],w['m'],1)
            matched=q==entry['source']['quotient']
            values.append(dict(id=e['id'],file=e['file'],physical_start_line=e['physical_start_line'],
                               reason=e['reason'],page=e['r'],raw_x=e['x'],raw_dx=e['dx'],quotient=q,exact_match=matched))
            if e['reason'] in ['N','G','D','XY'] and e['dx']=='' and 3<=int(e['r'])<999:
                later_zero.append(q)
        assert not any(e['exact_match'] for e in values)
        assert a.rank(later_zero)<a.rank(later_zero+[entry['source']['quotient']])
        maps.append(dict(map=entry['map'],degree=[s,t],wanted=entry['source']['quotient'],
            detected_target=entry['target']['quotient'],records=values,
            known_zero_log_span_does_not_contain_wanted=True,
            caveat='Even these later zero logs require finite page prefix semantics; no log is accepted as proof.'))
    assert len(maps)==6
    c2_comps=json.loads((ROOT/'Fact764TrajectoryAudit/comparison-source.json').read_text())
    for b in c2_comps:
        name,s,t=b['object'],b['s'],b['t']
        path=ROOT/'upstream/kervaire-49'/f'{name}_AdamsSS_t{261 if name=="S0" else 200}.db'
        db=sqlite3.connect(f'file:{path}?mode=ro',uri=True)
        meta=dict(db.execute('SELECT name,value FROM version'))
        assert t<=meta['d2_t_max'] and t+1<=meta['t_max']
        groups=[[list(row) for row in db.execute(f'SELECT id,mon,d2 FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',degree)]
                for degree in [(s-2,t-1),(s,t),(s+2,t+1)]]
        assert groups==b['rows']
        w=b['wire'];assert list(map(len,groups))==[w['n'],w['m'],w['k']]
        for field,group,dim in [('incoming',groups[0],w['m']),('outgoing',groups[1],w['k'])]:
            columns=[]
            for _,_,raw in group:
                assert raw is not None
                indices=list(map(int,raw.split(','))) if raw else []
                assert indices==sorted(set(indices)) and all(0<=i<dim for i in indices)
                columns.append(indices)
            assert w[field]==[i in col for i in range(dim) for col in columns]
        a.wire_laws(w)
    text=(ROOT/'Fact764TrajectoryAudit/MapComparison.lean').read_text()
    mats={}
    for name,m,n,encoded in re.findall(r'def (\w+) : Matrix (\d+) (\d+) := matrixOf \d+ \d+ (\[[^\n]*\])',text):
        mats[name]=(int(m),int(n),json.loads(encoded))
    assert mats['upperMiddleMap']==(3,3,[False,False,False,True,False,False,False,False,False])
    kernel=[]
    for code in range(8):
        v=[(code>>i)&1 for i in range(3)]
        vanishes=not any(a.matmul(mats['upperMiddleMap'][2],v,3,3,1))
        assert vanishes==(v[0]==0)
        if vanishes:kernel.append(v)
    assert len(kernel)==4
    raw3564=next(x for x in source['selected_degrees'] if (x['object'],x['degree'])==('S0',[18,145]))
    assert next(r for r in raw3564['staircase'] if r[0]==3564)==[3564,'1',None,9000]
    assert raw3564['e2'][1][0]==3562
    c2raw=next(x for x in source['selected_degrees'] if (x['object'],x['degree'])==('C2',[18,146]))
    assert next(r for r in c2raw['staircase'] if r[0]==3735)==[3735,'1',None,9000]
    exact_s0=[e for e in records if e['name']=='S0' and e['s']=='18' and e['t']=='145']
    assert [(e['id'],e['r'],e['x'],e['dx']) for e in exact_s0]==[('241081','999','1',''),('382803','3','4','2')]
    row2708=[e for e in records if e['name']=='S0' and e['s']=='7' and e['t']=='134' and e['x']=='0,1']
    assert len(row2708)==2 and all(e['r']=='3' and e['dx']=='[NULL]' for e in row2708)
    paths=[HERE/'source.json',Path(__file__),ROOT/'Fact764TrajectoryAudit/MapComparison.lean',
           ROOT/'Fact764TrajectoryAudit/comparison-source.json',ROOT/'Row2925Detector/source_independent_audit.py']
    result=dict(success=True,events=source['events'],row2708_exact_records=row2708,
                detecting_nonzero_source_maps=maps,row3564_exact_records=exact_s0,
                c2_target_map_kernel=kernel,c2_quotients_independently_rechecked=4,
                row3564_source_basis_id=3562,c2_source_staircase_id=3735,
                conclusions='No automatic zero override. Six detector routes still need actual image d3 values; C2 route needs local0-bit exclusion plus naturality and page coherence.',
                inputs_sha256={str(p.relative_to(ROOT)):a.sha(p) for p in paths})
    (HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n')
    print('PASS: six exact quotient mismatches and independent zero-log span exclusions; four C2/S0 quotients; 4/8 kernel candidates')


if __name__=='__main__':
    run()
