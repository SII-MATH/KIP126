"""Reuse the metadata-bounded configured-map reducer on two one-dimensional targets."""
import importlib.util
import json
import sqlite3
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parents[1]
spec = importlib.util.spec_from_file_location('map_screen', root / 'Row3147MapSearch/search_lifted.py')
screen = importlib.util.module_from_spec(spec)
spec.loader.exec_module(screen)
c = sqlite3.connect(f'file:{root}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro', uri=True)
reports = []
for rid in [2925, 4306]:
    _, s, t, base, diff, level = c.execute(
        'select id,s,t,base,diff,level from S0_AdamsE2_ss where id=?', (rid,)).fetchone()
    comparison = screen.comparison(c, 'S0', s+3, t+2, screen.metadata(c))
    w = comparison['wire']
    assert w['h'] == 1
    target = [i for i in range(w['m']) if w['inclusion'][i]]
    screen.SELECTED = [('source', s, t, list(map(int, base.split(',')))),
                       ('target', s+3, t+2, target)]
    screen.HERE = p / f'maps{rid}'
    screen.HERE.mkdir(exist_ok=True)
    report = screen.run()
    report.update(schema='aggregate_remaining_configured_map_screen/v1',
                  row=[rid, s, t, base, diff, level], target_comparison=comparison,
                  claim='Numerical screen only; no naturality, permanence, or zero differential theorem.',
                  wrapper_path=str(Path(__file__).relative_to(root)),
                  wrapper_sha256=screen.digest(Path(__file__)))
    (screen.HERE / 'lifted-search.json').write_text(json.dumps(report, indent=2, sort_keys=True)+'\n')
    reports.append(dict(row=rid, counts=report['counts'],
                        candidates=[x['map']['name'] for x in report['maps']
                                    if x['status'] == 'candidate_needs_full_map_compatibility']))
(p / 'maps-summary.json').write_text(json.dumps(reports, indent=2)+'\n')
