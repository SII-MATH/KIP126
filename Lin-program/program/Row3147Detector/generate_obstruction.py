import json
from pathlib import Path
p=Path(__file__).resolve().parent
s=json.loads((p/'detector-search.json').read_text());lines=['import PageTransitionCertificates.Import','import Row3147Detector.Products_h0','import Row3147Detector.Products_h1','import Row3147Detector.Products_h3','import Row3147Detector.Products_g','namespace Row3147Detector.Obstruction','open LinearCertificates PageTransitionCertificates']
bl=lambda a:'['+','.join('true' if x else 'false' for x in a)+']'
for x in s:
 for field in ['source','kernel']:
  w=x[field]['wire'];name=x['factor']+field
  lines += [f'def {name} : WireComparison := ⟨1,'+','.join(str(w[k]) for k in ['k','m','n','h'])+','+','.join(bl(w[k]) for k in ['outgoing','incoming','inclusion','projection','up','down'])+'⟩',f'theorem {name}_complete : {name}.Valid := by lin_cert using ()',f'theorem {name}_projection_zero : ∀ i : Fin {w["h"]}, eval {name}.comparison.projection (fun j => ({bl(x[field]["representative"])} : List Bool)[j.val]!) i = false := by decide']
lines+=['end Row3147Detector.Obstruction'];(p/'Obstruction.lean').write_text('\n'.join(lines)+'\n')
