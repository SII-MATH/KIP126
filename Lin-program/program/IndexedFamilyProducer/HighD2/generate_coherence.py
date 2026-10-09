"""Full-family coherence with per-source pair certificates and reused blocks."""
import json
from pathlib import Path

p=Path(__file__).resolve().parent;root=p.parents[1];out=root/'IndexedHighD2Certificates'
family=json.loads((p/'family.json').read_text())['entries']
lines=['import IndexedHighD2Certificates.Family','import IndexedFamilyCertificates.Coherence',
       'import AggregateHighD2Conditional.Data','set_option maxRecDepth 8192',
       'set_option maxHeartbeats 8000000','namespace IndexedHighD2Certificates\nopen IndexedFamilyCertificates']
lines+=['theorem entries_valid : ∀ entry ∈ family, KeyValid entry.key ∧ entry.wire.Valid := by',
        '  unfold family']
for entry in family:
    k=entry['key'];name=f'b_{k["object"]}_{k["s"]}_{k["t"]}_d{k["page"]}'.replace('-','neg')
    lines += [f'  refine List.forall_mem_cons.mpr ⟨⟨by decide, AggregateHighD2Conditional.Data.{name}_complete⟩, ?_⟩']
lines+=['  intro x h', '  exact False.elim (List.not_mem_nil h)']
lines+=['end IndexedHighD2Certificates']
(out/'GeneratedEntries.lean').write_text('\n'.join(lines)+'\n')
batches=[]
for start in range(0,len(family),24):
    name=f'GeneratedPairs{start//24:02d}';batches.append(name)
    lines=['import IndexedHighD2Certificates.Family','import IndexedFamilyCertificates.Coherence',
           'set_option maxRecDepth 8192','set_option maxHeartbeats 8000000',
           'namespace IndexedHighD2Certificates\nopen IndexedFamilyCertificates']
    for i in range(start,min(start+24,len(family))):
        lines += [f'theorem pairs{i} : family.all (fun b => decide (PairCompatible (family[{i}]) b)) = true := by decide']
    lines+=['end IndexedHighD2Certificates']
    (out/(name+'.lean')).write_text('\n'.join(lines)+'\n')
lines=['import IndexedHighD2Certificates.GeneratedEntries']+[f'import IndexedHighD2Certificates.{name}' for name in batches]
lines+=['set_option maxRecDepth 8192','set_option maxHeartbeats 8000000',
        'namespace IndexedHighD2Certificates\nopen IndexedFamilyCertificates',
        'theorem family_coherent : Coherent family := by',
        '  refine ⟨family_unique, entries_valid, ?_⟩',
        '  unfold family at ⊢']
for i in range(len(family)):
    lines += [f'  refine List.forall_mem_cons.mpr ⟨(fun b hb => of_decide_eq_true (List.all_eq_true.mp pairs{i} b hb)), ?_⟩']
lines+=['  intro x h', '  exact False.elim (List.not_mem_nil h)']
lines+=['#print axioms family_coherent','end IndexedHighD2Certificates']
(out/'GeneratedCoherence.lean').write_text('\n'.join(lines)+'\n')
print('351 reused full comparison proofs and 351 complete pair rows, 15 batches')
