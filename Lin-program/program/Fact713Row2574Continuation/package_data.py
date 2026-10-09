"""Package all four combinations without changing either frozen parent."""
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
encode = lambda value: json.dumps(value,sort_keys=True,separators=(',',':'))+'\n'
counts=[]
for old in [0,1]:
    parent=load(ROOT/'Fact713Row3005Continuation'/f'zero_b{old}-family.json')['entries']
    for bit in [0,1]:
        name=f'zero_b{old}_c{bit}'
        report=load(HERE/'branches'/f'{name}.json')
        order=['S0:3,130:d2','S0:6,132:d3','S0:9,134:d3']
        extra=[dict(key=dict(object=b['object'],page=b['page'],s=b['center'][0],t=b['center'][1]),wire=b['wire'])
               for b in [report['added_to_previous'][key] for key in order]]
        assert len(parent)==1431 and len(extra)==3
        key=lambda e:tuple(e['key'][f] for f in ['object','page','s','t'])
        entries=parent+extra
        assert len({key(e) for e in entries})==len(entries)
        by={key(e):e['wire'] for e in entries}
        assert by['S0',3,6,132]==load(ROOT/'Row2574D3Search/wire'/f'source3_{bit}.json')
        assert by['S0',3,9,134]==load(ROOT/'Row2574D3Search/wire'/f'current3_{bit}.json')
        checks=0
        for entry in entries:
            obj,r,s,t=key(entry);w=entry['wire']
            if r>2:
                for field,ss,tt in [('n',s-r,t-r+1),('m',s,t),('k',s+r,t+r-1)]:
                    assert by[obj,r-1,ss,tt]['h']==w[field]
                    checks+=1
        (HERE/f'{name}-family.json').write_text(encode(dict(version=1,entries=entries)))
        counts.append(dict(name=name,entries=len(entries),extra=3,predecessor_dimension_checks=checks,
                           main_nonzero_page=11,next_unknown=report['named_trajectory'][-1]['reason']))
(HERE/'data-audit.json').write_text(json.dumps(dict(status='data_only_checked',branches=counts),indent=2)+'\n')
print(json.dumps(counts,indent=2))
