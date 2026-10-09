"""Generate binary Lake dependencies for literal files in registered modules.

Conservatively include every existing JSON/JSONL/CSV/TXT path literal, including
fixtures passed through helper functions. This is build provenance, not a proof.
Computed paths must be declared in certificate-input-extras.json.
"""
import argparse
import json
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
BEGIN = '-- BEGIN GENERATED CERTIFICATE INPUTS\n'
END = '-- END GENERATED CERTIFICATE INPUTS\n'


def generate(config):
    config = re.sub(re.escape(BEGIN) + r'.*?' + re.escape(END), '', config, flags=re.S)
    config = re.sub(r'^  needs := #\[certificateInputs\w+\]\n', '', config, flags=re.M)
    extras_path = ROOT / 'tests/certificate-input-extras.json'
    extras = json.loads(extras_path.read_text()) if extras_path.exists() else {}
    records = {}
    for match in re.finditer(r'lean_lib (\w+) where\n(.*?)(?=\n@\[default_target\]|\Z)', config, re.S):
        library, block = match.groups()
        files = set()
        for kind, name in re.findall(r'\.(andSubmodules|one)\s+`([\w.]+)', block):
            path = ROOT.joinpath(*name.split('.'))
            if path.with_suffix('.lean').is_file():
                files.add(path.with_suffix('.lean'))
            if kind == 'andSubmodules':
                files.update(path.rglob('*.lean'))
        found = {}
        for source in sorted(files):
            for raw in re.findall(r'"(?:[^"\\]|\\.)*"', source.read_text()):
                try:
                    value = json.loads(raw)
                except ValueError:
                    continue
                if not re.fullmatch(r'[A-Za-z0-9_./-]+\.(?:jsonl?|csv|txt)', value):
                    continue
                assert not value.startswith('/') and '..' not in Path(value).parts, value
                assert (ROOT / value).is_file(), f'{source}: missing file literal {value}'
                found.setdefault(value, set()).add(str(source.relative_to(ROOT)))
        for value in extras.get(library, []):
            assert (ROOT / value).is_file(), value
            found.setdefault(value, set()).add('explicit dependency')
        if found:
            records[library] = {p: sorted(users) for p, users in sorted(found.items())}
    assert set(extras) <= set(records), 'extra dependencies name an unregistered library'
    declarations = [BEGIN.rstrip()]
    for library, inputs in sorted(records.items()):
        target = 'certificateInputs' + library
        declarations.extend([
            f'target {target} (pkg : NPackage __name__) : Array System.FilePath := do',
            '  let paths : Array String := #[',
            ',\n'.join('    ' + json.dumps(path) for path in inputs) + ']',
            '  let jobs ← paths.mapM fun path => inputBinFile (pkg.dir / System.FilePath.mk path)',
            '  return Job.collectArray jobs', ''])
        config = config.replace(f'lean_lib {library} where\n',
                                f'lean_lib {library} where\n  needs := #[{target}]\n')
    declarations.append(END.rstrip())
    marker = '@[default_target]\n'
    assert marker in config
    config = config.replace(marker, '\n'.join(declarations) + '\n' + marker, 1)
    manifest = dict(schema='lake-certificate-inputs/v1', mode='binary',
                    libraries=records, unique_files=len({p for paths in records.values() for p in paths}),
                    scope='Literal file inputs in registered modules plus explicit computed-path dependencies')
    return config, json.dumps(manifest, indent=2) + '\n'


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    path = ROOT / 'lakefile.lean'
    config, manifest = generate(path.read_text())
    output = ROOT / 'tests/certificate-inputs.json'
    if args.check:
        assert path.read_text() == config, 'run python3 tests/track_certificate_inputs.py'
        assert output.read_text() == manifest, 'certificate input manifest is stale'
    else:
        path.write_text(config)
        output.write_text(manifest)
    data = json.loads(manifest)
    print(f"PASS: {data['unique_files']} external files tracked in {len(data['libraries'])} libraries")
