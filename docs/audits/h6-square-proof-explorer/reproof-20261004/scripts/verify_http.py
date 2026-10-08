#!/usr/bin/env python3
from pathlib import Path
from datetime import datetime,timezone
import subprocess,urllib.request,json
p=Path(__file__).resolve().parents[1]
proc=subprocess.Popen(['python3',str(p/'serve.py'),'--port','18770'],stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True)
checks=[]
opener=urllib.request.build_opener(urllib.request.ProxyHandler({}))
try:
 url=proc.stdout.readline().strip()
 if not url.startswith('http://127.0.0.1:18770/'):
  checks.append({'name':'server start','passed':False,'error':proc.stderr.read()})
 else:
  paths=[url,url+'app.js',url+'vendor/katex.js','http://127.0.0.1:18770/MainPaper/main.tex','http://127.0.0.1:18770/KIP126/Interface/Challenge/Challenge2.lean']
  for u in paths:
   try:
    with opener.open(u,timeout=5) as r:checks.append({'url':u,'passed':r.status==200,'status':r.status,'bytes':len(r.read())})
   except Exception as e:checks.append({'url':u,'passed':False,'error':str(e)})
finally:
 proc.terminate();proc.wait(timeout=5)
out={'executed_at':datetime.now(timezone.utc).isoformat(),'server_command':proc.args,'loopback_only':True,'checks':checks,'passed':all(x['passed'] for x in checks)}
(p/'records/http-validation.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
print(json.dumps(out,ensure_ascii=False))
raise SystemExit(0 if out['passed'] else 1)
