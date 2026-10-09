import hashlib,json
from pathlib import Path
H=Path(__file__).resolve().parent
files=sorted(p for p in H.rglob('*') if p.is_file() and p.name!='frozen-source.json' and '__pycache__' not in p.parts)
report=dict(status='frozen_after_serial_compile_and_review',files={str(p.relative_to(H)):hashlib.sha256(p.read_bytes()).hexdigest() for p in files})
(H/'frozen-source.json').write_text(json.dumps(report,indent=2)+'\n');print(len(files),'files frozen')
