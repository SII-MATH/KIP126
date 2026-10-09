"""Extract real nonimage leaves; provenance does not establish Adams completeness."""
import hashlib
import importlib.util
import json
from pathlib import Path
import re
import sqlite3
import subprocess

here = Path(__file__).resolve().parent
root = here.parent
pattern = re.compile(r'`([^` ]+) \((\d+),(\d+)\) \[([^]]*)\]` is not in B_(\d+)')
records = json.loads((here / 'relevant-records.json').read_text())
leaves = {}
for record in records:
    for obj, stem, filtration, residual, bound in pattern.findall(record['info']):
        key = (obj, int(stem), int(filtration), residual, int(bound))
        leaves.setdefault(key, []).append(dict(id=record['id'], depth=record['depth'],
                                               reason=record['reason'], file=record['file']))

inputs = []
manifest = []
for key, events in sorted(leaves.items()):
    obj, stem, filtration, residual, bound = key
    paths = list((root / 'upstream/kervaire-49').glob(obj + '_AdamsSS*.db'))
    if len(paths) != 1:
        raise ValueError(f'expected unique database for {obj}')
    path = paths[0]
    with sqlite3.connect(f'file:{path}?mode=ro', uri=True) as db:
        basis = db.execute(f'SELECT id, mon FROM "{obj}_AdamsE2_basis" WHERE s=? AND t=? ORDER BY id',
                           (filtration, stem + filtration)).fetchall()
        rows = db.execute(f'SELECT id,base,diff,level FROM "{obj}_AdamsE2_ss" WHERE s=? AND t=? ORDER BY id',
                          (filtration, stem + filtration)).fetchall()
    dimension = len(basis)
    def vector(text):
        if text is None or text in ('[NULL]', '-1'):
            raise ValueError('unknown vector cannot become a matrix column')
        indices = [] if text == '' else [int(x) for x in text.split(',')]
        if len(set(indices)) != len(indices) or any(i < 0 or i >= dimension for i in indices):
            raise ValueError('noncanonical local vector')
        return [int(i in indices) for i in range(dimension)]
    selected = [r for r in rows if 2 <= r[3] <= bound]
    columns = [vector(r[1]) for r in selected]
    target = vector(residual)
    tokens = [dimension, len(columns)]
    tokens += [col[i] for i in range(dimension) for col in columns]
    tokens += target
    inputs.append(' '.join(map(str, tokens)))
    manifest.append(dict(case=len(manifest)+1, object=obj, stem=stem, s=filtration, bound=bound,
                         residual=residual, source=str(path.relative_to(root)),
                         sha256=hashlib.sha256(path.read_bytes()).hexdigest(), basis=basis,
                         selected_boundary_rows=selected, all_staircase_rows=rows,
                         unknown_diff_rows=[r[0] for r in rows if r[2] is None], events=events,
                         status='finite_nonimage_only; completeness/topological provenance unproved'))
text = '\n'.join(inputs) + '\n'
(here / 'leaves.matrix').write_text(text)
result = subprocess.run([str(root / 'LinearCertificates/linear_export')], input=text,
                        text=True, capture_output=True, check=True)
decoded = [json.loads(line) for line in result.stdout.splitlines()]
if len(decoded) != len(manifest) or any(r['kind'] != 'nonimage' for r in decoded):
    raise ValueError('a recorded nonimage claim disagrees with extracted finite matrix')
(here / 'leaves.jsonl').write_text(result.stdout)
(here / 'leaves-provenance.json').write_text(json.dumps(manifest, indent=2) + '\n')
spec = importlib.util.spec_from_file_location('linear_import', root / 'LinearCertificates/import_jsonl.py')
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
lean = module.generate(result.stdout).replace('LinearCertificates.Generated', 'BranchReplayCertificates.GeneratedLeaves').replace('open LinProgramCertificates', 'open LinProgramCertificates LinearCertificates')
(here / 'GeneratedLeaves.lean').write_text(lean)
print(f'{len(records)} events -> {len(manifest)} distinct leaves, {sum(len(x["events"]) for x in manifest)} references')
