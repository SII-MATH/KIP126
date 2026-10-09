from pathlib import Path
import json
p=Path(__file__).resolve().parent
ns={'__file__':str(p/'search.py')}
exec(compile((p/'search.py').read_text().split('rows=[]')[0],str(p/'search.py'),'exec'),ns)
rows=[]
for x in json.loads((p.parent/'Stem125HomologyCertificates/coverage.json').read_text())['pages']['2']['centers']:
 if x['h']:continue
 f=x['filtration'];t=f+125
 try:
  b=ns['ensure']('S0',f,t,3);rows.append({'f':f,'status':'complete','m':b['wire']['m'],'h':b['wire']['h']})
 except Exception as e:rows.append({'f':f,'status':'blocked','reason':str(e)})
print(rows)

print(ns['ns']['failures'])
print({k:v for k,v in ns['requested'].items() if v['center'][1]>177})
