"""Check the finite d3 columns against actual rows; no unknown value is zeroed."""
import sqlite3
from pathlib import Path
root=Path(__file__).resolve().parents[1]
with sqlite3.connect(f'file:{root}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True) as c:
 rows=c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=8 AND t=134 ORDER BY id').fetchall()
 selected=[r for r in rows if 3<=r[3]<5000 or 5000<=r[3]<=9997]
 assert selected==[(2701,'4',None,9983),(2702,'0,3',None,9994),(2703,'3','1',9997),(2704,'2','2',9997)]
 # This checks the stored finite prefix, not its true Adams provenance.
 for _,_,diff,level in selected[:2]: assert diff is None and 10000-level>3
 target=c.execute('SELECT base,level FROM S0_AdamsE2_ss WHERE s=11 AND t=136 ORDER BY id').fetchall()
 assert [b for b,l in target if 3<=l<5000 or 5000<=l<=9997]==['1','2','3','0']
 incoming=c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=5 AND t=132').fetchall()
 assert incoming==[(2575,'0,4,324,1','1')]
print('d3 actual known columns and pre-first-unknown zero prefixes verified; incoming E3 dimension0')
