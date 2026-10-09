"""Shared memoized DAG audit. All17 inventory covered; no unknown is zeroed."""
import argparse,sqlite3,json,hashlib,collections
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
parser=argparse.ArgumentParser();parser.add_argument('--claim',action='append',help='restrict claim roots (repeatable)');args=parser.parse_args()
coverage=json.loads((R/'ClaimCoverage.json').read_text())['claims']
# A bounded window does not replace an unbounded claim.
windows={'fact-7.6-1':[('S0',8,134,5)],'fact-7.6-4':[('S0',21,147,4),('S0',25,150,4)],'fact-7.13':[('S0',9,132,11)],'fact-7.15':[('S0',11,136,4)],'fact-7.19':[('S0',8,130,5)],'prop-7.9':[('Cnu',14,139,5)],'remark-7.7':[('S0',14,139,3)]}
unbounded={'fact-7.6-2':[('S0',14,139)],'fact-7.6-3':[('S0',10,134)],'fact-7.21':[('S0',11,133),('S0',12,134)]}
claims=[x for x in coverage if not args.claim or x['id'] in args.claim]
if args.claim and set(args.claim)-{x['id'] for x in coverage}:raise ValueError('unknown claim id')
connections={};rawcache={};e2cache={};nodes={};claimrefs={};dbhash={}
def conn(obj):
 if obj not in connections:
  paths=list((R/'upstream/kervaire-49').glob(obj+'_AdamsSS*.db'));assert len(paths)==1
  connections[obj]=sqlite3.connect(f'file:{paths[0]}?mode=ro',uri=True);dbhash[obj]=hashlib.sha256(paths[0].read_bytes()).hexdigest()
 return connections[obj]
