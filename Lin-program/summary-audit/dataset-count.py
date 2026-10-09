from pathlib import Path
import csv, json, hashlib
from collections import Counter
output=Path(__file__).resolve().parent
root=output.parents[1]/'KIP126-110/KIPBase/.external-count-14875701'
results={}
for group, pattern in [('adams','*_AdamsE2_ss.csv'),('extensions','cofseq*.csv'),('sphere','S0_AdamsE2_ss.csv')]:
    files=sorted((root/'csv').rglob(pattern)); c=Counter(); by_r=Counter(); per_file={}
    for f in files:
        fc=Counter()
        with f.open(encoding='utf-16',newline='') as inp:
            for row in csv.DictReader(inp):
                level=int(row['level']); diff=row['diff']; c['rows']+=1
                known=diff not in ('[NULL]','')
                if level==9000: tag='permanent_marker'
                elif level>9000:
                    tag='known_outgoing_nonzero' if known else ('unknown_outgoing' if diff=='[NULL]' else 'empty_outgoing')
                    if known: by_r[10000-level]+=1
                elif level<1000: tag='known_incoming_nonzero' if known else 'unknown_or_empty_incoming'
                else: tag='other'
                c[tag]+=1; fc[tag]+=1
        per_file[f.name]=dict(fc)
    results[group]={'files':len(files),'counts':dict(c),'known_outgoing_by_r':dict(sorted(by_r.items())),'per_file':per_file}
results['csv_md5']=hashlib.md5((root/'kervaire_csv.rar').read_bytes()).hexdigest()
(output/'dataset-counts.json').write_text(json.dumps(results,indent=2)+'\n')
for k,v in results.items():
    print(k, {x:y for x,y in v.items() if x!='per_file'} if isinstance(v,dict) else v)
