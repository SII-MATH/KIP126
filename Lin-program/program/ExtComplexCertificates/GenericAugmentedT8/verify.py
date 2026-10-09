import hashlib,json,os,pathlib,subprocess,time,resource
root=pathlib.Path(__file__).resolve().parents[2];here=pathlib.Path(__file__).resolve().parent
env=dict(os.environ,ELAN_HOME='/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan',LD_PRELOAD='/tmp/lean_proc_shim.so')
lake=env['ELAN_HOME']+'/bin/lake';results=[]
for t in range(9):
    rel=f'ExtComplexCertificates/GenericAugmentedT8/Case{t}.lean';obj=f'.lake/build/lib/lean/ExtComplexCertificates/GenericAugmentedT8/Case{t}.olean'
    (root/obj).parent.mkdir(parents=True,exist_ok=True);start=time.time()
    with (here/f'case{t}.log').open('w') as log:
        run=subprocess.run([lake,'env','lean','-j1',rel,'-o',obj],cwd=root,env=env,stdout=log,stderr=subprocess.STDOUT)
    results.append(dict(t=t,exit_code=run.returncode,seconds=time.time()-start,maxrss_kb=resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss,source_sha256=hashlib.sha256((root/rel).read_bytes()).hexdigest()))
    report=dict(results=results,input_sha256={str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest() for p in [root/'GenericFreeComplexProducer/actual_t8.json',root/'GenericFreeComplexProducer/actual_t8_augmentation.json',root/'GenericFreeComplexProducer/actual_t8_augmented.jsonl']})
    (here/'verification.json').write_text(json.dumps(report,indent=2)+'\n');print(results[-1],flush=True)
    if run.returncode: raise SystemExit(run.returncode)
