import json,os,pathlib,subprocess,tempfile
root=pathlib.Path(__file__).resolve().parent.parent
env=dict(os.environ,ELAN_HOME='/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan',LD_PRELOAD='/tmp/lean_proc_shim.so')
base=[env['ELAN_HOME']+'/bin/lake','env','lean','-j1','--run','ExtComplexCertificates/CheckAugmentedFile.lean','GenericFreeComplexProducer/actual_t4.json','GenericFreeComplexProducer/actual_t4_augmentation.json']
rows=(root/'GenericFreeComplexProducer/actual_t4_augmented.jsonl').read_text().splitlines()
with tempfile.TemporaryDirectory(dir=root/'ExtComplexCertificates') as temp:
    path=pathlib.Path(temp)/'mixed.jsonl';bad=json.loads(rows[0]);bad['down']=[False]
    path.write_text(rows[0]+'\n'+json.dumps(bad,sort_keys=True,separators=(',',':'))+'\n{}\n'+rows[1]+'\n')
    p=subprocess.run(base+[str(path)],cwd=root,env=env,capture_output=True,text=True)
    assert p.returncode==1 and ':2:' in p.stderr and ':3:' in p.stderr and '(0,0)' in p.stderr
    assert p.stdout.count('accepted augmented component')==2
    path.write_text('');p=subprocess.run(base+[str(path)],cwd=root,env=env,capture_output=True,text=True)
    assert p.returncode==1 and 'empty file' in p.stderr
    for raw in (b'\xff\n', '非ASCII\n'.encode()):
        path.write_bytes(raw)
        p=subprocess.run(base+[str(path)],cwd=root,env=env,capture_output=True,text=True)
        assert p.returncode==1 and ':1:json: non-ASCII byte' in p.stderr
    print(json.dumps(dict(status='passed',cases=4,mixed_good_rows=2,rejected_rows=[2,3])))
