import copy,importlib.util,json,pathlib,subprocess,tempfile
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('cofiber_environment',HERE/'compile.py');c=importlib.util.module_from_spec(spec);spec.loader.exec_module(c)
generation=json.loads((HERE/'generation.json').read_text());w=next(json.loads((ROOT/x['path']).read_text()) for x in generation['exact'] if any(json.loads((ROOT/x['path']).read_text())['up']))
cases=[]
def add(name,value,ok):cases.append((name,json.dumps(value,sort_keys=True,separators=(',',':')),ok))
add('valid',w,True);z=copy.deepcopy(w);z['up']=[False]*len(z['up']);add('wrong-contraction',z,False);z=copy.deepcopy(w);z['middleT']+=1;add('wrong-degree',z,False);z=copy.deepcopy(w);z['position']=3;add('wrong-position',z,False);z=copy.deepcopy(w);z['incoming']=[];add('missing-coordinates',z,False);z=copy.deepcopy(w);z['extra']=0;add('unknown-field',z,False);s=json.dumps(w,sort_keys=True,separators=(',',':'));cases.append(('duplicate-field','{"version":1,'+s[1:],False));results=[]
with tempfile.TemporaryDirectory(prefix='runtime-',dir=HERE) as tmp:
 for name,text,ok in cases:
  p=pathlib.Path(tmp)/(name+'.json');p.write_text(text+'\n');r=subprocess.run([c.lean,'-j1','--run','CofiberE2Certificates/CheckFile.lean',str(p)],cwd=ROOT,env=c.env,capture_output=True,text=True,timeout=120);assert (r.returncode==0)==ok,(name,r.stdout,r.stderr);results.append(dict(name=name,expected_accept=ok,exit_code=r.returncode,output=r.stdout+r.stderr));print(name,'passed',flush=True)
(HERE/'runtime_audit.json').write_text(json.dumps(results,indent=2)+'\n')
