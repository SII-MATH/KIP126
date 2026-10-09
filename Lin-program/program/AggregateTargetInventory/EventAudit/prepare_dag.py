import hashlib,json,sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parents[1];db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db';c=sqlite3.connect(f'file:{db}?mode=ro',uri=True);inventory=json.loads((p.parent/'inventory.json').read_text());nodes={};degrees={};events=[]
def key(s,t,page):return f'S0:{s},{t}:d{page}'
def degree(s,t):
 k=f'S0:{s},{t}'
 if k not in degrees:degrees[k]=dict(object='S0',degree=[s,t],e2=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall(),staircase=c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(s,t)).fetchall())
def visit(s,t,page):
 k=key(s,t,page)
 if k in nodes:return
 triples=[(s-page,t-page+1),(s,t),(s+page,t+page-1)];pred=[]
 for a,b in triples:
  degree(a,b)
  if page>2:visit(a,b,page-1);pred.append(key(a,b,page-1))
 nodes[k]=dict(object='S0',center=[s,t],page=page,predecessors=pred)
for row in inventory['staircase']:
 if row['status']=='sentinel_unknown':continue
 source=[row['filtration'],row['total_degree']] if row['status']=='stored_outgoing' else row['other_degree'];page=row['event_page'];visit(*source,page);events.append(dict(inventory_row=row,event_source=source,event_page=page,comparison=key(*source,page)))
rows={f'event{e["inventory_row"]["staircase_id"]}':dict(object='S0',target=e['event_source'],page=e['event_page']+1,zero_target_candidate=True,event=e) for e in events}
(p/'dag.json').write_text(json.dumps(dict(summary=dict(database_sha256={'S0':hashlib.sha256(db.read_bytes()).hexdigest()}),blocks=nodes,degrees=degrees,rows=rows),indent=2)+'\n');print(len(events),'events',len(nodes),'unique required comparisons',len(degrees),'degrees')
