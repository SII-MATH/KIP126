"""E3 screen only; later full quotient transport must be proved separately."""
import importlib.util
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location('d5screen',ROOT/'Row3147MapSearch/search_lifted.py')
screen = importlib.util.module_from_spec(spec)
spec.loader.exec_module(screen)
screen.HERE = HERE
screen.SELECTED = [('source',2,128,[0]), ('target',11,136,[3])]
report = screen.run()
report.update(schema='fact715_d9_E3_map_screen/v1',
    source_staircase=[2314,2,128,'0',None,9993],
    source_named_E2=[1],target_named_E2=[0,0,0,1,0],
    scope='E3 screening, not a d9 proof. Later complete d3 through d8 quotients are required.')
(HERE/'lifted-search.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
for entry in report['maps']:
    s,t=entry.get('source',{}),entry.get('target',{})
    if s.get('status')=='computed_cycle_quotient' and t.get('status')=='computed_cycle_quotient':
        if not any(s['quotient']) and any(t['quotient']):
            print('SOURCE ZERO, TARGET NONZERO',entry['map']['name'],t['quotient'])
