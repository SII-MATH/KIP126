"""Independent family/trajectory replay and C++ negative-diagnostic checks."""
import copy,hashlib,importlib.util,json,sqlite3,subprocess,tempfile
from pathlib import Path
P=Path(__file__).resolve().parent;A=P.parent;R=A.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
spec=importlib.util.spec_from_file_location('oracle',R/'Row3147MapSearch/review.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
files=sorted(P.glob('*.lean'))+sorted(P.glob('*.jsonl'))+[P/'provenance.json']+sorted(P.glob('*branch*.json'))+sorted(P.glob('family*.json'))+sorted(P.glob('bound*.json'))
before={p.name:sha(p) for p in files}
subprocess.run(['python3',str(P/'prepare.py')],check=True);subprocess.run(['python3',str(P/'generate.py')],check=True)
assert before=={p.name:sha(p) for p in files}
finite=[json.loads(x) for x in (P/'finite2.jsonl').read_text().splitlines()];indexed=[json.loads(x) for x in (P/'indexed2.jsonl').read_text().splitlines()]
assert len(finite)==len(indexed)==2
c=sqlite3.connect(f'file:{R}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
assert c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2697').fetchone()==(2697,9,134,'1','0',9997)
family=[];bound=[]
for b,(f,ix) in enumerate(zip(finite,indexed,strict=True)):
 assert f==json.loads((A/f'event2697-branch{b}.json').read_text()) and ix['finite']==f
 fam=json.loads((P/f'family{b}.json').read_text())['entries'];bw=json.loads((P/f'bound{b}.json').read_text());family.append(fam);bound.append(bw)
 assert bw==dict(version=1,object='S0',event=ix)
 assert ix['eventPage']==3 and ix['sourceDegree']==dict(s=9,t=134) and ix['targetDegree']==dict(s=12,t=136)
 keys=[(e['key']['object'],e['key']['page'],e['key']['s'],e['key']['t']) for e in fam]
 assert keys==[('S0',2,9,134),('S0',2,12,136),('S0',3,9,134)]
 assert len(keys)==len(set(keys))==3
 for e in fam:a.check_wire(e['wire'])
 for x in fam:
  for y in fam:
   k,l=x['key'],y['key'];wx,wy=x['wire'],y['wire']
   if k['object']==l['object'] and k['page']==l['page'] and [l['s'],l['t']]==[k['s']+k['page'],k['t']+k['page']-1]:assert wx['outgoing']==wy['incoming'] and wx['k']==wy['m'] and wx['m']==wy['n']
   if k['object']==l['object'] and k['page']+1==l['page'] and [k['s'],k['t']]==[l['s'],l['t']]:assert wx['h']==wy['m']
 assert fam[2]['wire']==f['event']
 for name,j,degree,gid in [('source',0,(9,134),2696),('target',1,(12,136),2845)]:
  st=f[name+'Stages'][0];w=st['wire'];v=f['raw'+name.title()]
  assert w==fam[j]['wire'] and st['representative']==v
  basis=c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',degree).fetchall()
  assert [rid for (rid,_,_),x in zip(basis,v,strict=True) if x]==[gid]
  assert not any(a.matmul(w['outgoing'],v,w['k'],w['m'],1))
  assert a.matmul(w['projection'],v,w['h'],w['m'],1)==f[name] and any(f[name])
  lab=ix[name+'Labels'][0];s,t=degree;assert lab==dict(page=2,center=dict(s=s,t=t),incoming=dict(s=s-2,t=t-1),outgoing=dict(s=s+2,t=t+1))
 assert a.matmul(f['event']['outgoing'],f['source'],1,3,1)==f['target']==[True]
assert family[0][2]['wire']['incoming']!=family[1][2]['wire']['incoming']
negative=[]
exe=R/'IndexedFamilyProducer/indexed-family-export'
for b in [0,1]:
 run=subprocess.run([str(exe),'--bind',str(P/f'family{b}.json'),'S0',str(P/f'indexed-branch{1-b}.json')],capture_output=True,text=True)
 assert run.returncode!=0 and ':1:' in run.stderr;negative.append(dict(case=f'cross_branch{b}',message=run.stderr.strip()))
with tempfile.TemporaryDirectory(dir=P) as tmp:
 temp=Path(tmp)/'family.json';d=json.loads((P/'family0.json').read_text());d['entries']=d['entries'][:2];temp.write_text(json.dumps(d,sort_keys=True,separators=(',',':'))+'\n')
 run=subprocess.run([str(exe),'--bind',str(temp),'S0',str(P/'indexed-branch0.json')],capture_output=True,text=True)
 assert run.returncode!=0 and ':1:' in run.stderr;negative.append(dict(case='missing_event_key',message=run.stderr.strip()))
manifest=json.loads((P/'provenance.json').read_text())
for f,h in manifest['input_sha256'].items():assert sha(R/f)==h
for f,h in manifest['executables_sha256'].items():assert sha(R/f)==h
for f,h in manifest['prior94_sha256'].items():assert sha(R/f)==h
result=dict(status='independent_two_branch_CPP_family_audit_passed',common_events=1,branch_records=2,family_entries_each=3,all_pair_checks=18,prior_stages=4,
 raw_source_basis=2696,raw_target_basis=2845,cross_branch_rejected=True,negative_tests=negative,
 generated_sha256=before,source_sql_sha256=sha(R/'upstream/kervaire-49/S0_AdamsSS_t261.db'),scripts_sha256={n:sha(P/n) for n in ['prepare.py','generate.py','review.py']},
 coverage='Exactly3keys each;missingneighbor neverinterpreted aszero;old94eventbatch unchanged')
(P/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
print('Both3entryfamiliescoherent;4exactpriorstages;18pairchecks;crossbranch/missingkeydiagnosticsreject;old94untouched')
