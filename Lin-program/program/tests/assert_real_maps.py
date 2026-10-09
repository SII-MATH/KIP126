"""Require every exported real S0-to-tmf theorem batch to pass the kernel."""
import json
from pathlib import Path
r=Path(__file__).resolve().parents[1]
f=r/'RealMapCertificates'
a=json.loads((f/'audit.json').read_text())
logs=json.loads((f/'compile_audit.json').read_text())
batches=sorted((f/'batches').glob('Batch*.lean'))
assert len(batches)==235, len(batches)
assert len(logs)==len(batches), (len(logs),len(batches))
assert len(a['resolved'])==23822 and not a['rejected']
assert len(a['matrices'])==8719
by_name={v['batch']:v for v in logs}
for b in batches:
 assert by_name[b.name]['exit_code']==0, b.name
 o=r/'.lake/build/lib/lean/RealMapCertificates/batches'/b.with_suffix('.olean').name
 assert o.exists() and o.stat().st_mtime>=b.stat().st_mtime,b.name
 assert 'sorry' not in by_name[b.name]['output'],b.name
print('PASS all235 real map batches:23822 basis images,8719 degree matrices; finite algebra semantics only')
