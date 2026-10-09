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
screen.SELECTED = [('source',9,134,[2]), ('target',13,137,[1])]
report = screen.run()
report.update(schema='row2695_d4_E3_map_screen/v1',
    claim='No theorem of naturality, permanence, or row2695 is asserted by this bounded search.',
    source_staircase=[2695,9,134,'2',None,9000],
    source_named_E2=[0,0,1,0,0],target_named_E2=[0,1,0,0],
    scope='E3 screening for a d4 detector. Actual naturality remains an explicit mathematical condition.')
(HERE/'lifted-search.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
for entry in report['maps']:
    s,t=entry.get('source',{}),entry.get('target',{})
    if s.get('status')=='computed_cycle_quotient' and t.get('status')=='computed_cycle_quotient':
        if not any(s['quotient']) and any(t['quotient']):
            print('SOURCE ZERO, TARGET NONZERO',entry['map']['name'],t['quotient'])
