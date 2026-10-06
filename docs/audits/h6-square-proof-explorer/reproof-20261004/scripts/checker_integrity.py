"""Check frozen proposition identity, round sequencing, and current source captures."""
import hashlib
import json
from pathlib import Path

OUT = Path(__file__).resolve().parents[1]
ROOT = OUT.parents[3]

def main():
    deps = {d['id']: d for d in json.loads((OUT / 'data/dependencies.json').read_text())}
    checks = json.loads((OUT / 'data/checks.json').read_text())
    assert len(checks) == len({c['dependency_id'] for c in checks})
    assert {c['dependency_id'] for c in checks} == set(deps)
    source_hashes = {}
    round_counts = {}
    for number in (1, 2, 3):
        rows = json.loads((OUT / f'data/check-round{number}.json').read_text())
        assert len(rows) == len({r['dependency_id'] for r in rows})
        round_counts[str(number)] = len(rows)
        for row in rows:
            assert row['round'] == number
            d = deps[row['dependency_id']]
            assert row['proposition_version'] == d['proposition_version']
            assert row['fixed_used_statement'] == d['used_statement']
            assert row['used_statement_sha256'] == hashlib.sha256(d['used_statement'].encode()).hexdigest()
    for c in checks:
        d = deps[c['dependency_id']]
        assert c['proposition_version'] == d['proposition_version']
        assert c['fixed_used_statement'] == d['used_statement']
        assert c['used_statement_sha256'] == hashlib.sha256(d['used_statement'].encode()).hexdigest()
        rounds = c['rounds']
        assert [r['round'] for r in rounds] == list(range(1, len(rounds) + 1))
        assert 1 <= len(rounds) <= 3
        assert all(r['conclusion'] != '通过' for r in rounds[:-1])
        if c['semantic_status'] == '通过':
            assert rounds[-1]['conclusion'] == '通过'
        if c['semantic_status'] in ['未通过', '未找到']:
            assert len(rounds) == 3
        for candidate in c['candidates'] + c.get('checker_expansions', []):
            path = candidate['path']
            if path not in source_hashes:
                source_hashes[path] = hashlib.sha256((ROOT / path).read_bytes()).hexdigest()
            assert source_hashes[path] == candidate['source_sha256'], path
    result = {'dependencies': len(deps), 'round_counts': round_counts,
              'distinct_current_source_files': len(source_hashes),
              'status_counts': {s: sum(c['semantic_status'] == s for c in checks)
                                for s in ['通过', '未通过', '未找到', '核查未完成']},
              'frozen_proposition_identity': True, 'green_stops': True,
              'red_after_three_rounds': True, 'current_source_hashes_match': True}
    (OUT / 'records/checker-integrity.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n')
    print(json.dumps(result, ensure_ascii=False))

if __name__ == '__main__':
    main()
