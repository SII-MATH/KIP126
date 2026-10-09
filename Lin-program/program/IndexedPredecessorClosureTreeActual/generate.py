"""Generate untrusted balanced trees; Lean proves full binding and acceptance."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sources = [ROOT / 'Fact713Row2693Continuation' / f'zero_b{b}-family.json' for b in range(2)]
families = [json.loads(p.read_text())['entries'] for p in sources]


def metadata(e):
    k, w = e['key'], e['wire']
    return tuple(k[f] for f in ['object','page','s','t']), tuple(w[f] for f in ['n','m','k','h'])


rows = [metadata(e) for e in families[0]]
assert rows == [metadata(e) for e in families[1]]
paths = {}


def index(start, end, path):
    if end-start == 1:
        key, _ = rows[start]
        assert key not in paths
        paths[key] = path
    elif end > start:
        middle = (start+end)//2
        index(start,middle,path+[False])
        index(middle,end,path+[True])


index(0,len(rows),[])
bools = lambda xs: '['+','.join('true' if x else 'false' for x in xs)+']'
entry_literals = []
path_literals = []
queries = 0
for key, dimensions in rows:
    obj,r,s,t = key
    n,m,k,h = dimensions
    entry_literals.append(f'⟨⟨"{obj}",{r},{s},{t}⟩,{n},{m},{k},{h}⟩')
    found = [[],[],[]]
    if r > 2:
        predecessors = [(obj,r-1,s-r,t-r+1),(obj,r-1,s,t),(obj,r-1,s+r,t+r-1)]
        found = [paths[p] for p in predecessors]
        for pred, dimension in zip(predecessors,[n,m,k]):
            assert dict(rows)[pred][3] == dimension
        queries += 3
    path_literals.append('⟨'+','.join(bools(p) for p in found)+'⟩')


def tree(values):
    if not values:
        return '.empty'
    if len(values) == 1:
        return '(.leaf '+values[0]+')'
    middle = len(values)//2
    return '(.node '+tree(values[:middle])+'\n'+tree(values[middle:])+')'


text = '''import IndexedPredecessorClosureTree.Basic

namespace IndexedPredecessorClosureTreeActual
open IndexedPredecessorClosureTree
set_option maxRecDepth 100000

'''
text += 'def tree : Tree Entry := '+tree(entry_literals)+'\n\n'
text += 'def paths : Tree Paths := '+tree(path_literals)+'\n'
text += '\nend IndexedPredecessorClosureTreeActual\n'
(HERE / 'Data.lean').write_text(text)
(HERE / 'source.json').write_text(json.dumps(dict(entries=len(rows),queries=queries,
    maximum_path=max(map(len,paths.values())),
    sources={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sources},
    scope='Untrusted tree and path data. Lean must prove projection binding and checker acceptance.'),indent=2)+'\n')
print(len(rows),'entries;',queries,'predecessor paths; maximum depth',max(map(len,paths.values())))
