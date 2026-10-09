"""Generate Lean leaves for the six complete bottom-cell maps and quotients."""
import json
from pathlib import Path
P=Path(__file__).resolve().parent
r=json.loads((P/'bottom-inclusion.json').read_text())
lines=['import ModuleToModuleCertificates.ShiftedImport','namespace Prop79TargetSearch.Maps','open ModuleToModuleCertificates LinProgramCertificates','set_option maxRecDepth 8192','set_option maxHeartbeats 4000000']
for tag in r['matrices']:
 lines += [f'def {tag} : ShiftedWire := shifted_module_map% "Prop79TargetSearch/bottom-wire/{tag}.json"',f'theorem {tag}_valid : {tag}.Valid := by lin_cert using ()',f'#print axioms {tag}_valid']
lines+=['end Prop79TargetSearch.Maps'];(P/'Maps.lean').write_text('\n'.join(lines)+'\n')
lines=['import Prop79TargetSearch.Maps','import Prop79IncomingSearch.Naturality','import PageTransitionCertificates.Import','namespace Prop79TargetSearch.Comparison','open LinearCertificates PageTransitionCertificates ResolutionCertificates',
'abbrev source := Prop79IncomingSearch.Comparison.upperSource',
'abbrev source_complete := Prop79IncomingSearch.Comparison.upperSource_complete',
'def upperSource : WireComparison := page_comparison% "Prop79TargetSearch/bottom-wire/S0_17_141_d2.json"',
'theorem upperSource_complete : upperSource.Valid := by lin_cert using ()']
for tag,s,t in [('target',14,139),('upperTarget',17,141)]:
 lines += [f'def {tag} : WireComparison := page_comparison% "Prop79TargetSearch/bottom-wire/Cnu_{s}_{t}_d2.json"',f'theorem {tag}_complete : {tag}.Valid := by lin_cert using ()']
for name,s,t in [('middleMap',14,139),('outMap',16,140),('inMap',12,138),('upperMiddleMap',17,141),('upperOutMap',19,142),('upperInMap',15,140)]:
 w=r['matrices'][f's{s}t{t}']['wire']['algebra'];lines.append(f'def {name} : Matrix {w["rows"]} {w["cols"]} := Maps.s{s}t{t}.algebra.mat')
for prefix in ['','upper']:
 sc='source' if not prefix else 'upperSource';tc='target' if not prefix else 'upperTarget';mm='middleMap' if not prefix else 'upperMiddleMap';om='outMap' if not prefix else 'upperOutMap';im='inMap' if not prefix else 'upperInMap'
 lines.append(f'theorem {prefix}compatible : CompatibleMap (matrixOf {sc}.k {sc}.m {sc}.outgoing) (matrixOf {sc}.m {sc}.n {sc}.incoming) (matrixOf {tc}.k {tc}.m {tc}.outgoing) (matrixOf {tc}.m {tc}.n {tc}.incoming) {mm} {om} {im} := by lin_cert using ()')
for n in ['target_complete','upperSource_complete','upperTarget_complete','compatible','uppercompatible']:lines.append(f'#print axioms {n}')
lines+=['end Prop79TargetSearch.Comparison'];(P/'Comparison.lean').write_text('\n'.join(lines)+'\n')
