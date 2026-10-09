"""Check logged standard axiom sets; do not mistake producer/parser execution for proof."""
import re,json
from pathlib import Path
root=Path(__file__).resolve().parents[1]
logs=['tests/full-build.log','tests/lean-build.log','tests/continuation-build.log','tests/continuation-sequential.log','tests/step4-next-build.log','tests/step4-next-sequential.log','tests/step4-continuation-build.log','tests/step4-family-build.log','tests/step4-highd2-build.log','tests/step4-highd2-family-build.log','tests/step4-c2full-build.log','tests/step4-d5-request-build.log','tests/step4-semantic-d5-build.log','tests/step4-permanence-elimination-build.log','tests/step4-whole-homology-build.log','tests/step4-e4-meaning-build.log','tests/step4-outgoing-cycle-build.log','tests/step4-e5-manual-build.log','tests/step4-actual-filtration-build.log','tests/step4-additive-product-build.log','tests/step4-actual-unique-build.log','tests/step4-incoming-completion-build.log','tests/latest-proof-audit.log']
allowed={'propext','Quot.sound','Classical.choice'}
seen={}
for name in logs:
 source=(root/name).read_text()
 if name=='tests/latest-proof-audit.log':
   assert not re.search(r'\berror(?:\(|:)',source), 'latest direct proof audit failed'
 for m in re.finditer(r"'([^']+)' depends on axioms: \[([^]]*)\]", source):
   axioms={s.strip() for s in m[2].split(',') if s.strip()}
   assert axioms<=allowed,(m[1],axioms)
   seen[m[1]]=sorted(axioms)
assert len(seen)>=15,len(seen)
(root/'axiom_audit.json').write_text(json.dumps(seen,indent=2)+'\n')
print(len(seen),'logged theorem axiom sets contain only declared standard Lean axioms')
