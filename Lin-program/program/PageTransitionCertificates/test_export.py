"""Independent exhaustive finite-vector homology oracle and identity validation."""
import itertools,json,pathlib,subprocess,random
root=pathlib.Path(__file__).resolve().parent
exe=root/'page-transition-export'
def ev(a,rows,cols,x):return tuple(sum(a[i*cols+j]*x[j] for j in range(cols))%2 for i in range(rows))
def words(n):return itertools.product(range(2),repeat=n)
def text(a):return ''.join(map(str,a)) or '-'
def verify(k,m,n,a,b):
    args=list(map(str,[k,m,n]))+[text(a),text(b)]
    proc=subprocess.run([exe,*args],text=True,capture_output=True)
    complex_=all(not any(ev(a,k,m,ev(b,m,n,x))) for x in words(n))
    if not complex_:
        assert proc.returncode!=0;return False
    assert proc.returncode==0,proc.stderr
    w=json.loads(proc.stdout);h=w['h'];inc=w['inclusion'];proj=w['projection']
    image={ev(b,m,n,x) for x in words(n)}
    cycles={x for x in words(m) if not any(ev(a,k,m,x))}
    assert len(cycles)==len(image)*2**h
    for x in words(m):
        ip=ev(inc,m,h,ev(proj,h,m,x));bu=ev(b,m,n,ev(w['up'],n,m,x));do=ev(w['down'],m,k,ev(a,k,m,x))
        assert tuple(ip[i]^bu[i]^do[i] for i in range(m))==x
    for z in words(h):
        iz=ev(inc,m,h,z)
        assert iz in cycles and ev(proj,h,m,iz)==z
    for x in image:assert not any(ev(proj,h,m,x))
    for x in cycles:
        for y in cycles:
            assert (ev(proj,h,m,x)==ev(proj,h,m,y))==(tuple(i^j for i,j in zip(x,y)) in image)
    assert proc.stdout==subprocess.check_output([exe,*args],text=True)
    return True
count=0; rejected=0
for k,m,n in [(1,2,1),(2,2,2),(0,3,0),(0,0,0),(2,0,2)]:
    for a in words(k*m):
        for b in words(m*n):
            if verify(k,m,n,a,b):count+=1
            else:rejected+=1
rng=random.Random(127)
for _ in range(30):
    k,m,n=2,4,2;a=tuple(rng.randrange(2) for _ in range(k*m));b=tuple(rng.randrange(2) for _ in range(m*n))
    if verify(k,m,n,a,b):count+=1
    else:rejected+=1
for args in [['-1','0','0','-','-'],['0','0','0','0','-'],['257','0','0','-','-']]:
    assert subprocess.run([exe,*args],capture_output=True).returncode!=0
print(f'PASS {count} homology comparisons, {rejected} noncomplex rejections, malformed inputs and determinism')
