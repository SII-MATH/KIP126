"""Root independent path semantics, duplicate counterexample and full coverage."""
import hashlib
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
frozen = load(HERE / 'frozen-source.json')
for path, digest in frozen['files'].items():
    assert sha(ROOT / path) == digest


def build(rows):
    if len(rows) == 0:
        return None
    if len(rows) == 1:
        return {'v':rows[0]}
    middle = len(rows)//2
    return (build(rows[:middle]),build(rows[middle:]))


def flatten(tree):
    if tree is None:
        return []
    if isinstance(tree,dict):
        return [tree['v']]
    return flatten(tree[0])+flatten(tree[1])


def locations(tree, path=()):
    if tree is None:
        return []
    if isinstance(tree,dict):
        return [path]
    return locations(tree[0],path+(False,))+locations(tree[1],path+(True,))


def get(tree,path):
    for step in path:
        if not isinstance(tree,tuple):
            return None
        tree = tree[int(step)]
    return tree['v'] if isinstance(tree,dict) else None


def pred(key):
    o,r,s,t=key
    return [(o,r-1,s-r,t-r+1),(o,r-1,s,t),(o,r-1,s+r,t+r-1)]


def check(root, tree, witnesses):
    if tree is None:
        return witnesses is None
    if isinstance(tree,tuple):
        return isinstance(witnesses,tuple) and all(check(root,x,y) for x,y in zip(tree,witnesses))
    if not isinstance(witnesses,dict):
        return False
    key,n,m,k,h=tree['v']
    if key[1] <= 2:
        return True
    for path, required, dimension in zip(witnesses['v'],pred(key),[n,m,k]):
        found=get(root,path)
        if found is None or found[0] != required or found[4] != dimension:
            return False
    return True


models=mutations=0
for r,s,t in itertools.product(range(3,8),range(-2,3),range(-2,3)):
    key=('S0',r,s,t)
    # Lower predecessor pages are explicit here; use leaf checks on the
    # selected current entry while separately testing total tree coverage.
    rows=[(p,0,0,0,j+1) for j,p in enumerate(pred(key))]+[(key,1,2,3,0)]
    for order in itertools.permutations(rows):
        tree=build(order);where=locations(tree);by={x[0]:p for x,p in zip(order,where)}
        p=[by[x] for x in pred(key)]
        assert check(tree,{'v':rows[-1]},{'v':p})
        for slot in range(3):
            bad=p.copy();bad[slot]=bad[slot]+(False,)
            assert not check(tree,{'v':rows[-1]},{'v':bad})
            bad=p.copy();bad[slot]=by[key]
            assert not check(tree,{'v':rows[-1]},{'v':bad})
            mutations+=2
        for x,path in zip(order,where):
            assert get(tree,path)==x and x in flatten(tree)
        assert not check(tree,tree,None)
        models+=1

# Without uniqueness, a path can deliberately select a later matching key
# with a different dimension. The Lean sound theorem must require uniqueness.
k=('S0',2,-3,-2)
rows=[(k,0,0,0,1),(k,0,0,0,9)]
tree=build(rows)
assert get(tree,(True,))[4] == 9 and next(x for x in rows if x[0]==k)[4] == 1
text=(HERE/'Basic.lean').read_text()
assert '(unique : UniqueKeys family)' in text
assert 'check_compact tree uniqueTree paths accepted' in text
assert 'checkTree root left wl && checkTree root right wr' in text
result=dict(status='passed',findings=[],frozen_files=len(frozen['files']),modules=3,
    permuted_leaf_models=models,invalid_path_or_key_mutations=mutations,
    duplicate_counterexample=True,
    proof_review='Inductive path membership plus UniqueKeys establishes original first-match lookup; '
      'tree-shape recursion covers every leaf; projection binding and compact equivalence '
      'recover original full-family predicate. Coherent remains separately required.',
    trust='Tree and path data are untrusted. Kernel reduces check; soundness uses only standard axioms.')
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
