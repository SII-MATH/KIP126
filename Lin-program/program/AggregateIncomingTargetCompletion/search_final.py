"""Reproduce the final target using one explicitly conditional successor rule."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
base_script = ROOT / 'Stem125E4Search/search.py'
outer = {'__file__': str(base_script)}
exec(compile(base_script.read_text().split('rows=[]')[0], str(base_script), 'exec'), outer)
namespace = outer['ns']
inputs = [ROOT / path for path in ['Stem125E4Search/search.json', 'Stem125E5Search/search.json',
    'Row3743Successor/source.json', 'Row3743Successor/Basic.lean', 'Row3743Successor/Named.lean',
    'AggregateD5Conditional/generate.py', 'AggregateD5Conditional/source.json']]
for path in inputs[:3]:
    data = json.loads(path.read_text())
    namespace['cache'].update(data.get('blocks', data.get('new_blocks',
        data.get('branches', [{}])[0].get('new_blocks', {}))))
before = dict(namespace['cache'])
original_matrix = namespace['matrix']


def matrix(obj, s, t, page, uses):
    if (obj, s, t, page) == ('S0', 23, 147, 4):
        records = namespace['selected'](obj, s, t, page)
        assert records == [[3743, '0', None, 9000]]
        assert (namespace['dim'](obj, s, t, page),
                namespace['dim'](obj, s + page, t + page - 1, page)) == (1, 1)
        uses.append(dict(object=obj, source=[s, t], page=page, row=records[0],
            kind='conditional_successor_row3986', target_predecessor='S0:27,150:d3'))
        return [[0]]
    return original_matrix(obj, s, t, page, uses)


namespace['matrix'] = matrix
target = outer['ensure']('S0', 18, 143, 5)
assert target['wire']['h'] == 0
assert all(namespace['cache'][key] == value for key, value in before.items())
new = {key: value for key, value in namespace['cache'].items() if key not in before}
assert set(new) == {'S0:26,149:d2', 'S0:23,147:d3', 'S0:23,147:d4', 'S0:18,143:d5'}
report = dict(blocks=new, failures=namespace['failures'], root='S0:18,143:d5',
    scope='Explicit row3743 zero conditional on actual known successor meaning; raw NULL unchanged.',
    input_sha256={str(path.relative_to(ROOT)): hashlib.sha256(path.read_bytes()).hexdigest()
                  for path in inputs + [base_script, Path(__file__)]})
(HERE / 'conditional3391-search.json').write_text(json.dumps(report, indent=2) + '\n')
print('4 new conditional comparisons;one successor-derived row3743 rule;target3391 h0')
