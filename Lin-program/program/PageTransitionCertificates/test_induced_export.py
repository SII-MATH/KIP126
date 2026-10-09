"""Exhaustively test both chain squares on one-dimensional complexes."""
import itertools,json,pathlib,subprocess,tempfile
root=pathlib.Path(__file__).resolve().parent
exe=root/'induced-export'
valid=0;invalid=0
records=[]
for a,b,c,d,f,u,v in itertools.product(range(2),repeat=7):
    args=['1','1','1',str(a),str(b),'1','1','1',str(c),str(d),str(f),str(u),str(v)]
    expected=not(a*b or c*d) and c*f==u*a and d*v==f*b
    r=subprocess.run([exe,*args],text=True,capture_output=True)
    assert (r.returncode==0)==expected,(args,r.stderr)
    if expected:
        valid+=1;w=json.loads(r.stdout)
        assert w['middle']==[bool(f)] and w['upper']==[bool(u)] and w['lower']==[bool(v)]
        assert w['source']['outgoing']==[bool(a)] and w['target']['incoming']==[bool(d)]
        assert w['source']['h']==1-a-b and w['target']['h']==1-c-d
        assert r.stdout==subprocess.check_output([exe,*args],text=True)
        assert r.stdout.strip()==json.dumps(w,sort_keys=True,separators=(',',':'))
        records.append(' '.join(args))
    else:invalid+=1
empty=['0','0','0','-','-','0','0','0','-','-','-','-','-']
assert subprocess.run([exe,*empty],capture_output=True).returncode==0
for bad in [empty[:-1],['-1',*empty[1:]],empty[:-1]+['0'],['257',*empty[1:]]]:
    assert subprocess.run([exe,*bad],capture_output=True).returncode!=0
with tempfile.TemporaryDirectory(dir=root) as temp:
    path=pathlib.Path(temp)/'batch.txt';path.write_text('\n'.join(records)+'\n')
    r=subprocess.run([exe,'--batch',path],text=True,capture_output=True)
    assert r.returncode==0 and len(r.stdout.splitlines())==valid
    path.write_text(records[0]+'\n\n')
    r=subprocess.run([exe,'--batch',path],text=True,capture_output=True)
    assert r.returncode!=0 and 'line 2:' in r.stderr
    path.write_text('')
    assert subprocess.run([exe,'--batch',path],capture_output=True).returncode!=0
print(f'PASS {valid} induced maps, {invalid} rejected maps/complexes, canonical deterministic output, batch and malformed input')
