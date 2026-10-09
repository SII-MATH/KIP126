import pathlib,json,itertools,collections,subprocess
P=pathlib.Path(__file__).resolve().parent
rows=[json.loads(x) for x in (P/'actual-s0/resolution.jsonl').read_text().splitlines()]
def weight(m):return sum(x*((1<<(i+1))-1) for i,x in enumerate(m))
mon=[m for m in itertools.product(range(9),repeat=3) if weight(m)<=8]
def mul(a,b):return tuple(x+y for x,y in zip(a,b))
def cop(m):
 out=[((0,0,0),(0,0,0))]
 for j,e in enumerate(m):
  gen=[]
  for i in range(j+2):
   l=[0]*3;r=[0]*3
   if j+1>i:l[j-i]=1<<i
   if i:r[i-1]=1
   gen.append((tuple(l),tuple(r)))
  for _ in range(e):out=[(mul(x,u),mul(y,v)) for x,y in out for u,v in gen]
 return out
def basis(s,t):return [(r,m) for r in rows if r['s']==s and r['t']<=t for m in mon if weight(m)+r['t']==t]
def entry(dst,src):
 r,m=src;tr,tm=dst;terms=cop(tm)
 return sum(sum(l==m and rr==tuple(term['milnor'][:3]) for l,rr in terms) for term in r['differential'] if term['target_local_id']==tr['local_id'])%2
outdir=P/'actual-s0/exactness';outdir.mkdir(exist_ok=True)
lean=['import ExtComplexCertificates.FiniteExactness','open ExtComplexCertificates.ActualResolution ResolutionCertificates','set_option maxRecDepth 20000','set_option maxHeartbeats 10000000']
for t in range(9):
 for s in range(t+1):
  mid=basis(s,t);nxt=basis(s+1,t);prev=basis(s-1,t) if s else ([None] if t==0 else [])
  incoming=[entry(a,b) for a in mid for b in nxt]
  outgoing=[entry(a,b) if s else 1 for a in prev for b in mid]
  bits=lambda x:''.join(map(str,x)) or '-'
  result=subprocess.run([str(P.parent/'ResolutionCertificates/resolution-export'),str(len(prev)),str(len(mid)),str(len(nxt)),bits(outgoing),bits(incoming)],capture_output=True,text=True)
  assert result.returncode==0,(s,t,result.stderr)
  name=f'exact-{s}-{t}.json';(outdir/name).write_text(result.stdout)
  lean += [f'def exactWire{s}_{t} : WireContraction := resolution_bundle% "ExtComplexCertificates/actual-s0/exactness/{name}"',f'theorem exactCase{s}_{t} : ExactAt (augmentedOutgoing actualRows {s} {t}) (freeDifferential actualRows {s} {t}) := checkRawExact_sound _ _ _ exactWire{s}_{t} (by decide)']
(P/'ActualExactnessExamples.lean').write_text('\n'.join(lean)+'\n')
print('45 exactness contractions produced from actual raw S0 differential, t<=8 including augmentation')
