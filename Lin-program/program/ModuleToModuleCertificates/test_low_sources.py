"""Read-only independent provenance test for all generated bounded map wires."""
import collections,json,pathlib,sqlite3
ROOT=pathlib.Path(__file__).resolve().parent.parent;BASE=ROOT/'upstream/kervaire-49'
def mon(raw):
 xs=list(map(int,raw.split(',')));assert len(xs)%2==1 and 4294967295 not in xs
 return tuple(g for g,e in zip(xs[:-1:2],xs[1:-1:2]) for _ in range(e)),xs[-1]
def poly(raw):assert raw is not None;return [] if raw=='' else [mon(x) for x in raw.split(';')]
def expr(ts,n):
 a=[[] for _ in range(n)]
 for c,g in ts:assert g<n;a[g].append(list(c))
 return a
def main():
 category=json.loads((BASE/'ss.json').read_text());maps={m['name']:m for m in category['maps']};objs={o['name']:o for o in category['modules']};a=json.loads((ROOT/'ModuleLowMapBatches/generation_audit.json').read_text());count=0
 ring=sqlite3.connect(f'file:{BASE}/S0_AdamsSS_t261.db?mode=ro',uri=True)
 for mr in a['records']:
  m=maps[mr['name']];sn,tn=m['from'],m['to'];src=sqlite3.connect(f'file:{BASE}/{objs[sn]["path"]}?mode=ro',uri=True);tgt=sqlite3.connect(f'file:{BASE}/{objs[tn]["path"]}?mode=ro',uri=True);mp=sqlite3.connect(f'file:{BASE}/{m["path"]}?mode=ro',uri=True);tab=mp.execute("select name from sqlite_master where type='table' and name like 'map_AdamsE2_%'").fetchone()[0];images=dict(mp.execute('select id,map from "'+tab+'"'))
  for block in mr['blocks']:
   if block['status']!='generated_unverified':continue
   w=json.loads((ROOT/block['certificate']).read_text());alg=w['algebra'];s,t=block['s'],block['t'];fil,sus=m.get('fil',0),m.get('sus',0)
   assert (w['filtration'],w['suspension'],w['sourceS'],w['sourceT'],w['targetS'],w['targetT'])==(fil,sus,s,t,s+fil,t+fil-sus)
   source=list(src.execute(f'select id,mon from {sn}_AdamsE2_basis where s=? and t=? order by id',(s,t)));target=list(tgt.execute(f'select id,mon from {tn}_AdamsE2_basis where s=? and t=? order by id',(s+fil,t+fil-sus)))
   assert block['source_ids']==[i for i,_ in source] and block['target_ids']==[i for i,_ in target]
   assert alg['source']==[expr([mon(raw)],alg['sourceGenerators']) for _,raw in source]
   assert alg['target']==[expr([mon(raw)],alg['targetGenerators']) for _,raw in target]
   assert alg['images']==[expr(poly(images[g]),alg['targetGenerators']) for g in range(alg['sourceGenerators'])]
   for rel,pr in zip(alg['relations'],block['relations']):
    if pr['kind']=='module':raw=tgt.execute(f'select rel from {tn}_AdamsE2_relations where rowid=?',(pr['rowid'],)).fetchone()[0];assert rel==expr(poly(raw),alg['targetGenerators'])
    else:
     raw=ring.execute('select rel from S0_AdamsE2_relations where rowid=?',(pr['rowid'],)).fetchone()[0];slots=[i for i,p in enumerate(rel) if p];assert len(slots)==1;assert rel==expr(poly(raw+','+str(slots[0])),alg['targetGenerators'])
   count+=1
 assert count==2886
 print('PASS 2886 source/target degree blocks, actual generator images and exact module/ring relation rows; sentinel rejected')
if __name__=='__main__':main()
