"""Propose exact requests from certificates; Lean independently binds both."""
import json
from pathlib import Path

p = Path(__file__).resolve().parent
records = [json.loads(line) for line in (p / 'bound95.jsonl').read_text().splitlines()]
requests = []
for certificate in records:
    event = certificate['event']
    key = dict(object=certificate['object'], page=event['eventPage'], **event['sourceDegree'])
    requests.append(dict(key=key, source=event['finite']['source'],
                         target=event['finite']['target'], certificate=certificate))
canonical = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':')) + '\n'
(p / 'requests95.jsonl').write_text(''.join(map(canonical, requests)))
(p / 'request3391.json').write_text(canonical(next(r for r in requests if r['key'] == dict(object='S0', page=5, s=13, t=139))))
assert len(requests) == 95
print('95 explicit key/input/output requests proposed, including event3391')
