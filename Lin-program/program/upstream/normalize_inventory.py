"""Normalize the fixed release category without inventing names or dropping maps_v2."""
import hashlib
import json
from pathlib import Path
root = Path(__file__).resolve().parent
source = root / 'kervaire-49/ss.json'
raw = source.read_bytes()
category = json.loads(raw)
records = []
for section in ['rings', 'modules', 'maps', 'maps_v2', 'cofseqs', 'commutativity']:
    for ordinal, item in enumerate(category[section], 1):
        records.append(dict(section=section, ordinal=ordinal, source=item,
                            status='inventory_only'))
result = dict(schema='lin-category-inventory/v1', source_sha256=hashlib.sha256(raw).hexdigest(),
              counts={k: len(category[k]) for k in category if isinstance(category[k], list)},
              records=records)
(root / 'category-inventory.json').write_text(json.dumps(result, ensure_ascii=False, indent=2)+'\n')
print(result['counts'])
