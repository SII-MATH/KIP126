"""Compare every archived C++ proof record with Python's independent CSV reader.

No full output file is retained; records are streamed and their digest kept.
This checks provenance fidelity, never mathematical truth of proof events.
"""
import csv
import hashlib
import json
from pathlib import Path
import subprocess

root = Path(__file__).resolve().parents[1]
sources = sorted((root / 'upstream/proofs_csv').glob('proofs-part*.csv'))
assert len(sources) == 3
reports = []
for source in sources:
    log = root / 'tests' / (source.stem + '-archive-stderr.log')
    count = multiline = manual = 0
    output_hash = hashlib.sha256()
    with log.open('w') as stderr, source.open(newline='', encoding='utf-8') as stream:
        process = subprocess.Popen([str(root / 'lin-cert-export'), 'proofs', str(source)],
                                   stdout=subprocess.PIPE, stderr=stderr, text=True)
        try:
            header_line = process.stdout.readline()
            output_hash.update(header_line.encode())
            header = json.loads(header_line)
            assert header['generator'] == 'lin-cert-export/1.1.0'
            reader = csv.reader(stream)
            fields = next(reader)
            while True:
                start = reader.line_num + 1
                try:
                    row = next(reader)
                except StopIteration:
                    break
                if not row:
                    continue
                count += 1
                multiline += reader.line_num != start
                line = process.stdout.readline()
                assert line, (source.name, count, start, 'exporter stopped early')
                output_hash.update(line.encode())
                record = json.loads(line)
                assert record['source_row'] == start, (source.name, count, start)
                expected = {k: v.replace('\r\n', '\n') for k, v in zip(fields, row)}
                assert len(fields) == len(row) and record['fields'] == expected, (source.name, start)
                if expected.get('reason') == 'M':
                    manual += 1
                    assert record['status'] == 'external_input', (source.name, start)
                unsigned = line.rstrip('\n').rsplit(',"sha256":', 1)[0] + '}'
                assert hashlib.sha256(unsigned.encode()).hexdigest() == record['sha256']
                if count % 500000 == 0:
                    print(source.name, count, 'records checked', flush=True)
            assert process.stdout.readline() == '', source.name
            code = process.wait()
            assert code == 0, (source.name, code)
        finally:
            if process.poll() is None:
                process.terminate()
                process.wait()
    input_hash = hashlib.sha256()
    with source.open('rb') as stream:
        for chunk in iter(lambda: stream.read(1048576), b''):
            input_hash.update(chunk)
    assert input_hash.hexdigest() == header['input_sha256']
    reports.append(dict(source=str(source.relative_to(root)), records=count,
                        multiline_records=multiline, manual_external_inputs=manual,
                        physical_lines=reader.line_num,
                        input_sha256=input_hash.hexdigest(), output_sha256=output_hash.hexdigest(),
                        exit_code=code, exact_fields=True, exact_physical_start_lines=True))
    (root / 'tests/actual-proof-stream-audit.json').write_text(json.dumps(reports, indent=2) + '\n')
    print(source.name, count, 'records;', multiline, 'multiline records; exact replay passed', flush=True)
assert sum(r['manual_external_inputs'] for r in reports) == 3
print('PASS: all proof CSV records preserve fields/physical lines; exactly three manual inputs remain external')
