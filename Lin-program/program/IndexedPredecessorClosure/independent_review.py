"""Independent degree/dimension oracle and accepted-object audit."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
sources={str(p.relative_to(HERE)):sha(p) for p in sorted(HERE.glob('*.lean'))}
counts=dict(degree_cases=0,required_predecessors=0,missing_mutations=0,
            dimension_mutations=0,key_mutations=0,recursive_families=0,
            intermediate_missing_mutations=0,diagnostic_boolean_cases=0)

def expected(key):
    obj,r,s,t=key
    # Solve d_r(source)=center and d_r(center)=target, then take E_(r-1) homology.
    incoming=(obj,r-1,s-r,t-r+1)
    current=(obj,r-1,s,t)
    outgoing=(obj,r-1,s+r,t+r-1)
    assert incoming[2]+r==s and incoming[3]+r-1==t
    assert s+r==outgoing[2] and t+r-1==outgoing[3]
    return incoming,current,outgoing

def lookup(family,key):
    return next((entry for entry in family if entry['key']==key),None)

def closed(family):
    for entry in family:
        if entry['key'][1]<=2:continue
        for key,dim in zip(expected(entry['key']),entry['dimensions']):
            pred=lookup(family,key)
            if pred is None or pred['h']!=dim:return False
    return True

def diagnose(family):
    for index,entry in enumerate(family,1):
        if entry['key'][1]<=2:continue
        for label,key,dim in zip(['incoming','current','outgoing'],expected(entry['key']),entry['dimensions']):
            pred=lookup(family,key)
            if pred is None or pred['h']!=dim:return index,label
    return None

def leaf(key,h):return dict(key=key,h=h,dimensions=(0,0,0))
def base(key,dimensions):
    # A single r=3 node with distinct dimensions exercises n/m/k separately.
    return [leaf(k,h) for k,h in zip(expected(key),dimensions)]+[dict(key=key,h=0,dimensions=dimensions)]

for obj,s,t in itertools.product(['S0','C2'],range(-5,6),range(-8,9)):
    key=(obj,3,s,t);family=base(key,(1,2,3))
    assert closed(family) and diagnose(family) is None
    counts['degree_cases']+=1
    for slot in range(3):
        counts['required_predecessors']+=1
        missing=family[:slot]+family[slot+1:]
        assert not closed(missing) and diagnose(missing)==(3,['incoming','current','outgoing'][slot])
        counts['missing_mutations']+=1
        wrong=[dict(x) for x in family];wrong[slot]['h']+=1
        assert not closed(wrong) and diagnose(wrong)==(4,['incoming','current','outgoing'][slot])
        counts['dimension_mutations']+=1
        for field in range(4):
            wrong=[dict(x) for x in family];k=list(wrong[slot]['key'])
            k[field]=('other' if field==0 else k[field]+1)
            wrong[slot]['key']=tuple(k)
            assert not closed(wrong)
            counts['key_mutations']+=1

def complete_zero(key):
    entries={}
    def add(k):
        if k in entries:return
        entries[k]=leaf(k,0)
        if k[1]>2:
            for pred in expected(k):add(pred)
    add(key)
    return list(entries.values())

for page in range(3,9):
    family=complete_zero(('S0',page,2,-3))
    assert closed(family) and diagnose(family) is None
    counts['recursive_families']+=1
    for index,entry in enumerate(family):
        if entry['key'][1]==page:continue
        missing=family[:index]+family[index+1:]
        assert not closed(missing) and diagnose(missing) is not None
        counts['intermediate_missing_mutations']+=1
for checks in itertools.product([False,True],repeat=3):
    first=next((i for i,v in enumerate(checks) if not v),None)
    assert (first is None)==all(checks)
    counts['diagnostic_boolean_cases']+=1

# Closure checks existence and dimensions only. Separate coherence must reject
# duplicate keys, malformed finite comparisons, and keys below page two.
f=base(('S0',3,5,130),(0,0,0))
assert closed(f+[dict(f[0])])
assert closed([leaf(('S0',1,0,0),0)])
assert closed([])
for entry in f:entry['wire_valid']=False
assert closed(f)
counts['closure_only_countermodels']=3

basic=(HERE/'Basic.lean').read_text();diagnostics=(HERE/'Diagnostics.lean').read_text()
assert 'checkFamily family && checkPredecessors family' in basic
assert 'HasDimension family (incomingKey entry.key) entry.wire.n' in basic
assert 'HasDimension family (currentKey entry.key) entry.wire.m' in basic
assert 'HasDimension family (outgoingKey entry.key) entry.wire.k' in basic
assert 'key.s-(key.page : Int), key.t-(key.page : Int)+1' in basic
assert 'key.s+(key.page : Int), key.t+(key.page : Int)-1' in basic
assert 'diagnoseEntries family family 1' in diagnostics
reports=0;empty_reports=0;modules=[];dependency_changes=[]
for module in (HERE/'modules.txt').read_text().split():
    name=module.split('.')[-1];r=json.loads((HERE/(name+'-compile.json')).read_text())
    assert r['observed_exit_code']==0 and r['inputs_stable']
    assert sha(HERE/(name+'.lean'))==r['source_sha256']
    assert sha(HERE/r['log'])==r['log_sha256']
    assert sha(ROOT/'.lake/build/lib/lean'/(module.replace('.','/')+'.olean'))==r['olean_sha256']
    for path,digest in r['dependencies_sha256'].items():
        if sha(ROOT/path)!=digest:dependency_changes.append(dict(module=module,dependency=path))
    log=(HERE/r['log']).read_text()
    assert 'sorryAx' not in log and 'error:' not in log and 'warning:' not in log
    for names in re.findall(r'depends on axioms:\s*\[([^]]*)\]',log):
        assert {s.strip() for s in names.split(',')}<={'propext','Classical.choice','Quot.sound'}
        reports+=1
    empty_reports+=log.count('does not depend on any axioms')
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',(HERE/(name+'.lean')).read_text())
    modules.append(module)
assert sources=={str(p.relative_to(HERE)):sha(p) for p in sorted(HERE.glob('*.lean'))}
result=dict(status='passed',findings=[],modules=modules,standard_axiom_reports=reports,
    empty_axiom_reports=empty_reports,counts=counts,
    source_sha256=sources,historical_dependency_changes=dependency_changes,
    conclusions=['current r sets degree shift while r-1 selects the preceding comparison',
        'incoming/current/outgoing h match n/m/k respectively',
        'recursive closure follows because every supplied predecessor is checked',
        'Valid combines finite coherence and predecessor closure',
        'diagnose reports only predecessor failures, with one-based row index'],
    limitations='No actual Adams realization or complete E2 mathematical meaning follows from finite closure; an empty family is vacuously closed and coverage requires separate requested keys.')
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
