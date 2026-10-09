"""Package every available comparison, preserving the incomplete source graph."""
import hashlib
import json
from pathlib import Path

here = Path(__file__).resolve().parent
root = here.parent
snapshot = root / 'Fact713E12Search/successor-search.json'
report = json.loads(snapshot.read_text())
comparisons = report['comparisons']
keys = sorted(comparisons, key=lambda k: (comparisons[k]['page'], comparisons[k]['center']))
assert len(keys) == 1234
entries = [dict(key=dict(object=b['object'], page=b['page'], s=b['center'][0],
                        t=b['center'][1]), wire=b['wire'])
           for b in (comparisons[k] for k in keys)]
encode = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':')) + '\n'
names = []
for start in range(0, len(entries), 40):
    name = f'Batch{start // 40:02}'
    names.append(name)
    (here / (name + '.json')).write_text(encode(dict(version=1, entries=entries[start:start+40])))
    source = ['import IndexedFamilyCertificates.Import',
              'import IndexedFamilyCertificates.Coherence',
              'namespace Fact713ComparisonBatches',
              'open PageTransitionCertificates IndexedFamilyCertificates',
              'set_option maxRecDepth 100000',
              'set_option maxHeartbeats 8000000',
              f'def batch{start // 40:02} : Family := family_input% "Fact713ComparisonBatches/{name}.json"',
              f'theorem batch{start // 40:02}_valid :',
              f'    ∀ entry ∈ batch{start // 40:02}, KeyValid entry.key ∧ entry.wire.Valid := by',
              f'  have checks : batch{start // 40:02}.all (fun e => decide (KeyValid e.key) && checkWire e.wire) = true := by decide',
              '  intro entry member',
              '  have accepted := List.all_eq_true.mp checks entry member',
              '  simp only [Bool.and_eq_true,decide_eq_true_eq] at accepted',
              '  exact ⟨accepted.1,checkWire_sound entry.wire accepted.2⟩',
              f'#print axioms batch{start // 40:02}_valid',
              'end Fact713ComparisonBatches']
    (here / (name + '.lean')).write_text('\n'.join(source) + '\n')

source = [f'import Fact713ComparisonBatches.{n}' for n in names] + ['import FamilyKeyOrder.Basic']
source += ['namespace Fact713ComparisonBatches',
           'open IndexedFamilyCertificates',
           'set_option maxRecDepth 100000',
           'set_option maxHeartbeats 8000000',
           'def family : Family := ' + ' ++ '.join(f'batch{i:02}' for i in range(len(names))),
           'theorem all_valid : ∀ e ∈ family, KeyValid e.key ∧ e.wire.Valid := by',
           '  unfold family',
           '  simp only [List.forall_mem_append]',
           '  exact ' + '⟨'* (len(names)-1) + 'batch00_valid' + ''.join(f',batch{i:02}_valid⟩' for i in range(1,len(names)))]
source += ['theorem family_count : family.length = 1234 := by decide',
           'def keyCode (key : Key) : Nat := (key.page*256+(key.s+64).toNat)*256+key.t.toNat',
           'theorem family_unique : UniqueKeys family :=',
           '  FamilyKeyOrder.check_key_order_sound keyCode family (by decide)',
           '#print axioms all_valid', '#print axioms family_unique',
           'end Fact713ComparisonBatches']
(here / 'Imported.lean').write_text('\n'.join(source) + '\n')
(here / 'family.json').write_text(encode(dict(version=1, entries=entries)))
manifest = dict(snapshot=str(snapshot.relative_to(root)),
                snapshot_sha256=hashlib.sha256(snapshot.read_bytes()).hexdigest(),
                comparisons=len(keys), keys=keys, modules=names+['Imported'],
                unresolved_comparisons=report['unresolved_comparisons'],
                uses={key: comparisons[key]['uses'] for key in keys if comparisons[key]['uses']},
                scope='Every available finite comparison only. Unknown dependencies, raw NULL prefixes, conditional source theorems and actual Adams interpretations remain explicit.')
(here / 'manifest.json').write_text(json.dumps(manifest, indent=2) + '\n')
print(f'Generated {len(keys)} finite comparisons in {len(names)} batches; no new acceptance claimed')
