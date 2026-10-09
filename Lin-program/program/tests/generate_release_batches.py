"""Deterministically partition source JSONL into bounded kernel proof modules."""
import importlib.util
from pathlib import Path
root=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('linear_importer',root/'LinearCertificates/import_jsonl.py')
module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
lines=(root/'release-certificates/appendix-d2-linear.jsonl').read_text().splitlines()
out=root/'release-certificates/lean-batches';out.mkdir(exist_ok=True)
for start in range(0,len(lines),100):
 text=module.generate('\n'.join(lines[start:start+100]))
 text=text.replace('LinearCertificates.Generated','LinearCertificates.Release'+str(start//100))
 (out/f'Batch{start//100:03d}.lean').write_text(text)
print(f'{len(lines)} queries in {(len(lines)+99)//100} batches')
