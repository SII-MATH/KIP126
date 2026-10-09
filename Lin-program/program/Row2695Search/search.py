"""Bounded full E3 target screen; unknown raw d3 values remain unknown."""
import importlib.util
import json
from pathlib import Path

here = Path(__file__).resolve().parent
root = here.parent
spec = importlib.util.spec_from_file_location('map_screen', root / 'Row3147MapSearch/search_lifted.py')
screen = importlib.util.module_from_spec(spec)
spec.loader.exec_module(screen)
connection = screen.alg.connection('S0_AdamsSS_t261.db')
raw = list(connection.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2695').fetchone())
assert raw == [2695, 9, 134, '2', None, 9000]
source = screen.comparison(connection, 'S0', 9, 134, screen.metadata(connection))
target = screen.comparison(connection, 'S0', 12, 136, screen.metadata(connection))
wire = target['wire']
assert wire['h'] == 1
indices = [i for i, bit in enumerate(wire['inclusion']) if bit]
screen.HERE = here
screen.SELECTED = [('source', 9, 134, [2]), ('target', 12, 136, indices)]
report = screen.run()
report.update(schema='row2695_full_target_screen/v1', row=raw,
              source_comparison=source, target_comparison=target,
              target_E2_indices=indices, wrapper_sha256=screen.digest(Path(__file__)),
              claim='Numerical screen only; actual complete maps and local naturality still require proof.')
(here / 'lifted-search.json').write_text(json.dumps(report, indent=2, sort_keys=True) + '\n')
