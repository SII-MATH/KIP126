"""Verify saved review inputs without rewriting its historical evidence."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
report = json.loads((HERE / 'review.json').read_text())
for relative, expected in report['inputs_sha256'].items():
    assert hashlib.sha256((ROOT / relative).read_bytes()).hexdigest() == expected, relative
for row in report['modules']:
    name = row['module']
    assert row['observed_exit_code'] == 0
    assert hashlib.sha256((HERE / (name + '.log')).read_bytes()).hexdigest() == row['log_sha256']
print('Current review sources and successful logs match: 4 modules, 19 standard/no-axiom reports')
