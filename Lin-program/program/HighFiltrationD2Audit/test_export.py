"""Exercise C++ rejection and exact parity with all 25 Lean-imported wires."""
import json
from pathlib import Path
import subprocess
import tempfile

HERE = Path(__file__).resolve().parent
EXE = HERE/'d2-basis-export'
report = json.loads((HERE/'report.json').read_text())
bitstr = lambda values: ''.join('1' if x else '0' for x in values) or '-'
lines = []
expected = b''
for entry in report['reconstructed_degrees']:
    s,t = entry['degree']
    path = HERE/'wire'/f'd{s}_{t}.json'
    wire = json.loads(path.read_text())
    args = [str(wire['rows']),str(wire['cols']),bitstr(wire['basis']),bitstr(wire['images'])]
    proc = subprocess.run([str(EXE),*args],capture_output=True)
    assert proc.returncode == 0 and proc.stdout == path.read_bytes(), (s,t,proc.stderr)
    lines.append(' '.join(args))
    expected += path.read_bytes()
with tempfile.TemporaryDirectory(prefix='d2-basis-',dir=HERE) as directory:
    batch = Path(directory)/'batch.txt'
    batch.write_text('\n'.join(lines)+'\n')
    proc = subprocess.run([str(EXE),'--batch',str(batch)],capture_output=True)
    assert proc.returncode == 0 and proc.stdout == expected
    batch.write_text(lines[0]+'\n1 1 0 1\n')
    proc = subprocess.run([str(EXE),'--batch',str(batch)],capture_output=True,text=True)
    assert proc.returncode != 0 and 'line 2: singular basis' in proc.stderr
    batch.write_text('')
    proc = subprocess.run([str(EXE),'--batch',str(batch)],capture_output=True,text=True)
    assert proc.returncode != 0 and 'empty batch' in proc.stderr
bad = [([], 'usage'),(['1','1','0','1'],'singular basis'),
       (['1','2','1010','11'],'singular basis'),
       (['1','1','11','1'],'basis:'),(['1','1','1','-'],'images:'),
       (['1','1','?','1'],'basis:'),(['1','1','1','[NULL]'],'images:'),
       (['-1','1','1','1'],'dimension'),(['257','1','1','1'],'limit'),
       (['1','1','1','1','extra'],'usage')]
for args,error in bad:
    proc = subprocess.run([str(EXE),*args],capture_output=True,text=True)
    assert proc.returncode != 0 and error in proc.stderr and not proc.stdout, (args,proc)
result = dict(success=True,single_certificates=25,batch_certificates=25,
              malformed_cases=len(bad)+2,canonical_bytes_match=True)
(HERE/'export-test.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result))
