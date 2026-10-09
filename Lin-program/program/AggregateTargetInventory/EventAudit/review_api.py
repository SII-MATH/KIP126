import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;f=p/'Certificates.lean';h=hashlib.sha256(f.read_bytes()).hexdigest();subprocess.run(['python3',str(p/'generate_api.py')],check=True);assert h==hashlib.sha256(f.read_bytes()).hexdigest();t=f.read_text();assert t.count('theorem certificate')==87 and t.count('def input')==87 and t.count('theorem path')==174
assert 'by decide' not in t and 'native_decide' not in t
print('87 input/certificate pairs,174 paths reuse checked theorems; no duplicate decision checks')
