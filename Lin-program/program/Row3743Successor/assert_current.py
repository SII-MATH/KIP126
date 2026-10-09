"""Validate successful direct records without rewriting historical hashes."""
import hashlib
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
source = json.loads((HERE / 'source.json').read_text())
for path, digest in source['input_sha256'].items():
    assert sha(ROOT / path) == digest, path
assert source['raw_rows'][0] == [3743, 23, 147, '0', None, 9000]
assert source['blocks']['S0:31,153:d4']['wire']['incoming'] == [True]
reports = 0
current_objects = {}
for name in ['Data', 'Basic', 'Links', 'Named']:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    assert record['log_sha256'] == sha(HERE / (name + '.log'))
    log = (HERE / (name + '.log')).read_text()
    assert 'sorryAx' not in log and 'error:' not in log and 'error(' not in log
    sets = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all(set(s.split(', ')) <= {'propext', 'Classical.choice', 'Quot.sound'} for s in sets)
    reports += len(sets) + log.count('does not depend on any axioms')
    current_objects[name] = record['olean_sha256'] == sha(
        ROOT / '.lake/build/lib/lean/Row3743Successor' / (name + '.olean'))
assert reports == 11
for key in source['new_keys']:
    name = 'b_' + key.replace(':', '_').replace(',', '_').replace('-', 'neg')
    wire = json.loads((HERE / 'wires' / (name + '.json')).read_text())
    assert wire == source['blocks'][key]['wire']
result = dict(status='successful_direct_sources_current', modules=4, standard_reports=reports,
    comparisons=12, full_predecessors=13, current_olean_matches_direct=current_objects,
    note='A later Lake rebuild may produce different object bytes; its separate checkpoint is required.')
(HERE / 'current-audit.json').write_text(json.dumps(result, indent=2) + '\n')
print('4 successful direct sources; 11 standard reports; raw NULL preserved')
