from pathlib import Path
r=Path(__file__).resolve().parents[1]
s=r/'BranchReplayCertificates/Products.lean'
assert s.read_text().count('_product :')==7
for name in ['Products','MapColumns','ProductRefutation','MapRefutation','E4Descent']:
 f=r/'BranchReplayCertificates'/f'{name}.lean'
 o=r/'.lake/build/lib/lean/BranchReplayCertificates'/f'{name}.olean'
 assert o.exists() and o.stat().st_mtime>=f.stat().st_mtime,name
print('PASS actual branch columns and conditional constraints compiled; page comparison still required')
