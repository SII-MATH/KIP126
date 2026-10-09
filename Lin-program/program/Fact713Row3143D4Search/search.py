"""Screen all configured sphere maps for the named row3143 d4.

The one-dimensional target is checked in its complete d2 quotient. Candidate
detectors still require full adjacent matrices and actual naturality laws.
"""
import importlib.util
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location(
    'row3143_screen', ROOT / 'Row3147MapSearch/search_lifted.py')
screen = importlib.util.module_from_spec(spec)
spec.loader.exec_module(screen)


def run():
    connection = screen.alg.connection('S0_AdamsSS_t261.db')
    row = list(connection.execute(
        'SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=3143').fetchone())
    assert row == [3143, 17, 140, '0', None, 9000]
    meta = screen.metadata(connection)
    source = screen.comparison(connection, 'S0', 17, 140, meta)
    target = screen.comparison(connection, 'S0', 21, 143, meta)
    sw, tw = source['wire'], target['wire']
    assert sw['h'] == 1 and tw['h'] == 1
    named = [int(i == 0) for i in range(sw['m'])]
    assert not any(screen.ev(sw['outgoing'], sw['k'], sw['m'], named))
    representative = screen.ev(tw['inclusion'], tw['m'], 1, [1])
    assert screen.ev(tw['projection'], 1, tw['m'], representative) == [1]
    screen.HERE = HERE
    screen.SELECTED = [('source', 17, 140, [0]),
                       ('target', 21, 143, [i for i, bit in enumerate(representative) if bit])]
    report = screen.run()
    report.update(schema='fact713_row3143_d4_map_screen/v1', row=row,
                  source_comparison=source, target_comparison=target,
                  source_E2_vector=named,
                  source_E3_vector=screen.ev(sw['projection'], sw['h'], sw['m'], named),
                  target_E2_vector=representative, target_E3_vector=[1],
                  wrapper_sha256=screen.digest(Path(__file__)),
                  claim='Search only. NULL d4 remains unknown. No actual map interpretation is inferred.')
    (HERE / 'lifted-search.json').write_text(json.dumps(report, indent=2, sort_keys=True) + '\n')


if __name__ == '__main__':
    run()
