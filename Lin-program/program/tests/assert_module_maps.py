"""Audit the maintained Cnu map proofs, not unfinished full-range batches."""
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1]
folder = root / 'ModuleMapCertificates'
audit = json.loads((folder / 'audit.json').read_text())
matrices = json.loads((folder / 'matrix_audit.json').read_text())
assert len(audit['columns']) == 76
assert len(matrices) == 73
assert sum(row['cols'] for row in matrices) == 76
source_ids = [i for row in matrices for i in row['source_ids']]
assert len(set(source_ids)) == 76
assert set(source_ids) == {row['source_id'] for row in audit['columns']}
for name in ['Basic', 'Actual', 'Tests', 'Import', 'Imported', 'ImportTests',
             'MatrixSemantics', 'MatrixImport', 'MatrixActual', 'MatrixTests']:
    source = folder / f'{name}.lean'
    artifact = root / '.lake/build/lib/lean/ModuleMapCertificates' / f'{name}.olean'
    assert artifact.exists() and artifact.stat().st_mtime >= source.stat().st_mtime, name
for row in audit['columns']:
    assert row['source_s'] == row['target_s']
    assert row['source_t'] == row['target_t'] + 4
assert (folder / 'Imported.lean').read_text().count('theorem ') == 76
assert (folder / 'MatrixActual.lean').read_text().count('theorem ') == 73
print('PASS Cnu-to-S0:76 columns and73 complete matrices; conditional finite module semantics')
