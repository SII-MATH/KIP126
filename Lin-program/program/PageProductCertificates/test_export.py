import json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
D=json.loads((r/'NamedPageComparison/Row2858/h1-zero-source.json').read_text())
for b in D['blocks']:(p/(b['tag']+'.json')).write_text(json.dumps(b['wire'],sort_keys=True,separators=(',',':'))+'\n')
h0=json.loads(subprocess.check_output([str(r/'PageTransitionCertificates/page-transition-export'),'0','1','0','-','-'],text=True));(p/'h0.json').write_text(json.dumps(h0,sort_keys=True,separators=(',',':'))+'\n')
lines=[f'{p}/h0.json {p}/h1Source.json {p}/productSource.json -',f'{p}/h0.json {p}/h1Target.json {p}/productTarget.json 1']
(p/'actual.batch').write_text('\n'.join(lines)+'\n')
cmd=[str(p/'page-product-export'),'--batch',str(p/'actual.batch')]
a=subprocess.check_output(cmd,text=True);assert a==subprocess.check_output(cmd,text=True)
(p/'actual.jsonl').write_text(a)
for i,line in enumerate(a.splitlines(),1):(p/f'actual{i}.json').write_text(line+'\n')
w=json.loads(a.splitlines()[1]);w['leftProjector'][0]=False;(p/'bad-projector.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
w=json.loads(a.splitlines()[1]);w['tensor']=[];(p/'bad-shape.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
# Tensor with a noncycle target must be rejected by producer.
bad=json.loads(subprocess.check_output([str(r/'PageTransitionCertificates/page-transition-export'),'1','1','0','1','-'],text=True));(p/'noncycle.json').write_text(json.dumps(bad,sort_keys=True,separators=(',',':'))+'\n')
(p/'reject.batch').write_text(f'{p}/h0.json {p}/h1Target.json {p}/noncycle.json 1\n')
z=subprocess.run([str(p/'page-product-export'),'--batch',str(p/'reject.batch')],capture_output=True,text=True);assert z.returncode!=0 and 'cycle product failure' in z.stderr
print('2 actual products deterministic; noncycle producer rejected; mutation fixtures generated')
