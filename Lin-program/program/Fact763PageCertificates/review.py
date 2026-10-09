"""Read-only source/certificate reproduction, with optional explicit regeneration."""
import argparse
import hashlib
import json
from pathlib import Path
import sqlite3
import subprocess

here = Path(__file__).resolve().parent
root = here.parent

def matrix(rows, dimension):
    result = [[0] * len(rows) for _ in range(dimension)]
    for column, row in enumerate(rows):
        raw = row[2]
        if raw is None or raw in ('[NULL]', '-1', '?'):
            raise ValueError(f'unknown d2 in basis {row[0]}')
        indices = [] if raw == '' else list(map(int, raw.split(',')))
        if len(set(indices)) != len(indices) or any(i < 0 or i >= dimension for i in indices):
            raise ValueError(f'invalid d2 vector in basis {row[0]}')
        for i in indices:
            result[i][column] = 1
    return ''.join(str(bit) for row in result for bit in row) or '-'

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    group = parser.add_mutually_exclusive_group()
    group.add_argument('--check', action='store_true', help='default: no files are written')
    group.add_argument('--regenerate', action='store_true', help='replace comparison.json only after source audit passes')
    args = parser.parse_args()
    manifest = json.loads((here / 'source.json').read_text())
    db_path = root.parent / manifest['database']
    if hashlib.sha256(db_path.read_bytes()).hexdigest() != manifest['sha256']:
        raise ValueError('database hash differs from pinned source')
    rows = {}
    with sqlite3.connect(f'file:{db_path}?mode=ro', uri=True) as db:
        for s, t in [(8, 133), (10, 134), (12, 135)]:
            rows[str((s, t))] = [list(r) for r in db.execute(
                'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s, t))]
    if rows != manifest['rows']:
        raise ValueError('one of the three full basis blocks differs')
    call = ['3', '5', '2', matrix(rows['(10, 134)'], 3), matrix(rows['(8, 133)'], 5)]
    if call != manifest['export_args']:
        raise ValueError('matrix dimensions/entries differ from pinned invocation')
    # Exercise rejection independently of the release's absence of NULL d2 here.
    for unknown in (None, '[NULL]', '-1', '?'):
        try:
            matrix([[0, '', unknown]], 1)
        except ValueError:
            pass
        else:
            raise AssertionError('unknown value accepted')
    output = subprocess.check_output([str(root / 'PageTransitionCertificates/page-transition-export'), *call], text=True)
    if args.regenerate:
        (here / 'comparison.json').write_text(output)
    elif output != (here / 'comparison.json').read_text():
        raise ValueError('C++ output differs from checked certificate')
    print('3 source blocks, exact C++ certificate, and 4 unknown rejection cases verified')

if __name__ == '__main__':
    main()
