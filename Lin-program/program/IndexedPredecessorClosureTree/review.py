"""Independent path, coverage, first-match, and asymptotic structure replay."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
counts={}
def count(key):counts[key]=counts.get(key,0)+1
def leaf(x):return ('leaf',x)
def node(l,r):return ('node',l,r)
def flatten(t):return [] if t[0]=='empty' else [t[1]] if t[0]=='leaf' else flatten(t[1])+flatten(t[2])
def get(t,path):
    for bit in path:
        if t[0]!='node':return None
        t=t[2 if bit else 1]
    return t[1] if t[0]=='leaf' else None
def build(entries):
    if not entries:return ('empty',)
    if len(entries)==1:return leaf(entries[0])
    m=len(entries)//2
    return node(build(entries[:m]),build(entries[m:]))
def key_pred(k):
    o,r,s,t=k
    return [(o,r-1,s-r,t-r+1),(o,r-1,s,t),(o,r-1,s+r,t+r-1)]
def paths(t):
    result=[]
    def visit(tree,path):
        if tree[0]=='leaf':result.append(path)
        elif tree[0]=='node':visit(tree[1],path+[False]);visit(tree[2],path+[True])
    visit(t,[]);return result
def check(root,t,w):
    if t[0]!=w[0]:return False
    if t[0]=='empty':return True
    if t[0]=='node':return check(root,t[1],w[1]) and check(root,t[2],w[2])
    k,n,m,q,h=t[1]
    if k[1]<=2:return True
    return all((v:=get(root,path)) is not None and v[0]==pred and v[4]==dim
      for path,pred,dim in zip(w[1],key_pred(k),[n,m,q])) and len(w[1])==3
def original(entries):
    for k,n,m,q,h in entries:
        if k[1]<=2:continue
        for pred,dim in zip(key_pred(k),[n,m,q]):
            v=next((v for v in entries if v[0]==pred),None)
            if v is None or v[4]!=dim:return False
    return True

for s,t in itertools.product(range(-3,4),range(-3,4)):
    key=('S0',3,s,t);preds=key_pred(key)
    base=[(p,0,0,0,i+1) for i,p in enumerate(preds)]+[(key,1,2,3,0)]
    for perm in itertools.permutations(base):
        tree=build(perm);ps=paths(tree);index={e[0]:i for i,e in enumerate(perm)}
        witnesses=[[] if e[0][1]<=2 else [ps[index[k]] for k in key_pred(e[0])] for e in perm]
        witness=build(witnesses)
        assert check(tree,tree,witness) and original(perm)
        for i,p in enumerate(ps):assert get(tree,p)==perm[i] and perm[i] in flatten(tree);count('valid_path_members')
        assert not check(tree,tree,('empty',))
        count('shape_mutations')
        j=index[key]
        for slot in range(3):
            bad=[list(row) for row in witnesses];bad[j]=[list(p) for p in bad[j]]
            bad[j][slot]=bad[j][slot]+[False]
            assert not check(tree,tree,build(bad));count('invalid_path_mutations')
            bad[j][slot]=ps[j]
            assert not check(tree,tree,build(bad));count('wrong_key_mutations')
        for slot in range(3):
            changed=list(perm);i=index[preds[slot]];e=changed[i];changed[i]=(*e[:4],e[4]+1)
            changed_tree=build(changed)
            assert not check(changed_tree,changed_tree,witness)
            assert not original(changed);count('dimension_mutations')
        count('accepted_small_families')

for n in [1,2,3,4,31,32,33,1413,1431]:
    tree=build(list(range(n)));ps=paths(tree)
    assert flatten(tree)==list(range(n))
    assert max(map(len,ps)) <= (n-1).bit_length()
    for i,path in enumerate(ps):assert get(tree,path)==i;count('balanced_index_paths')

reports=[]
for module in ['Basic','Tactic','Tests']:
    p=HERE/f'{module}-compile.json'
    if not p.exists():continue
    r=json.loads(p.read_text())
    assert r['observed_exit_code']==0 and r['inputs_stable']
    assert sha(HERE/(module+'.lean'))==r['source_sha256']
    log=(HERE/r['log']).read_text();assert 'warning:' not in log and 'error:' not in log and 'sorryAx' not in log
    for ax in re.findall(r'depends on axioms:\s*\[([^]]*)\]',log):
        assert set(s.strip() for s in ax.split(','))<={'propext','Classical.choice','Quot.sound'}
    reports.append(module)

result=dict(status='tree_path_coverage_and_original_checker_replayed',counts=counts,accepted_modules=reports,
    required_unique='Path membership implies the original first-match lookup only with UniqueKeys; the sound theorem requires it explicitly.',
    complexity='Tree.check visits every node once and three paths per higher leaf. Balanced depth <= ceil(log2 N); flatten binding is proved once and not evaluated in checker.',
    excluded_claim='No topology realization or timing improvement is inferred from this structural replay.')
(HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
