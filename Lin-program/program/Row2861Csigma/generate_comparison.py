import sqlite3,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
src=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True);tgt=sqlite3.connect(f'file:{r}/upstream/kervaire-49/Csigma_AdamsSS_t200.db?mode=ro',uri=True)
def rows(c,obj,s,t):return c.execute(f'select id,mon,d2 from {obj}_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()
def bl(a):return '['+','.join('true' if b else 'false' for b in a)+']'
def mat(rs,n):
 cs=[]
 for _,_,raw in rs:
  assert raw is not None;ids=list(map(int,raw.split(','))) if raw else [];cs.append([i in ids for i in range(n)])
 return [v[i] for i in range(n) for v in cs]
audit=[];lines=['import Row2861Csigma.Actual','import PageTransitionCertificates.InducedMap','import PageTransitionCertificates.Import','namespace Row2861Csigma.Comparison','open LinearCertificates PageTransitionCertificates ResolutionCertificates']
for tag,c,obj,s,t in [('source',src,'S0',9,136),('target',tgt,'Csigma',9,136),('upperSource',src,'S0',12,138),('upperTarget',tgt,'Csigma',12,138)]:
 rs=[rows(c,obj,s-2,t-1),rows(c,obj,s,t),rows(c,obj,s+2,t+1)];n,m,k=map(len,rs);args=list(map(str,[k,m,n]))+[''.join('1' if b else '0' for b in x) or '-' for x in [mat(rs[1],k),mat(rs[0],m)]];w=json.loads(subprocess.check_output([str(r/'PageTransitionCertificates/page-transition-export'),*args],text=True))
 lines += [f'def {tag} : WireComparison := ⟨1,{k},{m},{n},{w["h"]},'+','.join(bl(w[f]) for f in ['outgoing','incoming','inclusion','projection','up','down'])+'⟩',f'theorem {tag}_complete : {tag}.Valid := by lin_cert using ()'];audit.append(dict(tag=tag,object=obj,s=s,t=t,rows=rs,wire=w))
pro=json.loads((p/'source.json').read_text())
for tag,s,t in [('middleMap',9,136),('outMap',11,137),('inMap',7,135),('upperMiddleMap',12,138),('upperOutMap',14,139),('upperInMap',10,137)]:
 b=next(x for x in pro if x['s']==s and x['t']==t);w=b['wire'];lines += [f'def {tag} : Matrix {w["rows"]} {w["cols"]} := matrixOf {w["rows"]} {w["cols"]} {bl(w["entries"])}']
for pre,S,T,F,U,L in [('', 'source','target','middleMap','outMap','inMap'),('upper','upperSource','upperTarget','upperMiddleMap','upperOutMap','upperInMap')]:
 lines += [f'theorem {pre}compatible : CompatibleMap (matrixOf {S}.k {S}.m {S}.outgoing) (matrixOf {S}.m {S}.n {S}.incoming) (matrixOf {T}.k {T}.m {T}.outgoing) (matrixOf {T}.m {T}.n {T}.incoming) {F} {U} {L} := by lin_cert using ()']
lines += ['end Row2861Csigma.Comparison'];(p/'Comparison.lean').write_text('\n'.join(lines)+'\n');(p/'comparison-source.json').write_text(json.dumps(audit,indent=2)+'\n')
