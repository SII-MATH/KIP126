"""Propose exact requests from certificates; Lean independently binds both."""
import json
from pathlib import Path

p = Path(__file__).resolve().parent
records = [json.loads(line) for line in (p / 'bound94.jsonl').read_text().splitlines()]
requests = []
for certificate in records:
    event = certificate['event']
    key = dict(object=certificate['object'], page=event['eventPage'], **event['sourceDegree'])
    requests.append(dict(key=key, source=event['finite']['source'],
                         target=event['finite']['target'], certificate=certificate))
canonical = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':')) + '\n'
(p / 'requests94.jsonl').write_text(''.join(map(canonical, requests)))
(p / 'request6651.json').write_text(canonical(requests[90]))
assert requests[90]['key'] == dict(object='S0', page=4, s=52, t=177)
print('94 explicit key/input/output requests proposed, including event6651')
