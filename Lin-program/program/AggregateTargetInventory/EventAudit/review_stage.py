import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;names=['EliminationStage.lean','stage-audit.json'];before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
subprocess.run(['python3',str(p/'generate_stage.py')],check=True)
assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
s=json.loads((p/'stage-audit.json').read_text());assert len(s['events'])==87
assert s['timing_counts']=={'earlier':85,'equal':2} and s['adjacent_complete']==57
assert {x['staircase_id'] for x in s['events'] if x['timing']=='equal'}=={2492,2493}
for x in s['events']:assert x['potential_h6_squared_page']==x['target_filtration']-2
text=(p/'EliminationStage.lean').read_text();assert text.count('_source_not_kernel :')==87 and text.count('_target_zero_next :')==57
print('87 source obstructions;57 next-quotient zeros;85 strictly earlier/2 same-page; deterministic')
