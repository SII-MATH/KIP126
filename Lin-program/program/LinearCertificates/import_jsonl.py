"""Translate untrusted matrix JSONL into kernel-checked Lean declarations.

Usage: python3 LinearCertificates/import_jsonl.py input.jsonl output.lean
The generated module proves each target using checkImage_sound/checkNotImage_sound.
"""
import json
import pathlib
import sys


def bits(value, length, field):
    if not isinstance(value, list) or len(value) != length or any(type(v) is not bool for v in value):
        raise ValueError(f'{field}: expected exactly {length} Boolean entries')
    return '[' + ', '.join('true' if v else 'false' for v in value) + ']'


def unique_object(pairs):
    result = {}
    for key, value in pairs:
        if key in result:
            raise ValueError(f"duplicate key: {key}")
        result[key] = value
    return result


def generate(source):
    if not source.splitlines():
        raise ValueError("empty certificate file")
    out = ['import LinearCertificates.Import', '', 'namespace LinearCertificates.Generated',
           'open LinProgramCertificates', '']
    for line_no, line in enumerate(source.splitlines(), 1):
        try:
            record = json.loads(line, object_pairs_hook=unique_object)
            if set(record) != {'matrix', 'target', 'witness', 'kind'}:
                raise ValueError('unexpected or missing top-level fields')
            matrix = record['matrix']
            if set(matrix) != {'rows', 'cols', 'entries'}:
                raise ValueError('unexpected or missing matrix fields')
            m, n = matrix['rows'], matrix['cols']
            if type(m) is not int or type(n) is not int or min(m, n) < 0 or max(m, n) > 4096:
                raise ValueError('invalid matrix dimensions')
            if record['kind'] not in ('image', 'nonimage'):
                raise ValueError('unsupported result kind')
            a = bits(matrix['entries'], m*n, 'matrix.entries')
            y = bits(record['target'], m, 'target')
            w = bits(record['witness'], n if record['kind'] == 'image' else m, 'witness')
            name = f'case{line_no}'
            out.extend([f'def {name}Matrix : Matrix {m} {n} := fun i j => ({a} : List Bool)[i.val * {n} + j.val]!',
                        f'def {name}Target : Vec {m} := fun i => ({y} : List Bool)[i.val]!',
                        f'def {name}Witness : Vec {n if record["kind"] == "image" else m} := fun i => ({w} : List Bool)[i.val]!'])
            neg = '' if record['kind'] == 'image' else '¬ '
            out.extend([f'theorem {name} : {neg}InImage {name}Matrix {name}Target := by',
                        f'  lin_cert using {name}Witness', ''])
        except (KeyError, TypeError, ValueError) as err:
            raise ValueError(f'line {line_no}: {err}') from err
    out.append('end LinearCertificates.Generated')
    return '\n'.join(out) + '\n'


if __name__ == '__main__':
    if len(sys.argv) != 3:
        raise SystemExit(__doc__)
    try:
        result = generate(pathlib.Path(sys.argv[1]).read_text())
        pathlib.Path(sys.argv[2]).write_text(result)
    except (OSError, ValueError) as err:
        raise SystemExit(str(err))
