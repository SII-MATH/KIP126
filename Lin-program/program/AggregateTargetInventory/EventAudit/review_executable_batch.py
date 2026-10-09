import hashlib,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;names=[p/f'ExecutableBatch{i}.lean' for i in range(9)]+[p/'ExecutableAll.lean',p/'executable-batch-audit.json']+sorted((p/'executable-batch').glob('*.json'));before={str(n):hashlib.sha256(n.read_bytes()).hexdigest() for n in names}
subprocess.run(['python3',str(p/'generate_executable_batch.py')],check=True)
assert before=={str(n):hashlib.sha256(n.read_bytes()).hexdigest() for n in names}
assert sum((p/f'ExecutableBatch{i}.lean').read_text().count('_valid :') for i in range(9))==87
print('87 C++ output imports/lin_cert theorem sites;full input provenance and byte reproducibility checked')
