"""End-to-end importer/checker rejection tests; no mathematical axioms involved."""
import copy,importlib.util,json,pathlib,subprocess,tempfile
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('derived_compile_environment',HERE/'compile.py');c=importlib.util.module_from_spec(spec);spec.loader.exec_module(c)
audit=json.loads((HERE/'generation_audit.json').read_text());factor=next(e for e in audit['files'] if e['kind']=='factor');composition=next(e for e in audit['files'] if e['kind']=='composition' and json.loads((ROOT/e['path']).read_text())['output']);f=json.loads((ROOT/factor['path']).read_text());w=json.loads((ROOT/composition['path']).read_text());cases=[]
def add(name,kind,value,ok):cases.append((name,kind,json.dumps(value,sort_keys=True,separators=(',',':')),ok))
add('valid-factor','factor',f,True);add('valid-composition','composition',w,True)
z=copy.deepcopy(w);z['output'][0]=not z['output'][0];add('wrong-entry','composition',z,False)
z=copy.deepcopy(w);z['middleT']+=1;add('wrong-intermediate-degree','composition',z,False)
z=copy.deepcopy(w);z['firstLimit']=z['sourceT']-1;add('out-of-range','composition',z,False)
z=copy.deepcopy(f);z['factor'][0]=[[4294967295]];add('sentinel-factor','factor',z,False)
z=copy.deepcopy(f);z['unknown']=0;add('unknown-field','factor',z,False)
s=json.dumps(w,sort_keys=True,separators=(',',':'));cases.append(('duplicate-field','composition','{"version":1,'+s[1:],False))
results=[]
with tempfile.TemporaryDirectory(prefix='runtime-',dir=HERE) as tmp:
 for name,kind,text,ok in cases:
  p=pathlib.Path(tmp)/(name+'.json');p.write_text(text+'\n');run=subprocess.run([c.lean,'-j1','--run','DerivedMapCertificates/CheckFile.lean',kind,str(p)],cwd=ROOT,env=c.env,capture_output=True,text=True,timeout=120);assert (run.returncode==0)==ok,(name,run.stdout,run.stderr)
  results.append(dict(name=name,expected_accept=ok,exit_code=run.returncode,output=run.stdout+run.stderr));print(name,'passed',flush=True)
(HERE/'runtime_audit.json').write_text(json.dumps(results,indent=2)+'\n')
