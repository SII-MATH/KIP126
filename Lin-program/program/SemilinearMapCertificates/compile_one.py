import pathlib,os,subprocess,sys
root=pathlib.Path(__file__).resolve().parent.parent
paths=[root/'.lake/build/lib/lean']+[x/'.lake/build/lib/lean' for x in (root/'../../KIP126/.lake/packages').resolve().iterdir()]
for m in sys.argv[1:]:
 r=subprocess.run(['/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan/toolchains/leanprover--lean4---v4.32.2/bin/lean','-j1',f'SemilinearMapCertificates/{m}.lean','-o',f'.lake/build/lib/lean/SemilinearMapCertificates/{m}.olean'],cwd=root,env=dict(os.environ,LEAN_PATH=':'.join(map(str,paths)),LD_PRELOAD='/tmp/lean_proc_shim.so'))
 if r.returncode:raise SystemExit(r.returncode)
