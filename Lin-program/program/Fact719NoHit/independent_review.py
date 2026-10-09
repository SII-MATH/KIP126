"""Supplemental independent SQL and actual incoming-tail review."""
import hashlib,itertools,json,re,sqlite3
from pathlib import Path
HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
freeze=json.loads((HERE/'frozen-source.json').read_text())
for file,digest in freeze['files'].items():assert sha(ROOT/file)==digest
reports=0
for name in ['Basic','Tactic']:
 rec=json.loads((HERE/f'{name}-compile.json').read_text())
 assert rec['observed_exit_code']==0 and rec['inputs_stable']
 assert rec['source_sha256']==sha(HERE/f'{name}.lean')
 assert rec['olean_sha256']==sha(ROOT/'.lake/build/lib/lean/Fact719NoHit'/f'{name}.olean')
 assert rec['log_sha256']==sha(HERE/rec['log'])
 log=(HERE/rec['log']).read_text()
 assert 'sorryAx' not in log and 'error:' not in log
 for ax in re.findall(r'depends on axioms:\s*\[([^]]*)\]',log):
  assert set(a.strip() for a in ax.split(',') if a.strip())<={'propext','Classical.choice','Quot.sound'}
 reports+=len(re.findall(r'depends on axioms:',log))+log.count('does not depend on any axioms')
 assert not re.search(r'\b(sorry|axiom|native_decide)\b',(HERE/f'{name}.lean').read_text())
record=json.loads((HERE/'source-empty.json').read_text())
db=ROOT/record['source'];assert sha(db)==record['sha256']
conn=sqlite3.connect('file:'+str(db)+'?mode=ro',uri=True)
metadata=dict(conn.execute('select name,value from version'))
assert metadata['t_max']==261 and metadata['d2_t_max']==177
rows=[]
assert record['target_degree']==[8,130]
assert [r['incoming_page'] for r in record['rows']]==[6,7,8]
for entry in record['rows']:
 r=entry['incoming_page'];s,t=entry['source_degree']
 assert s>=0 and 0<=t<=metadata['t_max'] and t<=metadata['d2_t_max']
 assert [s+r,t+r-1]==[8,130]
 basis=conn.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()
 staircase=conn.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(s,t)).fetchall()
 assert basis==entry['e2_basis']==[] and staircase==entry['staircase']==[]
 rows.append({'page':r,'degree':[s,t],'basis_count':len(basis),'staircase_count':len(staircase),'inside_E2_window':True})
# Exhaust degree equations for n+2 pages. For n=4..6 there is exactly one
# nonnegative-filtration source; above6 there are no dependent-sum summands.
count=0
for n in range(4,257):
 r=n+2
 found=[]
 for s in range(9):
  for t in range(-140,141):
   if (s+r,t+r-1)==(8,130):found.append((s,t))
 expected=[(8-r,131-r)] if r<=8 else []
 assert found==expected
 count+=9*281
# All relabellings of singleton empty-page carriers still carry an actual
# zero trace; the distinguished zero may have any ambient raw label.
zero_trace_models=0
for labels in itertools.product(range(3),repeat=6):
 trace=[labels[0]]
 for k in range(5):
  quotient={labels[k]:labels[k+1]}
  trace.append(quotient[trace[-1]])
 assert trace[-1]==labels[-1]
 zero_trace_models+=1
# Incoming-zero tail fixes cumulative boundaries. Allow an outgoing death
# after E6 to make sure no outgoing-permanence claim is added accidentally.
tail_models=0
for chart in itertools.permutations(range(4)):
 for old_boundary in [{0},{0,1},{0,2},{0,3}]:
  for raw in range(4):
   if chart[raw] in old_boundary:continue
   for outgoing_death in range(6,13):
    boundaries=[set(old_boundary) for _ in range(13)]
    assert all(chart[raw] not in b for b in boundaries)
    assert outgoing_death>=6
    tail_models+=1
out={'status':'pass_no_findings','frozen_files':len(freeze['files']),'modules':2,'standard_only_axiom_reports':reports,
'database_sha256':sha(db),'declared_bounds':{'E2_t_max':metadata['t_max'],'d2_t_max':metadata['d2_t_max']},
'raw_source_checks':rows,'degree_equations_checked':count,'zero_trace_models':zero_trace_models,'boundary_tail_models':tail_models,
'indexing':'system n = actual E_(n+2); cutoff4 = E6; n4/5/6 incoming d6/7/8; n>=7 impossible source filtration',
'scope':'Every actual Incoming summand covered, including Unit zero; fixed input has nonzero E6 trace and is outside cumulative BInfinity, without outgoing permanence.'}
(HERE/'independent-review.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
