"""Read-only analysis of actual compact bindings and structural lookup costs."""
import hashlib
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()

def compact(entry):
    k=entry['key'];w=entry['wire']
    return ((k['object'],k['page'],k['s'],k['t']),w['n'],w['m'],w['k'],w['h'])

def parse_literal(path,name):
    source=path.read_text()
    part=source.split('def '+name+' : ',1)[1].split(':= [',1)[1].split(']',1)[0]
    pattern=r'⟨⟨"([^"]+)",(\d+),(-?\d+),(-?\d+)⟩,(\d+),(\d+),(\d+),(\d+)⟩'
    rows=re.findall(pattern,part)
    assert len(rows)==part.count('⟨⟨')
    return [((r[0],*map(int,r[1:4])),*map(int,r[4:])) for r in rows]

def predecessors(key):
    o,r,s,t=key
    return [(o,r-1,s-r,t-r+1),(o,r-1,s,t),(o,r-1,s+r,t+r-1)]

def tree_paths(n):
    out={}
    def visit(lo,hi,path):
        if hi-lo==1:out[lo]=path;return
        middle=(lo+hi)//2
        visit(lo,middle,path+[False]);visit(middle,hi,path+[True])
    visit(0,n,[])
    return out

results=[]
for package,data,names in [('Fact713Row2693Continuation','IndexedPredecessorClosureActual/Data.lean',['table0','table1']),
                         ('Fact713Row3005Continuation','Fact713Row3005Continuation/CompactData.lean',['ZeroB0','ZeroB1'])]:
    branch_tables=[]
    for branch,name in enumerate(names):
        family_path=ROOT/package/f'zero_b{branch}-family.json'
        family=json.loads(family_path.read_text())['entries']
        table=list(map(compact,family))
        assert table==parse_literal(ROOT/data,name)
        branch_tables.append(table)
        assert len(set(row[0] for row in table))==len(table)
        index={row[0]:i for i,row in enumerate(table)}
        paths=tree_paths(len(table))
        comparisons=queries=path_steps=0
        witnesses=[]
        for key,n,m,k,h in table:
            if key[1]<=2:witnesses.append(None);continue
            row=[]
            for pred,dim in zip(predecessors(key),[n,m,k]):
                position=index[pred]
                assert table[position][4]==dim
                # First-match semantics, independently replayed.
                assert next(i for i,v in enumerate(table) if v[0]==pred)==position
                queries+=1;comparisons+=position+1;path_steps+=len(paths[position])+1
                row.append(dict(index=position,path=paths[position],key=list(pred),dimension=dim))
            witnesses.append(row)
        witness_path=HERE/f'{package}-b{branch}-witness.json'
        witness_path.write_text(json.dumps(dict(family_sha256=sha(family_path),
            table_size=len(table),rows=witnesses),separators=(',',':'))+'\n')
        results.append(dict(package=package,branch=branch,entries=len(table),higher_entries=queries//3,
            lookup_queries=queries,list_find_key_comparisons=comparisons,
            nat_index_list_get_cons_steps=comparisons,
            balanced_path_nodes=path_steps,max_balanced_path=max(map(len,paths.values())),
            operation_count_ratio=comparisons/path_steps,
            literal_binding='exact ordered projection including n,m,k,h',
            first_match_keys_unique=True,witness_sha256=sha(witness_path),
            source_sha256={str(p.relative_to(ROOT)):sha(p) for p in [family_path,ROOT/data]}))
    assert branch_tables[0]==branch_tables[1]

# An arbitrary indexed member is not interchangeable with first-match
# lookup when duplicate keys exist. The real families' unique proof is
# essential for a fast membership-witness soundness theorem.
duplicate=[(('S0',2,0,0),0), (('S0',2,0,0),1)]
assert duplicate[1][1]==1 and next(h for k,h in duplicate if k==duplicate[1][0])==0

result=dict(status='actual_bindings_and_exact_structural_costs_verified',families=results,
    semantic_review='Compact.check_project and lookupH_project preserve exact first-match semantics, including duplicates.',
    algorithmic_finding='Compact lookup is still a fresh linear List.find? per predecessor query. Nat indices with List.get remove key comparisons but retain the same quadratic cons traversal count.',
    proposed_binding='Balanced literal metadata tree with flatten tree = project family; every higher row has three checked paths; use existing Coherent.unique to recover first-match lookup.',
    scope='No implementation modified, no Lean launched, no speedup measured. Operation counts are exact structural models, not timing predictions.',
    audited_source_sha256={str(p.relative_to(ROOT)):sha(p) for p in [
        ROOT/'IndexedPredecessorClosureCompact/Basic.lean',
        ROOT/'IndexedPredecessorClosure/Basic.lean',
        ROOT/'IndexedPredecessorClosureActual/Fact713.lean',
        ROOT/'Fact713Row3005Continuation/Closure.lean']})
(HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
