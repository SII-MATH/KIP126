"""Independently verify every finite exactness witness and noncomplex coordinate."""
import collections,hashlib,json,pathlib,sqlite3
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent
j=json.loads((HERE/'audit.json').read_text());cat=json.loads((ROOT/'upstream/kervaire-49/ss.json').read_text());files={e['path']:json.loads((ROOT/e['path']).read_text()) for e in j['files']};count=collections.Counter()
def matrix(w):return w['algebra']['entries'] if 'algebra'in w else w['output']
def multiply(a,b,m,k,n):return [sum(a[i*k+h] and b[h*n+col] for h in range(k))%2==1 for i in range(m) for col in range(n)]
assert len(j['records'])==len(cat['cofseqs'])==61
for r,c in zip(j['records'],cat['cofseqs'],strict=True):
 assert r['name']==c['name'] and r['maps']==[c['i'],c['q'],c['d']]
 assert [p['position'] for p in r['positions']]==[0,1,2]
 for p in r['positions']:
  sn=p['object'];obj=next(o for o in cat['rings']+cat['modules'] if o['name']==sn);db=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{obj["path"]}?mode=ro',uri=True)
  degrees=list(db.execute(f'select distinct s,t from {sn}_AdamsE2_basis where t<=12 order by s,t'));db.close()
  assert [(b['s'],b['t']) for b in p['blocks']]==degrees
  for b in p['blocks']:
   a,z=files[b['incoming']],files[b['outgoing']];av,zv=matrix(a),matrix(z);m,n,k=b['middle_dimension'],b['input_dimension'],b['output_dimension'];product=multiply(zv,av,k,m,n);assert product==b['composition']
   assert a['sourceS']==b['input_s'] and a['sourceT']==b['input_t'];assert z['sourceS']==b['s'] and z['sourceT']==b['t']
   if b['status']=='exact_candidate':
    assert not any(product);u,v=b['contraction']['up'],b['contraction']['down'];left=multiply(av,u,m,n,m);right=multiply(v,zv,m,k,m);assert [x!=y for x,y in zip(left,right)]==[i==h for i in range(m) for h in range(m)]
   elif b['status']=='not_a_complex':
    q=b['nonzero_composite_coordinate'];assert product[q['row']*n+q['column']]
   else:raise AssertionError('unhandled result')
   count[b['status']]+=1
grading=json.loads((HERE/'cycle_grading.json').read_text())
for r,g in zip(j['records'],grading['records'],strict=True):
 shift=tuple(map(sum,zip(*(p['outgoing_shift'] for p in r['positions']))));assert (g['cycle_shift_s'],g['cycle_shift_t'])==shift;assert g['ordinary_E2_LES_degree_pattern']==(shift==(1,0))
generation=json.loads((HERE/'generation.json').read_text())
for row in generation['exact']:
 w=json.loads((ROOT/row['path']).read_text());a,z=files[row['incoming']],files[row['outgoing']];assert w['incoming']==matrix(a) and w['outgoing']==matrix(z)
 record=j['records'][row['ordinal']];position=record['positions'][row['position']];block=next(b for b in position['blocks'] if b['s']==row['s'] and b['t']==row['t']);assert w['name']==record['name'] and w['position']==position['position'];assert (w['middleS'],w['middleT'])==(row['s'],row['t']);assert (w['inputS'],w['inputT'])==(block['input_s'],block['input_t']);assert (w['outputS'],w['outputT'])==(block['output_s'],block['output_t'])
 m,n,k=w['middleDimension'],w['inputDimension'],w['outputDimension'];assert not any(multiply(w['outgoing'],w['incoming'],k,m,n));left=multiply(w['incoming'],w['up'],m,n,m);right=multiply(w['down'],w['outgoing'],m,k,m);assert [x!=y for x,y in zip(left,right)]==[i==h for i in range(m) for h in range(m)]
result=dict(counts=dict(count),audit_sha256=hashlib.sha256((HERE/'audit.json').read_bytes()).hexdigest(),certificate_sha256={p:hashlib.sha256((ROOT/p).read_bytes()).hexdigest() for p in sorted(files)},exact_certificate_sha256={row['path']:hashlib.sha256((ROOT/row['path']).read_bytes()).hexdigest() for row in generation['exact']},cofiber_source_sha256={r['cofiber_db']['path']:hashlib.sha256((ROOT/r['cofiber_db']['path']).read_bytes()).hexdigest() for r in j['records']},status='independent finite matrix witness validation; kernel status tracked separately')
(HERE/'verification.json').write_text(json.dumps(result,indent=2)+'\n');print(dict(count))
