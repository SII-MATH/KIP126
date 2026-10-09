"""Generate Lean leaves for the six complete bottom-cell maps and quotients."""
import json
from pathlib import Path
P=Path(__file__).resolve().parent
r=json.loads((P/'bottom-inclusion.json').read_text())
lines=['import ModuleToModuleCertificates.ShiftedImport','namespace Prop79IncomingSearch.Maps','open ModuleToModuleCertificates LinProgramCertificates','set_option maxRecDepth 8192','set_option maxHeartbeats 4000000']
for tag in r['matrices']:
 lines += [f'def {tag} : ShiftedWire := shifted_module_map% "Prop79IncomingSearch/bottom-wire/{tag}.json"',f'theorem {tag}_valid : {tag}.Valid := by lin_cert using ()',f'#print axioms {tag}_valid']
lines+=['end Prop79IncomingSearch.Maps'];(P/'Maps.lean').write_text('\n'.join(lines)+'\n')
lines=['import Prop79IncomingSearch.Maps','import Row2925Detector.Naturality','import PageTransitionCertificates.Import','namespace Prop79IncomingSearch.Comparison','open LinearCertificates PageTransitionCertificates ResolutionCertificates',
'abbrev source := Row2925Detector.Comparison.source','abbrev upperSource := Row2925Detector.Comparison.upperSource',
'abbrev source_complete := Row2925Detector.Comparison.source_complete','abbrev upperSource_complete := Row2925Detector.Comparison.upperSource_complete']
for tag,s,t in [('target',11,137),('upperTarget',14,139)]:
 lines += [f'def {tag} : WireComparison := page_comparison% "Prop79IncomingSearch/bottom-wire/Cnu_{s}_{t}_d2.json"',f'theorem {tag}_complete : {tag}.Valid := by lin_cert using ()']
for name,s,t in [('middleMap',11,137),('outMap',13,138),('inMap',9,136),('upperMiddleMap',14,139),('upperOutMap',16,140),('upperInMap',12,138)]:
 w=r['matrices'][f's{s}t{t}']['wire']['algebra'];lines.append(f'def {name} : Matrix {w["rows"]} {w["cols"]} := Maps.s{s}t{t}.algebra.mat')
for prefix in ['','upper']:
 sc='source' if not prefix else 'upperSource';tc='target' if not prefix else 'upperTarget';mm='middleMap' if not prefix else 'upperMiddleMap';om='outMap' if not prefix else 'upperOutMap';im='inMap' if not prefix else 'upperInMap'
 lines.append(f'theorem {prefix}compatible : CompatibleMap (matrixOf {sc}.k {sc}.m {sc}.outgoing) (matrixOf {sc}.m {sc}.n {sc}.incoming) (matrixOf {tc}.k {tc}.m {tc}.outgoing) (matrixOf {tc}.m {tc}.n {tc}.incoming) {mm} {om} {im} := by lin_cert using ()')
for n in ['target_complete','upperTarget_complete','compatible','uppercompatible']:lines.append(f'#print axioms {n}')
lines+=['end Prop79IncomingSearch.Comparison'];(P/'Comparison.lean').write_text('\n'.join(lines)+'\n')
