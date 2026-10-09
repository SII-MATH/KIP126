"""Independent first-match model and stable accepted-object audit."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()

def keys(key):
    o,r,s,t=key
    return [(o,r-1,s-r,t-r+1),(o,r-1,s,t),(o,r-1,s+r,t+r-1)]
def project(family):return [(x[0],x[1]['n'],x[1]['m'],x[1]['k'],x[1]['h']) for x in family]
def full_lookup(family,key):return next((w for k,w in family if k==key),None)
def compact_lookup(table,key):return next((h for k,n,m,o,h in table if k==key),None)
def old(family):
    for key,w in family:
        if key[1]<=2:continue
        for pred,dim in zip(keys(key),[w['n'],w['m'],w['k']]):
            found=full_lookup(family,pred)
            if found is None or found['h']!=dim:return False
    return True
def compact(table):
    for key,n,m,k,h in table:
        if key[1]<=2:continue
        for pred,dim in zip(keys(key),[n,m,k]):
            if compact_lookup(table,pred)!=dim:return False
    return True
def wire(n=0,m=0,k=0,h=0):return dict(n=n,m=m,k=k,h=h,outgoing=[],incoming=[],inclusion=[],projection=[],up=[],down=[])

counts=dict(families=0,lookup_queries=0,duplicates=0,matrix_mutations=0,missing_mutations=0,dimension_mutations=0)
for s,t in itertools.product(range(-4,5),range(-5,6)):
    key=('S0',3,s,t);preds=keys(key)
    family=[(p,wire(h=i+1)) for i,p in enumerate(preds)]+[(key,wire(1,2,3))]
    assert old(family) and compact(project(family))
    candidates=[family]
    for slot in range(3):
        candidates.append(family[:slot]+family[slot+1:]);counts['missing_mutations']+=1
        wrong=[(k,dict(w)) for k,w in family];wrong[slot][1]['h']+=1
        candidates.append(wrong);counts['dimension_mutations']+=1
        duplicate=(preds[slot],wire(h=99))
        candidates.extend([[duplicate]+family,family+[duplicate]])
        counts['duplicates']+=2
    for f in candidates:
        p=project(f);assert old(f)==compact(p)
        for q in preds+[key,('absent',3,s,t)]:
            value=full_lookup(f,q)
            assert compact_lookup(p,q)==(None if value is None else value['h'])
            counts['lookup_queries']+=1
        altered=[(k,{**w,'outgoing':[True]*31,'down':[False]*57}) for k,w in f]
        assert project(altered)==p and old(altered)==old(f)
        counts['matrix_mutations']+=1;counts['families']+=1
assert old([])==compact([])
# All inspected entries use the compact n,m,k fields separately.
for order in itertools.permutations(range(4)):
    f=[family[i] for i in order];assert old(f)==compact(project(f))
    counts['families']+=1

reports=empty=0;changes=[];module_sources={}
for module in (HERE/'modules.txt').read_text().split():
    name=module.split('.')[-1];r=json.loads((HERE/(name+'-compile.json')).read_text())
    assert r['observed_exit_code']==0 and r['inputs_stable']
    assert sha(HERE/(name+'.lean'))==r['source_sha256']
    assert sha(HERE/r['log'])==r['log_sha256']
    assert sha(ROOT/'.lake/build/lib/lean'/(module.replace('.','/')+'.olean'))==r['olean_sha256']
    for path,digest in r['dependencies_sha256'].items():
        if not (ROOT/path).exists() or sha(ROOT/path)!=digest:changes.append(dict(module=module,dependency=path))
    log=(HERE/r['log']).read_text();assert 'error:' not in log and 'sorryAx' not in log and 'warning:' not in log
    for names in re.findall(r'depends on axioms:\s*\[([^]]*)\]',log):
        assert {s.strip() for s in names.split(',')}<={'propext','Classical.choice','Quot.sound'};reports+=1
    empty+=log.count('does not depend on any axioms')
    source=(HERE/(name+'.lean')).read_text()
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',source)
    module_sources[name]=sha(HERE/(name+'.lean'))
basic=(HERE/'Basic.lean').read_text()
entry=basic[basic.index('structure Entry where'):basic.index('abbrev Table')]
assert all(word not in entry for word in ['Matrix','WireComparison','outgoing','incoming','projection'])
checker=basic[basic.index('def Certificate.check'):basic.index('theorem Certificate.sound')]
assert 'project' not in checker and 'certificate.table' in checker
result=dict(status='passed',counts=counts,modules=4,standard_axiom_reports=reports,empty_axiom_reports=empty,
    sources=module_sources,historical_dependency_changes=changes,
    semantic_equivalence='Lean Bool equality check(project family)=old checkPredecessors, plus exact diagnostic equality',
    performance_mechanism='Literal compact table is bound once; repeated lookup touches only Key and n/m/k/h, no matrix fields.',
    limitations='Lookup remains O(N^2) in compact key comparisons. Real-family runtime must be measured in parent integration; no speedup factor claimed.')
(HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
