"""Producer behavior, streaming failures and deterministic actual fixture tests."""
import copy,json,pathlib,subprocess
HERE=pathlib.Path(__file__).resolve().parent;exe=HERE/'generic-free-export';valid=json.loads((HERE/'actual_t4.input.jsonl').read_text());canon=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))
def run(text):return subprocess.run([str(exe)],input=text,capture_output=True,text=True)
results=[]
def test(name,text,accept,substring=None):
 p=run(text);assert (p.returncode==0)==accept,(name,p.stderr)
 if substring:assert substring in p.stderr,(name,p.stderr)
 results.append(dict(name=name,exit_code=p.returncode,diagnostic=p.stderr));return p
p=test('actual-nonzero-cancellation',canon(valid)+'\n',True);assert p.stdout==(HERE/'actual_t4.json').read_text();w=json.loads(p.stdout);assert len(w['products'])==512 and len(w['witnesses'])==512
q=test('deterministic-repeat',canon(valid)+'\n',True);assert p.stdout==q.stdout
p=test('two-record-stream',canon(valid)+'\n'+canon(valid)+'\n',True);assert len(p.stdout.splitlines())==2
# Generic parameter coverage beyond the actual rank3/n8 fixture.
for rank in (1,2,5,8):
 tiny=dict(version=1,rank=rank,n=3,homological=[0,1,2],internal=[0,1,2],edges=[[],[],[],[[1]+[0]*(rank-1)],[],[],[],[[1]+[0]*(rank-1)],[]])
 t=test('rank-'+str(rank),canon(tiny)+'\n',True);assert json.loads(t.stdout)['rank']==rank
z=copy.deepcopy(valid);z['edges'].pop();test('missing-edge',canon(z)+'\n',False,'dense dimension')
z=copy.deepcopy(valid);z['edges'][8]=[[1,0]];test('rank-error',canon(z)+'\n',False,'edge(1,0)')
z=copy.deepcopy(valid);z['internal'][1]=2;test('grading-error',canon(z)+'\n',False,'edge(1,0)')
z=copy.deepcopy(valid);z['edges'][5*8+1]=[];test('broken-cancellation',canon(z)+'\n',False,'square-zero failure at source 5, target 0')
z=copy.deepcopy(valid);z['extra']=0;test('unknown-field',canon(z)+'\n',False,'unknown field extra')
test('duplicate-field','{"n":8,'+canon(valid)[1:]+'\n',False,'duplicate field n')
test('null-edge',canon(valid).replace('"edges":[','"edges":[null,',1)+'\n',False,'expected natural/array/object')
test('large-integer','{"version":999999999999999999999999999999}',False,'integer resource limit')
test('nesting-limit','['*40+'0'+']'*40,False,'JSON nesting limit')
test('byte-limit',' '*10000001,False,'input byte limit')
p=test('recover-after-oversized',' '*10000001+'\n'+canon(valid)+'\n',False,'line 1:');assert len(p.stdout.splitlines())==1
test('negative-integer','{"version":-1}',False,'expected natural/array/object')
test('leading-zero','{"version":01}',False,'leading zero')
test('empty-stream','',False,'empty JSONL')
test('blank-record','\n',False,'blank JSONL')
z=copy.deepcopy(valid);z['rank']=9;test('rank-resource-limit',canon(z)+'\n',False,'resource limits')
z=dict(version=1,rank=1,n=2,homological=[0,1],internal=[0,13],edges=[[],[],[[13]],[]]);test('degree-resource-limit',canon(z)+'\n',False,'product(')
p=test('continue-after-error',canon(valid)+'\n{}\n'+canon(valid)+'\n',False,'line 2:');assert len(p.stdout.splitlines())==2
# Malformed output fixtures for Lean: producer rejection is not a substitute for Lean checking.
base=json.loads((HERE/'actual_t4.json').read_text());z=copy.deepcopy(base);z['products'][(5*8+1)*8]=[];(HERE/'tampered_product.json').write_text(canon(z)+'\n');z=copy.deepcopy(base);z['internal'][1]=2;(HERE/'tampered_grading.json').write_text(canon(z)+'\n');z=copy.deepcopy(base);z['witnesses'].pop();(HERE/'tampered_dimensions.json').write_text(canon(z)+'\n')
(HERE/'test_audit.json').write_text(json.dumps(results,indent=2)+'\n');print(len(results),'producer tests passed')
