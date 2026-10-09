"""Finite E2 audit of every cyclic cofiber position; not topological exactness."""
import collections,importlib.util,json,pathlib,sqlite3
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('derived_for_cofiber',ROOT/'DerivedMapCertificates/export.py');derived=importlib.util.module_from_spec(spec);spec.loader.exec_module(derived)
derived.OUT=HERE/'data'
def rank(columns):
 basis={}
 for x in columns:
  while x:
   p=x.bit_length()-1
   if p in basis:x^=basis[p]
   else:basis[p]=x;break
 return len(basis)
def columns(entries,m,n):return [sum(int(entries[i*n+j])<<i for i in range(m)) for j in range(n)]
def solve(cols,target):
 piv={}
 for j,v in enumerate(cols):
  c=1<<j
  while v:
   p=v.bit_length()-1
   if p in piv:v^=piv[p][0];c^=piv[p][1]
   else:piv[p]=(v,c);break
 result=0
 while target:
  p=target.bit_length()-1
  if p not in piv:return None
  target^=piv[p][0];result^=piv[p][1]
 return result
def contraction(a,b,m,n,k):
 # Solve A U + V B = I, with row-major variables, as one F2 linear system.
 cols=[]
 for h in range(n):
  for j in range(m):cols.append(sum(int(a[i*n+h])<<(i*m+j) for i in range(m)))
 for i in range(m):
  for h in range(k):cols.append(sum(int(b[h*m+j])<<(i*m+j) for j in range(m)))
 sol=solve(cols,sum(1<<(i*m+i) for i in range(m)))
 if sol is None:return None
 return dict(up=[bool(sol>>i&1) for i in range(n*m)],down=[bool(sol>>(n*m+i)&1) for i in range(m*k)])
def main():
 derived.OUT.mkdir(exist_ok=True);p=derived.Producer();records=[]
 for ordinal,c in enumerate(p.category['cofseqs']):
  names=[c[x] for x in ['i','q','d']];report=dict(ordinal=ordinal,name=c['name'],maps=names,positions=[])
  for position in range(3):
   incoming=names[(position-1)%3];outgoing=names[position];a,b=p.maps[incoming],p.maps[outgoing];middle=b['from'];di=p.degree(incoming);do=p.degree(outgoing)
   if a['to']!=middle:raise ValueError('cofiber endpoint mismatch')
   rows=[]
   for s,t in p.groups(middle):
    row=dict(s=s,t=t,input_s=s-di[0],input_t=t-di[1],output_s=s+do[0],output_t=t+do[1])
    try:
     inc=p.block(incoming,s-di[0],t-di[1]);out=p.block(outgoing,s,t)
     if inc['target_ids']!=out['source_ids']:raise ValueError('middle basis order mismatch')
     m,n,k=inc['rows'],inc['cols'],out['rows'];av,bv=inc['entries'],out['entries'];product=[sum(bv[i*m+h] and av[h*n+j] for h in range(m))%2==1 for i in range(k) for j in range(n)];ri=rank(columns(av,m,n));ro=rank(columns(bv,k,m));complex=not any(product);exact=complex and ri+ro==m
     row.update(status='exact_candidate' if exact else 'complex_not_exact' if complex else 'not_a_complex',middle_dimension=m,input_dimension=n,output_dimension=k,incoming_rank=ri,outgoing_rank=ro,incoming=inc['entry']['path'],outgoing=out['entry']['path'],composition=product)
     if exact:
      witness=contraction(av,bv,m,n,k)
      if witness is None:raise AssertionError('rank exactness without contraction')
      row['contraction']=witness
     elif complex:
      ac=columns(av,m,n)
      witness=next((v for v in range(1,1<<m) if all(sum(bool(v>>h&1) and bv[i*m+h] for h in range(m))%2==0 for i in range(k)) and solve(ac,v) is None),None)
      if witness is None:raise AssertionError('missing homology obstruction')
      row['homology_obstruction']=[bool(witness>>h&1) for h in range(m)]
     else:row['nonzero_composite_coordinate']=next(dict(row=i,column=j) for i in range(k) for j in range(n) if product[i*n+j])
    except (ValueError,KeyError) as e:row.update(status='unresolved',reason=str(e))
    rows.append(row)
   report['positions'].append(dict(position=position,object=middle,incoming=incoming,outgoing=outgoing,incoming_shift=di,outgoing_shift=do,blocks=rows))
  path=derived.BASE/c['path'];con=sqlite3.connect(f'file:{path}?mode=ro',uri=True);table='cofseq_'+c['name'];report['cofiber_db']=dict(path=str(path.relative_to(ROOT)),schema=con.execute('pragma table_info("'+table+'")').fetchall(),rows=con.execute('select count(*) from "'+table+'"').fetchone()[0]);con.close();records.append(report)
 result=dict(scope='all 61 cofiber configurations, all 3 cyclic positions, every nonempty middle E2 degree block with t<=12; empty middle groups not enumerated',records=records,files=p.files,counts=dict(collections.Counter(b['status'] for r in records for pos in r['positions'] for b in pos['blocks'])),trust='finite E2 matrix statements only, not short exact topological models or connecting-map hypotheses')
 (HERE/'audit.json').write_text(json.dumps(result,indent=2)+'\n')
 grading=[]
 for r in records:
  shift=tuple(map(sum,zip(*(pos['outgoing_shift'] for pos in r['positions']))))
  bad=[dict(position=pos['position'],s=b['s'],t=b['t'],coordinate=b['nonzero_composite_coordinate']) for pos in r['positions'] for b in pos['blocks'] if b['status']=='not_a_complex']
  grading.append(dict(ordinal=r['ordinal'],name=r['name'],cycle_shift_s=shift[0],cycle_shift_t=shift[1],ordinary_E2_LES_degree_pattern=shift==(1,0),noncomplex_positions=bad))
 (HERE/'cycle_grading.json').write_text(json.dumps(dict(counts=dict(collections.Counter(str((r['cycle_shift_s'],r['cycle_shift_t'])) for r in grading)),records=grading,interpretation='(1,0) is the ordinary E2 long-exact total degree pattern; (2,1) does not fit that pattern. Pattern agreement alone does not prove a topological LES.'),indent=2)+'\n')
 print(result['counts'],len(p.files),'dependency certificates')
if __name__=='__main__':main()
