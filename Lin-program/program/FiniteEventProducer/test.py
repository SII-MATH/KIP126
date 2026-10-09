import copy,hashlib,json,pathlib,subprocess,tempfile
p=pathlib.Path(__file__).resolve().parent
rows=[json.loads(x) for x in (p/'all87.jsonl').read_text().splitlines()]
assert len(rows)==87
def ev(a,m,n,x):return [sum(a[i*n+j] and x[j] for j in range(n))%2==1 for i in range(m)]
def mul(a,b,m,k,n):return [sum(a[i*k+h] and b[h*n+j] for h in range(k))%2==1 for i in range(m) for j in range(n)]
def comparison(w):
 k,m,n,h=[w[x] for x in ['k','m','n','h']];a,b,I,P,U,D=[w[x] for x in ['outgoing','incoming','inclusion','projection','up','down']]
 assert not any(mul(a,b,k,m,n));assert not any(mul(a,I,k,m,h));assert not any(mul(P,b,h,m,n))
 assert mul(P,I,h,m,h)==[i==j for i in range(h) for j in range(h)]
 bu,ip,da=mul(b,U,m,n,m),mul(I,P,m,h,m),mul(D,a,m,k,m)
 assert [x^y^z for x,y,z in zip(bu,ip,da)]==[i==j for i in range(m) for j in range(m)]
for row in rows:
 for name in ['source','target']:
  x=row['raw'+name.title()]
  for step in row[name+'Stages']:
   w=step['wire'];comparison(w);assert x==step['representative'];assert not any(ev(w['outgoing'],w['k'],w['m'],x));x=ev(w['projection'],w['h'],w['m'],x);assert any(x)
  assert x==row[name]
 w=row['event'];comparison(w);assert ev(w['outgoing'],w['k'],w['m'],row['source'])==row['target'] and any(row['target'])
run=subprocess.run([str(p/'finite-event-export'),str(p/'all87.input.jsonl')],capture_output=True,text=True,check=True)
assert run.stdout==(p/'all87.jsonl').read_text()==(p/'all87.input.jsonl').read_text()
with tempfile.TemporaryDirectory(dir=p) as temp:
 path=pathlib.Path(temp)/'input.jsonl'
 bad=[]
 for mutate in [lambda r:r.update(version=2),lambda r:r.update(extra=True),lambda r:r.update(rawSource=[]),lambda r:r['event'].update(outgoing=[]),lambda r:r.update(target=[None]*len(r['target']))]:
  r=copy.deepcopy(rows[0]);mutate(r);bad.append(json.dumps(r))
 bad += ['{"version":1,'+json.dumps(rows[0])[1:],'{"rawSource":null}', '']
 for row in bad:
  path.write_text(row+'\n');v=subprocess.run([str(p/'finite-event-export'),str(path)],capture_output=True,text=True);assert v.returncode==1 and ':1:' in v.stderr
 path.write_text(json.dumps(rows[0])+'\n{}\n'+json.dumps(rows[1])+'\n');v=subprocess.run([str(p/'finite-event-export'),str(path)],capture_output=True,text=True);assert v.returncode==1 and ':2:' in v.stderr and len(v.stdout.splitlines())==2
 path.write_text(' '*10000001+'\n'+json.dumps(rows[0])+'\n');v=subprocess.run([str(p/'finite-event-export'),str(path)],capture_output=True,text=True);assert v.returncode==1 and ':1:' in v.stderr and len(v.stdout.splitlines())==1
report=dict(status='independent full comparison/trace/event audit passed',events=87,pages=sorted(set(len(x["sourceStages"])+2 for x in rows)),earlier_stages=sum(len(x["sourceStages"])+len(x["targetStages"]) for x in rows),negative_cases=10,sha256={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in ['actual.input.jsonl','actual.jsonl','all87.input.jsonl','all87.jsonl','provenance.json']})
(p/'audit.json').write_text(json.dumps(report,indent=2)+'\n');print(report)
