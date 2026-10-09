"""Read-only check that the representative columns equal the selected stored E3 basis."""
import json,sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent
path=p.parent/'upstream/kervaire-49/S0_AdamsSS_t261.db'
with sqlite3.connect(f'file:{path}?mode=ro',uri=True) as db:
 rows=db.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=8 AND t=134 ORDER BY id').fetchall()
selected=[r for r in rows if (3<=r[3]<5000) or (5000<=r[3]<=9997)]
assert [r[1] for r in selected]==['4','0,3','3','2']
assert [r[0] for r in selected]==[2701,2702,2703,2704]
print('Actual E3 representative columns match: 4;0,3;3;2. Unknown d6/d17 values retained.')
