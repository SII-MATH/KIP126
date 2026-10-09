"""Independent tree traversal, full coverage, failure mutations and evidence."""
import copy
import hashlib
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
load = lambda p: json.loads(p.read_text())
data = load(HERE/'trees.json')


def flatten(tree):
    if 'empty' in tree:
        return []
    if 'leaf' in tree:
        return [tree['leaf']]
    return flatten(tree['node'][0]) + flatten(tree['node'][1])


def get(tree, path):
    for direction in path:
        assert type(direction) is bool
        if 'node' not in tree:
            return None
        tree = tree['node'][int(direction)]
    return tree.get('leaf')


def check(root, tree, paths):
    if 'empty' in tree:
        return 'empty' in paths
    if 'leaf' in tree:
        if 'leaf' not in paths:
            return False
        e = tree['leaf']
        k = e['key']
        r,s,t = (k[f] for f in ['page','s','t'])
        if r <= 2:
            return True
        for field,dim,ss,tt in [('incoming','n',s-r,t-r+1),('current','m',s,t),('outgoing','k',s+r,t+r-1)]:
            found = get(root, paths['leaf'][field])
            if found is None or found['key'] != dict(object=k['object'],page=r-1,s=ss,t=tt) or found['h'] != e[dim]:
                return False
        return True
    if 'node' not in paths:
        return False
    return all(check(root,t,p) for t,p in zip(tree['node'],paths['node']))


tree, paths = data['metadata'], data['witnesses']
flat = flatten(tree)
assert len(flat) == 1434
for branch in ['zero_b0_c0','zero_b0_c1','zero_b1_c0','zero_b1_c1']:
    entries = load(ROOT/'Fact713Row2574Continuation'/(branch+'-family.json'))['entries']
    assert flat == [dict(key=e['key'],**{f:e['wire'][f] for f in ['n','m','k','h']}) for e in entries]
assert check(tree, tree, paths)
assert not check(tree, tree, dict(empty=True))
mutated = copy.deepcopy(paths)
leaf = next(e for e,m in zip(flat,flatten(mutated)) if e['key']['page']>2)
position = flat.index(leaf)
flatten(mutated)[position]['incoming'] = []
assert not check(tree,tree,mutated)
changed = copy.deepcopy(tree)
flatten(changed)[position]['n'] += 1
assert not check(changed,changed,paths)
modules=[]
for name in ['Data','ZeroB0C0','ZeroB0C1','ZeroB1C0','ZeroB1C1','Branches','Actual','TreeData','Closure','Request']:
    report=load(HERE/(name+'-compile.json'))
    assert report['observed_exit_code']==0 and report['inputs_stable']
    assert sha(HERE/(name+'.lean'))==report['source_sha256']
    assert sha(HERE/report['log'])==report['log_sha256']
    for path,digest in report['external_input_sha256'].items():assert sha(ROOT/path)==digest
    text=(HERE/report['log']).read_text()
    assert 'sorryAx' not in text and 'error:' not in text
    axioms=re.findall(r'depends on axioms:\s*\[([^]]*)\]',text)
    for ax in axioms:
        assert set(a.strip() for a in ax.split(',') if a.strip())<={'propext','Classical.choice','Quot.sound'}
    modules.append(dict(module='Fact713Row2574Continuation.'+name,
                        axiom_reports=len(axioms)+text.count('does not depend on any axioms')))
result=dict(status='passed',entries=1434,paths=2781,tree_depth=11,
            cases=['zero_b0_c0','zero_b0_c1','zero_b1_c0','zero_b1_c1'],rejected=['wrong tree shape','missing predecessor path','wrong incoming dimension'],
            modules=modules,script_sha256=sha(Path(__file__)),
            scope='Full predecessor closure for both exact frozen families; no change to actual mathematical premises.')
(HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
