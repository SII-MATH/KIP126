"""Generate 25 basis-reconstruction certificates and 14 complete d2 quotients."""
import json
import subprocess
from pathlib import Path

p=Path(__file__).resolve().parent;root=p.parent;out=root/'HighFiltrationD2Certificates'
report=json.loads((p/'report.json').read_text())
assert not report['failures']
(p/'wire').mkdir(exist_ok=True)
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
lines=['import HighFiltrationD2Certificates.Basic','namespace HighFiltrationD2Certificates.Data',
       'open LinearCertificates PageTransitionCertificates']
tag=lambda s,t:f'd{s}_{t}'.replace('-','neg')
for b in report['reconstructed_degrees']:
    s,t=b['degree'];m,k=b['cols'],b['rows'];name=tag(s,t)
    wire=dict(version=1,rows=k,cols=m,basis=[bool(b['basis_columns'][j][i]) for i in range(m) for j in range(m)],
              inverse=[bool(x) for row in b['inverse_rows'] for x in row],
              images=[bool(b['staircase_images'][j][i]) for i in range(k) for j in range(m)],
              matrix=list(map(bool,b['entries'])))
    bits=lambda values:''.join('1' if x else '0' for x in values) or '-'
    produced=subprocess.run([str(p/'d2-basis-export'),str(k),str(m),bits(wire['basis']),bits(wire['images'])],
                            capture_output=True,text=True,check=True).stdout
    assert produced==canonical(wire), 'C++ basis witness differs from independently reconstructed witness'
    (p/'wire'/f'{name}.json').write_text(produced)
    lines += [f'def {name} : Wire := d2_basis% "HighFiltrationD2Audit/wire/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',
              f'theorem {name}_reconstruct (d : Vec {m} → Vec {k}) (hz : d zero = zero)',
              f'    (ha : ∀ x y, d (add x y) = add (d x) (d y))',
              f'    (values : ∀ j, d (fun i => {name}.basisMatrix i j) = (fun i => {name}.imageMatrix i j)) :',
              f'    ∀ x, d x = eval {name}.outputMatrix x := additive_reconstruction {name} {name}_valid d hz ha values']
    kinds={'stored_outgoing_d2':'storedD2','incoming_boundary_d2_cycle_prefix':'incomingBoundary',
           'later_outgoing_or_survival_d2_cycle_prefix':'laterPrefix'}
    encoded='['+','.join('.'+kinds[e['kind']] for e in b['evidence'])+']'
    lines += [f'def {name}_kinds : Fin {m} → ColumnKind := fun j =>',
              f'    ({encoded} : List ColumnKind)[j.val]?.getD .storedD2',
              f'theorem {name}_prefix_zero : PrefixImagesZero {name} {name}_kinds := by decide',
              f'theorem {name}_staircase_reconstruct (d : Vec {m} → Vec {k}) (hz : d zero = zero)',
              f'    (ha : ∀ x y, d (add x y) = add (d x) (d y))',
              f'    (meaning : StaircaseMeaning {name} {name}_kinds d) :',
              f'    ∀ x, d x = eval {name}.outputMatrix x :=',
              f'  staircase_reconstruction {name} {name}_valid {name}_kinds {name}_prefix_zero d hz ha meaning']
    for j,(_,_,raw) in enumerate(b['source_basis']):
        if raw is None:continue
        ids=list(map(int,raw.split(','))) if raw else []
        vec='['+','.join('true' if i in ids else 'false' for i in range(k))+']'
        lines += [f'theorem {name}_raw_column{j} : ∀ i : Fin {k}, {name}.outputMatrix i ⟨{j},by decide⟩ =',
                  f'    ({vec} : List Bool)[i.val]?.getD false := by decide']
lines+=['end HighFiltrationD2Certificates.Data']
(out/'Data.lean').write_text('\n'.join(lines)+'\n')
lines=['import HighFiltrationD2Certificates.Data','namespace HighFiltrationD2Certificates.Comparisons',
       'open LinearCertificates PageTransitionCertificates Data']
for b in report['complete_d2_comparisons']:
    key=b['key'];degree=key.split(':')[1];s,t=map(int,degree.split(','));name=f'c{s}_{t}'.replace('-','neg')
    (p/'wire'/f'{name}.json').write_text(canonical(b['wire']))
    lines += [f'def {name} : WireComparison := page_comparison% "HighFiltrationD2Audit/wire/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',
              f'theorem {name}_outgoing : matrixOf {name}.k {name}.m {name}.outgoing = {tag(s,t)}.outputMatrix := rfl',
              f'theorem {name}_incoming : matrixOf {name}.m {name}.n {name}.incoming = {tag(s-2,t-1)}.outputMatrix := rfl']
lines+=['end HighFiltrationD2Certificates.Comparisons']
(out/'Comparisons.lean').write_text('\n'.join(lines)+'\n')
print('25 reconstruction certificates/theorems; 9 known raw-column links; 14 complete comparisons with both matrix links')
