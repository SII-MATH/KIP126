from pathlib import Path
import sqlite3,json,hashlib,subprocess
root=Path('program');db=root/'upstream/kervaire-49/S0_AdamsSS_t261.db';c=sqlite3.connect('file:'+str(db)+'?mode=ro',uri=True)
for folder,label,s,t,local,named in [('Fact762PageCertificates','Survivor',14,139,1,1),('Fact763PageCertificates','Survivor',10,134,4,2),('Fact721PageCertificates','First',11,133,1,12),('Fact721PageCertificates','Second',12,134,0,13)]:
 p=root/folder;p.mkdir(exist_ok=True);tag='' if label=='Survivor' else label.lower()+'-'
 degs=[(s-2,t-1),(s,t),(s+2,t+1)];rows={str(d):c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',d).fetchall() for d in degs};n,m,k=[len(rows[str(d)]) for d in degs]
 def bits(rs,dim):
  a=[[0]*len(rs) for _ in range(dim)]
  for j,r in enumerate(rs):
   if r[2] is None:raise ValueError('NULL')
   for i in ([] if r[2]=='' else map(int,r[2].split(','))):a[i][j]=1
  return ''.join(map(str,sum(a,[]))) or '-'
 args=list(map(str,[k,m,n]))+[bits(rows[str((s,t))],k),bits(rows[str(degs[0])],m)];out=subprocess.check_output([str(root/'PageTransitionCertificates/page-transition-export'),*args],text=True);w=json.loads(out);h=w['h'];coords=[w['projection'][i*m+local] for i in range(h)]
 assert any(coords),'target hit'
 (p/(tag+'comparison.json')).write_text(out);(p/(tag+'source.json')).write_text(json.dumps(dict(database=str(db),sha256=hashlib.sha256(db.read_bytes()).hexdigest(),rows=rows,export_args=args),indent=2)+'\n')
 bs=[]
 for _,raw,_ in rows[str((s,t))]:
  a=list(map(int,raw.split(',')));bs.append('[[ '+','.join(str(g) for g,e in zip(a[::2],a[1::2]) for _ in range(e))+' ]]')
 src=(root/'Fact713PageCertificates/Survivor.lean').read_text();ns=folder+('' if label=='Survivor' else '.'+label)
 src=src.replace('Fact713PageCertificates/comparison.json',folder+'/'+tag+'comparison.json').replace('Fact713PageCertificates',ns).replace('Matrix 2 2 := matrixOf 2 2',f'Matrix {k} {m} := matrixOf {k} {m}').replace('Matrix 2 3 := matrixOf 2 3',f'Matrix {m} {n} := matrixOf {m} {n}').replace('def target : Vec 2 := fun _ => true',f'def target : Vec {m} := fun i => i.val == {local}\ndef coordinates : Vec {h} := fun i => ([{",".join("true" if b else "false" for b in coords)}] : List Bool)[i.val]!').replace('def basis : Fin 2 → Polynomial := fun i => if i.val = 0 then [[366]] else [[0,352]]',f'def basis : Fin {m} → Polynomial := fun i => ([{",".join(bs)}] : List Polynomial)[i.val]!').replace('List.finRange 2',f'List.finRange {m}').replace('namedCase5',f'namedCase{named}').replace('fun i : Fin 2 => i.val == 0',f'fun i : Fin {m} => '+ ('i.val == 2 || i.val == 4' if named==2 else f'i.val == {local}')).replace('HomologyEquivalence outgoing incoming 2',f'HomologyEquivalence outgoing incoming {h}').replace('equivalence.toCoordinates targetClass = target','equivalence.toCoordinates targetClass = coordinates').replace('eval wire.comparison.projection target = target','eval wire.comparison.projection target = coordinates').replace('eval wire.comparison.projection target i = target i','eval wire.comparison.projection target i = coordinates i').replace('congrFun hh ⟨0, by decide⟩',f'congrFun hh ⟨{coords.index(True)}, by decide⟩');(p/(label+'.lean')).write_text(src)
 review=(root/'Fact713PageCertificates/review.py').read_text().replace('[(7, 131), (9, 132), (11, 133)]',str(degs)).replace("['2', '2', '3', matrix(rows['(9, 132)'], 2), matrix(rows['(7, 131)'], 2)]",f"['{k}', '{m}', '{n}', matrix(rows['{(s,t)}'], {k}), matrix(rows['{degs[0]}'], {m})]").replace("return ''.join(str(bit) for row in result for bit in row)","return ''.join(str(bit) for row in result for bit in row) or '-'").replace("'source.json'",repr(tag+'source.json')).replace("'comparison.json'",repr(tag+'comparison.json'));(p/(tag+'review.py')).write_text(review)
 print(folder,label,h,coords)
