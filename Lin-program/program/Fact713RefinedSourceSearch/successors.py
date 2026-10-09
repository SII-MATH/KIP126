"""Separate in-memory complete-successor scan; no old snapshot is rewritten."""
from pathlib import Path
import hashlib,json,itertools
HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
saved=ROOT/'Fact713E12Search/successor-search.json';snap=json.loads(saved.read_text())
script=ROOT/'Fact713E12Search/successor_search.py'
context={'__file__':str(script)}
exec(compile(script.read_text().split('\nresults={}')[0],str(script),'exec'),context)
ns=context['ns'];ensure=context['ensure'];ns['cache'].update(snap['comparisons']);ns['failures'].clear()
results=[]
for e in snap['unknowns']:
 if not e['resolution'].startswith('unresolved'):continue
 s,t=e['source'];r=e['page'];target=(s+r,t+r-1);nexttarget=(s+2*r,t+2*r-2)
 result=dict(key=e['key'],source=[s,t],page=r,row=e['row'],baseline_resolution=e['resolution'])
 try:
  ensure('S0',*target,r-1);ensure('S0',*nexttarget,r-1)
  dim=ns['dim']('S0',*target,r);codim=ns['dim']('S0',*nexttarget,r);uses=[]
  M=ns['matrix']('S0',*target,r,uses)
  candidates=[list(v) for v in itertools.product([0,1],repeat=dim) if all(sum(x*y for x,y in zip(row,v))%2==0 for row in M)]
  result.update(status='complete_successor',domain=dim,codomain=codim,matrix=M,kernel_candidates=candidates,uses=uses,
                forced_zero=len(candidates)==1)
 except (ValueError,AssertionError,KeyError) as ex:result.update(status='blocked_successor',reason=str(ex))
 results.append(result)
assert all(ns['cache'][k]==v for k,v in snap['comparisons'].items())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
report=dict(baseline_available=snap['available_comparisons'],baseline_blocked=snap['unresolved_comparisons'],
  tested_unknown_row_pages=len(results),results=results,
  additional_comparisons={k:v for k,v in ns['cache'].items() if k not in snap['comparisons']},
  input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [saved,script,Path(__file__)]},
  scope='complete target and successor predecessor checks and whole actual finite successor kernel; conditional source meanings remain explicit')
(HERE/'successors.json').write_text(json.dumps(report,indent=2)+'\n')
for r in results:print(r['key'],r['status'],r.get('domain'),r.get('codomain'),r.get('kernel_candidates'),r.get('reason'))
