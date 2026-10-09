"""Check generated branch leaves remain tied to their extraction audit."""
from pathlib import Path
import json
r=Path(__file__).resolve().parents[1]
f=r/'BranchReplayCertificates'
rows=(f/'leaves.jsonl').read_text().splitlines()
assert len(rows)==5
src=f/'GeneratedLeaves.lean'
assert src.read_text().count('theorem case')==5
o=r/'.lake/build/lib/lean/BranchReplayCertificates/GeneratedLeaves.olean'
assert o.exists() and o.stat().st_mtime>=src.stat().st_mtime
assert json.loads((f/'leaves-provenance.json').read_text())
print('PASS5 kernel-checked finite boundary-space leaves; no assertion of full branch closure')
