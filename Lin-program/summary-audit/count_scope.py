import csv,json,re,hashlib
from pathlib import Path
from collections import Counter
ROOT=Path(__file__).resolve().parent
DATA=ROOT.parents[1]/'KIP126-110/KIPBase/.external-count-14875701/csv/kervaire_csv'
def rows(f):
 with f.open(encoding='utf-16',newline='') as inp: yield from csv.DictReader(inp)
report={}
for suffix in ['generators','relations','basis','ss']:
 files=sorted(DATA.glob('*_AdamsE2_'+suffix+'.csv'))
 report[suffix]={'files':len(files),'rows':sum(sum(1 for _ in rows(f)) for f in files)}
for name,pat in [('maps','map*.csv'),('cofseqs','cofseq*.csv')]:
 files=sorted(DATA.glob(pat));report[name]={'files':len(files),'rows':sum(sum(1 for _ in rows(f)) for f in files)}
report['spectra']={}
for name in ['S0','Cnu','tmf']:
 obj={}
 for suffix in ['generators','relations','basis','ss']:
  obj[suffix]=sum(1 for _ in rows(DATA/(name+'_AdamsE2_'+suffix+'.csv')))
 report['spectra'][name]=obj

def states(rs):
 c=Counter();byr=Counter()
 for row in rs:
  c['rows']+=1;l=int(row['level']);d=row['diff']
  if l==9000:k='permanent'
  elif l>9000:
   k='known_out' if d not in ('','[NULL]') else 'unknown_out'
   if k=='known_out':byr[10000-l]+=1
  else:k='known_in' if d not in ('','[NULL]') else 'unknown_in'
  c[k]+=1
 return {'counts':dict(c),'known_out_by_r':dict(sorted(byr.items()))}
report['windows']={}
for name,lo,hi,sl,sh in [('S0',122,127,0,25),('Cnu',126,126,9,14),('S0',125,125,0,25)]:
 label=f'{name}:stem={lo}..{hi},s={sl}..{sh}'
 sel=lambda r:lo<=int(r['stem'])<=hi and sl<=int(r['s'])<=sh
 res=states(r for r in rows(DATA/(name+'_AdamsE2_ss.csv')) if sel(r))
 res['E2_basis_rows']=sum(1 for r in rows(DATA/(name+'_AdamsE2_basis.csv')) if sel(r))
 report['windows'][label]=res
report['paper_tables']=[]
for tab in json.loads((ROOT/'paper-tables.json').read_text()):
 c=Counter(); rr=[]
 for row in tab['rows'][1:]:
  if len(row)==2: c['empty_degree_rows']+=1;continue
  assert len(row) in [3,4],row
  x,dr,y=row[-3:];c['element_rows']+=1
  if 'Permanent' in y:k='permanent'
  elif '?' in y:k='unknown'
  elif 'possibly' in y:k='ambiguous'
  elif '^{-1}' in dr:k='known_in'
  elif dr:k='known_out'
  else:raise ValueError(row)
  c[k]+=1;rr.append({'element':x,'d':dr,'value':y,'kind':k})
 report['paper_tables'].append({'id':tab['id'],'caption':tab['caption'],'counts':dict(c)})
 (ROOT/(tab['id']+'-rows.json')).write_text(json.dumps(rr,indent=2,ensure_ascii=False)+'\n')
report['empty_basis_files']=[f.name for f in sorted(DATA.glob('*_basis.csv')) if f.stat().st_size==0]
all125=[r for r in rows(DATA/'S0_AdamsE2_basis.csv') if r['stem']=='125']
report['stem125_all']={'basis_rows':len(all125),'s_min':min(int(r['s']) for r in all125),'s_max':max(int(r['s']) for r in all125)}
report['source_md5']={name:hashlib.md5((DATA.parent.parent/name).read_bytes()).hexdigest() for name in ['kervaire_csv.rar','proofs.db.rar']}
report['paper_sha256']={name:hashlib.sha256((ROOT/name).read_bytes()).hexdigest() for name in ['kervaire-v2.html','machine-v2.html']}
(ROOT/'scope-counts.json').write_text(json.dumps(report,indent=2,ensure_ascii=False)+'\n')
print(json.dumps(report,indent=2,ensure_ascii=False))
