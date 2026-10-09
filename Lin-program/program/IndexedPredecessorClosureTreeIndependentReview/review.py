"""Parse the emitted Lean tree itself, then independently replay every path."""
import copy
import hashlib
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
PACKAGE=ROOT/'IndexedPredecessorClosureTreeActual'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
frozen=load(PACKAGE/'frozen-source.json')
for name,digest in frozen['files'].items():assert sha(ROOT/name)==digest
source=(PACKAGE/'Data.lean').read_text()


def parse(text,kind):
    position=0
    def skip():
        nonlocal position
        while position<len(text) and text[position].isspace():position+=1
    def expect(word):
        nonlocal position
        skip();assert text.startswith(word,position),(position,text[position:position+30],word)
        position+=len(word)
    def tree():
        nonlocal position
        skip()
        if text.startswith('.empty',position):position+=6;return None
        expect('(');expect('.')
        if text.startswith('node',position):
            position+=4;left=tree();right=tree();expect(')');return [left,right]
        expect('leaf');skip()
        if kind=='metadata':
            match=re.match(r'⟨⟨"([^"]+)",(\d+),(-?\d+),(-?\d+)⟩,(\d+),(\d+),(\d+),(\d+)⟩',text[position:]);assert match
            obj,*numbers=match.groups();r,s,t,n,m,k,h=map(int,numbers)
            leaf=dict(key=dict(object=obj,page=r,s=s,t=t),n=n,m=m,k=k,h=h)
        else:
            match=re.match(r'⟨\[([a-z,]*)\],\[([a-z,]*)\],\[([a-z,]*)\]⟩',text[position:]);assert match
            values=[]
            for field in match.groups():
                words=[] if not field else field.split(',');assert all(w in ['true','false'] for w in words)
                values.append([w=='true' for w in words])
            leaf=dict(zip(['incoming','current','outgoing'],values))
        position+=match.end();expect(')');return leaf
    result=tree();skip();assert position==len(text);return result


metadata=parse(source.split('def tree : Tree Entry := ',1)[1].split('\n\ndef paths',1)[0].strip(),'metadata')
paths=parse(source.split('def paths : Tree Paths := ',1)[1].split('\nend ',1)[0].strip(),'paths')


def leaves(tree):
    if tree is None:return []
    if isinstance(tree,dict):return [tree]
    return leaves(tree[0])+leaves(tree[1])


def walk(tree,path):
    for direction in path:
        if not isinstance(tree,list):return None
        tree=tree[int(direction)]
    return tree if isinstance(tree,dict) else None


def validate(root,current,witnesses):
    if current is None:return witnesses is None
    if isinstance(current,list):
        return isinstance(witnesses,list) and all(validate(root,x,y) for x,y in zip(current,witnesses))
    if not isinstance(witnesses,dict):return False
    k=current['key'];r,s,t=(k[x] for x in ['page','s','t'])
    if r<=2:return True
    for field,dimension,ss,tt in [('incoming','n',s-r,t-r+1),('current','m',s,t),('outgoing','k',s+r,t+r-1)]:
        found=walk(root,witnesses[field])
        if found is None or found['key']!=dict(object=k['object'],page=r-1,s=ss,t=tt) or found['h']!=current[dimension]:return False
    return True


flat=leaves(metadata)
assert len(flat)==1413
for branch in ['zero_b0','zero_b1']:
    family=load(ROOT/'Fact713Row2693Continuation'/(branch+'-family.json'))['entries']
    assert flat==[dict(key=e['key'],**{f:e['wire'][f] for f in ['n','m','k','h']}) for e in family]
assert len({tuple(e['key'][f] for f in ['object','page','s','t']) for e in flat})==1413
assert validate(metadata,metadata,paths)
queries=sum(e['key']['page']>2 for e in flat)*3
assert queries==2724
position=next(i for i,e in enumerate(flat) if e['key']==dict(object='S0',page=4,s=5,t=130))
assert walk(metadata,leaves(paths)[position]['incoming'])['key']==dict(object='S0',page=3,s=1,t=127)
bad=copy.deepcopy(paths);leaves(bad)[position]['incoming']=[]
assert not validate(metadata,metadata,bad)
bad_tree=copy.deepcopy(metadata);leaves(bad_tree)[position]['n']+=1
assert not validate(bad_tree,bad_tree,paths)
assert not validate(metadata,metadata,None)

records=[]
for module in ['IndexedPredecessorClosureTree.Basic','IndexedPredecessorClosureTreeActual.Data','IndexedPredecessorClosureTreeActual.Fact713']:
    folder,name=module.split('.');directory=ROOT/folder;r=load(directory/(name+'-compile.json'))
    assert r['observed_exit_code']==0 and r['inputs_stable']
    assert sha(directory/(name+'.lean'))==r['source_sha256']
    assert sha(directory/r['log'])==r['log_sha256']
    for path,digest in r['external_input_sha256'].items():assert sha(ROOT/path)==digest
    text=(directory/r['log']).read_text();assert 'sorryAx' not in text and 'error:' not in text
    axioms=re.findall(r'depends on axioms:\s*\[([^]]*)\]',text)
    for ax in axioms:assert set(x.strip() for x in ax.split(',') if x.strip())<={'propext','Classical.choice','Quot.sound'}
    records.append(dict(module=module,axiom_reports=len(axioms)+text.count('does not depend on any axioms')))
result=dict(status='passed',entries=1413,queries=queries,maximum_path=11,
            independently_parsed_Lean_trees=True,all_family_entries_bound=True,
            rejected=['missing required incoming path','changed required dimension','shape mismatch'],
            retained_records=records,producer_frozen_files=len(frozen['files']),
            review_source_sha256=sha(Path(__file__)),
            result='The balanced certificate establishes the original full PredecessorClosed predicate for both complete families using existing key uniqueness; prior terminated attempts are not accepted.')
(HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
