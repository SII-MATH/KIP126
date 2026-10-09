"""Independent source coverage and tensor-arithmetic check, never a Lean axiom."""
import collections,hashlib,itertools,json,pathlib
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent
raw_path=ROOT/'ExtComplexCertificates/actual-s0/resolution.jsonl';raw=[json.loads(x) for x in raw_path.read_text().splitlines()];rows=[r for r in raw if r['t']<=8];w=json.loads((HERE/'actual_t8.json').read_text());n=w['n'];rank=w['rank'];assert n==len(rows)==16;assert w['homological']==[r['s'] for r in rows] and w['internal']==[r['t'] for r in rows];index={(r['s'],r['local_id']):i for i,r in enumerate(rows)};edges=[[] for _ in range(n*n)]
for i,r in enumerate(rows):
 for term in r['differential']:
  j=index[r['s']-1,term['target_local_id']];assert not any(term['milnor'][rank:]);edges[i*n+j].append(term['milnor'][:rank])
assert w['edges']==edges
add=lambda a,b:tuple(x+y for x,y in zip(a,b))
def coproduct(m):
 z=(0,)*rank;terms=[(z,z)]
 for p,exponent in enumerate(m,1):
  generator=[]
  for i in range(p+1):
   a,b=list(z),list(z)
   if p>i:a[p-i-1]=2**i
   if i:b[i-1]=1
   generator.append((tuple(a),tuple(b)))
  for _ in range(exponent):terms=[(add(a,c),add(b,d)) for a,b in terms for c,d in generator]
 return terms
weight=lambda m:sum(e*(2**(i+1)-1) for i,e in enumerate(m))
for i,j,k in itertools.product(range(n),repeat=3):
 z=(i*n+j)*n+k;c=w['witnesses'][z];bound=c['finite']['window']['degree'];basis=[m for m in itertools.product(range(bound+1),repeat=rank) if weight(m)<=bound];assert c['finite']['window']['rank']==rank
 assert [coproduct(m) for m in basis]==[[tuple(map(tuple,t)) for t in row] for row in c['finite']['expansions']]
 left=collections.Counter(map(tuple,edges[i*n+j]));right=collections.Counter(map(tuple,edges[j*n+k]));out=[list(m) for m in basis if sum(left[a]*right[b] for a,b in coproduct(m))%2];assert out==w['products'][z]
for i,k in itertools.product(range(n),repeat=2):assert all(v%2==0 for v in collections.Counter(tuple(m) for j in range(n) for m in w['products'][(i*n+j)*n+k]).values())
result=dict(rank=rank,generators=n,checked_products=n**3,source_sha256=hashlib.sha256(raw_path.read_bytes()).hexdigest(),certificate_sha256=hashlib.sha256((HERE/'actual_t8.json').read_bytes()).hexdigest(),status='independent source/tensor audit passed; Lean proof separately checked');(HERE/'source_t8_audit.json').write_text(json.dumps(result,indent=2)+'\n');print(result)
