"""Generate homology separators with the untrusted C++ linear producer.
Input JSONL: incoming/outgoing WireMatrix and representative; output adds separator.
Lean separately checks dimensions, complex, cycle and nonboundary conditions.
"""
import json
from pathlib import Path
import subprocess
import sys
root=Path(__file__).resolve().parents[1]
for line_no,line in enumerate(sys.stdin,1):
 try:
  w=json.loads(line);a=w['incoming'];m,n=a['rows'],a['cols'];x=w['representative']
  if len(a['entries'])!=m*n or len(x)!=m:raise ValueError('dimension mismatch')
  if any(type(b)is not bool for b in a['entries']+x):raise ValueError('expected bits')
  raw=' '.join(map(str,[m,n,*map(int,a['entries']),*map(int,x)]))+'\n'
  r=subprocess.run([str(root/'LinearCertificates/linear_export')],input=raw,text=True,capture_output=True,check=True)
  c=json.loads(r.stdout)
  if c['kind']!='nonimage':raise ValueError('representative is a boundary')
  w['separator']=c['witness']
  print(json.dumps(w,sort_keys=True,separators=(',',':')))
 except Exception as e:raise SystemExit(f'line {line_no}: {e}')
