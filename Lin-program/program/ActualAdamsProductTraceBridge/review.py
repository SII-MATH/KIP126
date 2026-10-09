"""Review raw factor targets and the genuinely additional product-transition law."""
import hashlib,itertools,json,sqlite3
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
db=R/'upstream/kervaire-49/S0_AdamsSS_t261.db';sql=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
zero_degrees=[(6,25),(7,26),(11,55),(12,56),(13,57)]
for s,t in zero_degrees:
    assert sql.execute('SELECT id FROM S0_AdamsE2_basis WHERE s=? AND t=?',(s,t)).fetchall()==[]
named=sql.execute('SELECT mon,s,t,d2 FROM S0_AdamsE2_basis WHERE id=3994').fetchone()
assert named==('13,4,51,1',25,150,'')
g=sql.execute('SELECT mon,s,t FROM S0_AdamsE2_basis WHERE id=72').fetchone()
delta=sql.execute('SELECT mon,s,t FROM S0_AdamsE2_basis WHERE id=296').fetchone()
assert g==('13,1',4,24) and delta==('51,1',9,54)
add=lambda a,b:(a[0]+b[0],a[1]+b[1])
degree_pairs=[((4,24),(4,24)),((8,48),(8,48)),((16,96),(9,54))]
assert [add(*p) for p in degree_pairs]==[(8,48),(16,96),(25,150)]
assert len([(q,p) for q in [2,3] for p in degree_pairs])==6
# Every linear map on F2[x]/x^2, with every coefficient represented.
def mul(a,b):return ((a&1)*(b&1)) ^ (((((a>>1)&1)*(b&1)) ^ ((a&1)*((b>>1)&1)))<<1)
def apply(T,a):return (T[0] if a&1 else 0) ^ (T[1] if a&2 else 0)
invertible=[];compatible=[];counter=[]
for T in itertools.product(range(4),repeat=2):
    if len({apply(T,a) for a in range(4)})!=4:continue
    invertible.append(T)
    ok=all(apply(T,mul(a,b))==mul(apply(T,a),apply(T,b)) for a,b in itertools.product(range(4),repeat=2))
    (compatible if ok else counter).append(T)
assert len(invertible)==6 and compatible==[(1,2)] and len(counter)==5
assert apply((2,1),0)==0 and apply((2,1),mul(1,1))!=mul(apply((2,1),1),apply((2,1),1))
trace_pairs=0
for T,U in itertools.product(compatible,repeat=2):
    for a,b in itertools.product(range(4),repeat=2):
        product=mul(a,b);x=a;y=b
        for N in [T,U]:
            product=apply(N,product);x=apply(N,x);y=apply(N,y)
            assert product==mul(x,y)
        trace_pairs+=1
sources=[Path(__file__),P/'README.md',*sorted(P.glob('*.lean')),db,
    R/'ManualInputObligations/Typed.lean',R/'ManualInputObligations/Reference/AdamsRules.lean',
    R/'ActualAdamsSystemBridge/Trace.lean',R/'ActualAdamsProductCycleBridge/Zero.lean']
report={'status':'actual_product_trace_review_passed','empty_target_degrees':zero_degrees,
    'factor_rows':{'g':g,'delta':delta,'named':named},'local_squares':6,
    'invertible_zero_preserving_maps':len(invertible),'multiplicative_maps':len(compatible),
    'nonmultiplicative_counterexamples':len(counter),'two_transition_product_trace_cases':trace_pairs,
    'proof_review':['Transition is quantified over every cycle pair at the local page/degrees.',
        'trace_product constructs a Type-valued trace by induction, with no target trace hypothesis.',
        'Factor prefixes use only outgoing cycles; incoming death and zero representatives remain possible.',
        'Actual E2 named-product equality precedes construction of its E4 trace.',
        'System.at index2 is E4, and d4-cycle is proved for that same endpoint.',
        'Finite coordinate binding remains explicit, as does reverse actual WholeMeaning completeness.'],
    'source_sha256':{str(p.relative_to(R)):sha(p) for p in sources}}
(P/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('five raw empty degrees;six local squares;six zero-preserving equivalences/five counterexamples')