def raw(obj,s,t):
 key=(obj,s,t)
 if key not in rawcache:rawcache[key]=conn(obj).execute(f'SELECT id,base,diff,level FROM "{obj}_AdamsE2_ss" WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
 return rawcache[key]
def e2(obj,s,t):
 key=(obj,s,t)
 if key not in e2cache:e2cache[key]=conn(obj).execute(f'SELECT id,mon,d2 FROM "{obj}_AdamsE2_basis" WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
 return e2cache[key]
def selected(obj,s,t,r):return [x for x in raw(obj,s,t) if r<=x[3]<5000 or 5000<=x[3]<=10000-r]
def key(obj,s,t,r):return f'{obj}:{s},{t}:d{r}'
def visit(obj,s,t,r,refs):
 k=key(obj,s,t,r)
 if k in refs:return
 refs.add(k)
 children=[]
 if r>2:
  for a,b in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]:children.append(key(obj,a,b,r-1));visit(obj,a,b,r-1,refs)
 if k not in nodes:nodes[k]={'object':obj,'center':[s,t],'page':r,'predecessors':children}
for claim in claims:
 cid=claim['id'];refs=set()
 for obj,s,t,last in windows.get(cid,[]):
  for r in range(2,last+1):visit(obj,s,t,r,refs)
 # Only the proved finite d2 starting layer is audited for unbounded claims.
 for obj,s,t in unbounded.get(cid,[]):visit(obj,s,t,2,refs)
 claimrefs[cid]=refs
rows={};degrees={}
for nk,node in sorted(nodes.items()):
 obj=node['object'];s,t=node['center'];r=node['page'];triples=[(s-r,t-r+1),(s,t),(s+r,t+r-1)];node['spaces']=[];node['rows']=[]
 for a,b in triples:
  dk=f'{obj}:{a},{b}';degrees[dk]={'object':obj,'degree':[a,b],'e2':e2(obj,a,b),'staircase':raw(obj,a,b)}
  node['spaces'].append({'degree_ref':dk,'selected_row_ids':None if r==2 else [x[0] for x in selected(obj,a,b,r)],'dimension':len(e2(obj,a,b)) if r==2 else len(selected(obj,a,b,r))})
 for a,b in triples[:2]:
  for rr in e2(obj,a,b) if r==2 else selected(obj,a,b,r):
   rid=rr[0];dest=(a+r,b+r-1)
   if r==2:kind='unknown_d2' if rr[2] is None or rr[2] in ['[NULL]','-1','?'] else 'known_d2'
   else:
    _,base,diff,level=rr
    if level==9000:kind='sentinel_unknown'
    elif 9000<level<=9998:
     event=10000-level
     kind=('unknown_event' if diff is None or diff in ['[NULL]','-1','?'] else 'known_event') if event==r else ('stored_earlier_zero_prefix' if event>r else 'invalid_selected_event')
    elif 2<=level<5000:kind='stored_incoming_class_zero'
    else:kind='unrecognized_level'
   rk=f'{obj}:{a},{b}:d{r}:row{rid}';dim=len(e2(obj,*dest)) if r==2 else len(selected(obj,*dest,r));unknown=kind in ['unknown_d2','sentinel_unknown','unknown_event','invalid_selected_event','unrecognized_level']
   rows[rk]={'object':obj,'source':[a,b],'target':list(dest),'page':r,'raw':rr,'classification':kind,'unknown':unknown,'target_selected_dimension':dim,'zero_target_candidate':unknown and dim==0,'empty_e2_target':len(e2(obj,*dest))==0}
   node['rows'].append(rk)
result=[]
for claim in claims:
 cid=claim['id'];refs=claimrefs[cid];rr={k for n in refs for k in nodes[n]['rows']};unknown=[k for k in rr if rows[k]['unknown']];zero=[k for k in unknown if rows[k]['zero_target_candidate']]
 status='bounded_dependency_audit' if cid in windows else ('unbounded_no_finite_cutoff' if cid in unbounded else 'not_applicable_to_single_trajectory')
 if cid.startswith('manual-'):status='external_input_no_source_proof'
 if cid=='strategy-101-105':status='aggregate_elimination_math_missing'
 result.append({'claim':cid,'requested_conclusion':claim['requested_conclusion'],'status':status,'windows':[list(x) for x in windows.get(cid,[])],'finite_d2_only_degrees':[list(x) for x in unbounded.get(cid,[])],'blocks':sorted(refs),'row_refs':sorted(rr),'unknown_refs':sorted(unknown),'zero_target_candidate_refs':sorted(zero),'counts':{'blocks':len(refs),'row_values':len(rr),'unknown':len(unknown),'zero_target_candidates':len(zero),'empty_e2_target_candidates':sum(rows[k]['empty_e2_target'] for k in zero),'residual_unknown':len(unknown)-len(zero)},'missing_math':claim['unproved_premises']})
summary={'claims':len(result),'shared_blocks':len(nodes),'shared_degrees':len(degrees),'shared_row_values':len(rows),'shared_unknown':sum(x['unknown'] for x in rows.values()),'shared_zero_target_candidates':sum(x['zero_target_candidate'] for x in rows.values()),'database_sha256':dbhash,'status':'read_only_data_audit_no_zero_theorems'}
(P/'shared-dag.json').write_text(json.dumps({'summary':summary,'blocks':nodes,'degrees':degrees,'rows':rows},indent=2)+'\n');(P/'claims.json').write_text(json.dumps({'summary':summary,'claims':result},indent=2)+'\n')
md=['# All-claim finite trajectory readiness','', 'This is a read-only dependency audit, not a proof of the listed paper claims. Unknowns remain unknown. Zero selected targets require complete quotient verification; no theorem is generated.','','| Claim | Scope | Blocks | Unknown | Zero-target candidates | Residual |','|---|---|---:|---:|---:|---:|']
for x in result:
 c=x['counts'];md.append(f"| {x['claim']} | {x['status']} | {c['blocks']} | {c['unknown']} | {c['zero_target_candidates']} | {c['residual_unknown']} |")
md+=['','Fact7.6(4) includes both the (21,147) source and (25,150) target windows through d4; historical branch identification remains missing. Prop7.9 audits Cnu through d5 only, not its all-r conclusion. Remark7.7 audits the h1*h4*x109,12 target vicinity through d3, not the whole affine-source argument. Permanent claims have no invented finite cutoff; their d2 seed comparisons are retained only. Strategies, aggregate101 elimination and manual3 inputs need other certificate families and missing mathematics, not an artificial trajectory.','','All blocks and raw degree data are shared in shared-dag.json; claims.json stores per-claim references and existing missing-mathematics inventory. Use `python3 AllClaimTrajectoryAudit/audit.py` for all17 or repeat `--claim ID` for selected roots. A restricted run replaces the output with that explicit subset.','',json.dumps(summary,indent=2)]
(P/'README.md').write_text('\n'.join(md)+'\n');print(json.dumps(summary,indent=2))
