"""Check all nonzero generator-image terms against source and target degrees."""
import json,pathlib,sqlite3
from export_shifted import polynomial
HERE=pathlib.Path(__file__).resolve().parent;BASE=HERE.parent/'upstream/kervaire-49'
def main():
 category=json.loads((BASE/'ss.json').read_text());objs={o['name']:o for o in category['modules']};ring=sqlite3.connect(f'file:{BASE}/S0_AdamsSS_t261.db?mode=ro',uri=True);rd={i:(s,t) for i,s,t in ring.execute('select id,s,t from S0_AdamsE2_generators')};rows=[]
 for m in category['maps']:
  if m['from'] not in objs or m['to'] not in objs or not(m.get('fil',0) or m.get('sus',0)):continue
  sn,tn=m['from'],m['to'];sc=sqlite3.connect(f'file:{BASE}/{objs[sn]["path"]}?mode=ro',uri=True);tc=sqlite3.connect(f'file:{BASE}/{objs[tn]["path"]}?mode=ro',uri=True);mc=sqlite3.connect(f'file:{BASE}/{m["path"]}?mode=ro',uri=True)
  sd={i:(s,t) for i,s,t in sc.execute(f'select id,s,t from {sn}_AdamsE2_generators')};td={i:(s,t) for i,s,t in tc.execute(f'select id,s,t from {tn}_AdamsE2_generators')};tab=mc.execute("select name from sqlite_master where type='table' and name like 'map_AdamsE2_%'").fetchone()[0];bad=[];terms=0;zero=0
  for i,raw in mc.execute('select id,map from "'+tab+'"'):
   if raw is None or '4294967295' in raw or '?' in raw:
    bad.append(dict(id=i,reason='unknown/sentinel encoding',raw=raw));continue
   ps=polynomial(raw)
   if not ps:zero+=1
   for coeff,g in ps:
    terms+=1
    if g not in td or i not in sd or any(x not in rd for x in coeff):
     bad.append(dict(id=i,reason='unknown/sentinel or missing generator ID',target_generator=g));continue
    s,t=td[g];s+=sum(rd[x][0] for x in coeff);t+=sum(rd[x][1] for x in coeff);expected=(sd[i][0]+m.get('fil',0),sd[i][1]+m.get('fil',0)-m.get('sus',0))
    if (s,t)!=expected:bad.append(dict(id=i,actual=[s,t],expected=expected))
  rows.append(dict(map=m['name'],filtration=m.get('fil',0),suspension=m.get('sus',0),nonzero_terms=terms,zero_images=zero,mismatches=bad))
 (HERE/'shift_convention_audit.json').write_text(json.dumps(rows,indent=2)+'\n');print(len(rows),'shifted maps audited;',sum(len(x['mismatches']) for x in rows),'mismatches')
if __name__=='__main__':main()
