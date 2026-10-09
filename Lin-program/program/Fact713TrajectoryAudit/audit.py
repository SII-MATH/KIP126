"""Read-only, memoized complete predecessor DAG for the finite Fact7.13 prefix.
No sentinel/NULL is assigned a differential. Selected dimensions are data only.
"""
import sqlite3,json,hashlib,collections
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
needed=set();edges={};rawcache={};e2cache={}
def raw(s,t):
 if (s,t) not in rawcache:rawcache[s,t]=c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(s,t)).fetchall()
 return rawcache[s,t]
def e2(s,t):
 if (s,t) not in e2cache:e2cache[s,t]=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()
 return e2cache[s,t]
def selected(s,t,r):return [x for x in raw(s,t) if r<=x[3]<5000 or 5000<=x[3]<=10000-r]
def key(s,t,r):return f'{s},{t},d{r}'
def add(s,t,r):
 if r<2 or (s,t,r) in needed:return
 needed.add((s,t,r));children=[]
 if r>2:
  for a,b in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]:children.append(key(a,b,r-1));add(a,b,r-1)
 edges[key(s,t,r)]=children
for r in range(2,12):add(9,132,r)
blocks=[];events={}
for s,t,r in sorted(needed,key=lambda d:(d[2],d[0],d[1])):
 triples=[(s-r,t-r+1),(s,t),(s+r,t+r-1)];b={'key':key(s,t,r),'center':[s,t],'page':r,'predecessors':edges[key(s,t,r)],'spaces':[]}
 for a,bt in triples:b['spaces'].append({'degree':[a,bt],'e2':e2(a,bt),'staircase':raw(a,bt),'selected':selected(a,bt,r) if r>2 else None,'dimension':len(e2(a,bt)) if r==2 else len(selected(a,bt,r))})
 refs=[]
 for a,bt in triples[:2]:
  dest=(a+r,bt+r-1);targetdim=len(e2(*dest)) if r==2 else len(selected(*dest,r))
  for row in (e2(a,bt) if r==2 else selected(a,bt,r)):
   if r==2:
    rid,base,diff=row;level=None;unknown=diff is None or diff in ['[NULL]','-1','?'];kind='unknown_d2' if unknown else 'known_d2'
   else:
    rid,base,diff,level=row
    if level==9000:kind='sentinel_unknown'
    elif 9000<level<=9998:
     event=10000-level
     if event==r:kind='unknown_event' if diff is None or diff in ['[NULL]','-1','?'] else 'known_event'
     elif event>r:kind='stored_earlier_zero_prefix'
     else:kind='invalid_selected_event'
    elif 2<=level<5000:kind='stored_incoming_class_zero'
    else:kind='unrecognized_level'
    unknown=kind in ['sentinel_unknown','unknown_event','invalid_selected_event','unrecognized_level']
   ek=f'{a},{bt},d{r},row{rid}'
   if ek not in events:events[ek]={'key':ek,'source':[a,bt],'target':list(dest),'page':r,'row':row,'classification':kind,'unknown':unknown,'target_selected_dimension':targetdim,'empty_e2_target':len(e2(*dest))==0,'zero_target_candidate':unknown and targetdim==0,'used_by':[]}
   events[ek]['used_by'].append(b['key']);refs.append(ek)
 b['differential_rows']=refs;blocks.append(b)
# A data-only readiness summary. Selected zero dimension requires independent
# complete predecessor comparisons; it is not yet a proved zero quotient.
counts=collections.Counter(x['classification'] for x in events.values());unknown=[x for x in events.values() if x['unknown']];zero=[x for x in unknown if x['zero_target_candidate']]
summary={'claim':'fact-7.13','source':[9,132],'named_e2_vector':[0,1],'last_differential':11,'intended_page':12,'status':'data_audit_only_no_zero_theorem','block_count':len(blocks),'unique_degree_count':len(rawcache),'unique_differential_rows':len(events),'row_classifications':dict(counts),'unknown_count':len(unknown),'zero_target_candidates':len(zero),'empty_e2_target_candidates':sum(x['empty_e2_target'] for x in zero),'residual_unknown_count':len(unknown)-len(zero),'database_sha256':hashlib.sha256(db.read_bytes()).hexdigest()}
(p/'dag.json').write_text(json.dumps({'summary':summary,'roots':[key(9,132,r) for r in range(2,12)],'blocks':blocks,'differential_rows':list(events.values())},indent=2)+'\n')
(p/'blockers.json').write_text(json.dumps({'summary':summary,'unknown_rows':unknown},indent=2)+'\n')
(p/'summary.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary,indent=2))
