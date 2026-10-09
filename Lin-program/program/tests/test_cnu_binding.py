"""Source consistency only; Lean separately proves the encoded expression semantics."""
from pathlib import Path
import sqlite3

root = Path(__file__).resolve().parents[1]
db = root / 'upstream/kervaire-49/Cnu_AdamsSS_t200.db'
with sqlite3.connect(f'file:{db}?mode=ro', uri=True) as c:
    rows = c.execute('select id,mon from Cnu_AdamsE2_basis where s=14 and t=139 order by id').fetchall()
    assert rows == [(4410, '372'), (4411, '449,1,0'),
                    (4412, '1,1,7,1,275,1,0'), (4413, '0,2,425,1,0')], rows
    assert c.execute('select count(*) from Cnu_AdamsE2_generators').fetchone()[0] == 1171
source = (root / 'NamedElementCertificates/CnuBottomCell.lean').read_text()
assert '[([], 372), ([449], 0), ([1, 7, 275], 0), ([0, 0, 425], 0)]' in source
assert '[4410, 4411, 4412, 4413]' in source
assert 'Expression 1171' in source
print('PASS Cnu degree (14,139): all four basis encodings and 1171 generator count match SQL')
