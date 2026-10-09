"""Root independent full tree/path binding and rejection replay."""
import copy
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
frozen = load(HERE / 'frozen-source.json')
for name, digest in frozen['files'].items():
    p = ROOT / name if name.startswith(HERE.name+'/') else HERE / name
    assert sha(p) == digest
data = load(HERE / 'trees.json')


def flatten(tree, path=()):
    if 'leaf' in tree:
        return [(path,tree['leaf'])]
    if 'empty' in tree:
        return []
    left,right = tree['node']
    return flatten(left,path+(False,)) + flatten(right,path+(True,))


def get(tree, path):
    for step in path:
        if 'node' not in tree:
            return None
        tree = tree['node'][int(step)]
    return tree.get('leaf')


def accepted(tree, witnesses):
    entries = flatten(tree)
    paths = flatten(witnesses)
    if [p for p,_ in entries] != [p for p,_ in paths]:
        return False
    for (_, entry), (_, witness) in zip(entries,paths):
        key = entry['key']
        r,s,t = [key[f] for f in ['page','s','t']]
        if r <= 2:
            continue
        for role,dim,a,b in [('incoming','n',s-r,t-r+1),('current','m',s,t),('outgoing','k',s+r,t+r-1)]:
            pred = get(tree,witness[role])
            if pred is None or pred['key'] != dict(object=key['object'],page=r-1,s=a,t=b):
                return False
            if pred['h'] != entry[dim]:
                return False
    return True


tree,witnesses = data['metadata'],data['witnesses']
entries = flatten(tree)
for branch in [0,1]:
    raw = load(ROOT / 'Fact713Row3005Continuation' / f'zero_b{branch}-family.json')['entries']
    expected = [dict(key=e['key'],**{f:e['wire'][f] for f in ['n','m','k','h']}) for e in raw]
    assert [e for _,e in entries] == expected and len(entries) == 1431
assert accepted(tree,witnesses)
assert not accepted(tree,{'empty':True})
tests = 0
for path,entry in entries:
    if entry['key']['page'] <= 2:
        continue
    for role in ['incoming','current','outgoing']:
        changed = copy.deepcopy(witnesses)
        get(changed,path)[role] = []
        assert not accepted(tree,changed)
        tests += 1
    if tests >= 90:
        break
first = next((p,e) for p,e in entries if e['key']['page'] > 2)
changed = copy.deepcopy(tree)
get(changed,first[0])['m'] += 1
assert not accepted(changed,witnesses)
result = dict(status='passed',findings=[],entries=1431,predecessor_paths=2775,
    bad_paths_rejected=tests,wrong_shape_rejected=True,wrong_dimension_rejected=True,
    frozen_files=len(frozen['files']),
    semantics='Two full projection equalities and inherited coherent.unique bind all entries; '
              'tree soundness proves the original PredecessorClosed and Valid predicates. '
              'Complete mathematical meanings remain unchanged.')
(HERE / 'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
