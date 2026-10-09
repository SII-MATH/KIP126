import os,pathlib,subprocess,json,time
root=pathlib.Path(__file__).resolve().parent.parent;p=root/'AggregateCsigmaConditional';records=[]
env=dict(os.environ,ELAN_HOME='/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan',LD_PRELOAD='/tmp/lean_proc_shim.so')
for name in ['Basic','Data','Events','Matches','StageBasic','EliminationStage']:
 start=time.time();r=subprocess.run([env['ELAN_HOME']+'/bin/lake','env','lean','-j1',f'AggregateCsigmaConditional/{name}.lean','-o',f'.lake/build/lib/lean/AggregateCsigmaConditional/{name}.olean'],cwd=root,env=env,capture_output=True,text=True)
 records.append(dict(file=name,exit_code=r.returncode,seconds=time.time()-start,output=r.stdout+r.stderr));(p/'compile.json').write_text(json.dumps(records,indent=2)+'\n');print(name,r.returncode,r.stdout+r.stderr,flush=True)
 if r.returncode:raise SystemExit(r.returncode)
