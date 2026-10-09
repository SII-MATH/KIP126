"""Explore all finite predecessor comparisons needed for the named E6 claim."""
import sqlite3,json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
c=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
def rows(s,t): return c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(s,t)).fetchall()
def selected(s,t,r): return [x for x in rows(s,t) if r<=x[3]<5000 or 5000<=x[3]<=10000-r]
needed=set()
def add(s,t,r):
 if r<2 or (s,t,r) in needed:return
 needed.add((s,t,r))
 for a,b in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]: add(a,b,r-1)
for r in range(2,6):add(8,134,r)
blocked=[]
for s,t,r in sorted(needed):
 for a,b in [(s-r,t-r+1),(s,t)]:
  for row in selected(a,b,r):
   i,base,diff,level=row
   if level==9000 or (level==10000-r and diff is None):blocked.append({'center':[s,t,r],'source':[a,b],'row':row})
print(json.dumps({'comparisons':len(needed),'unknown_events':blocked},indent=2))
