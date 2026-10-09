"""Stream exact local proof events and context; recorded data remain search clues."""
import collections
import csv
import hashlib
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
selected={('S0','20','140'),('CW_eta_nu','19','139'),('CW_eta_nu_sigma','19','139'),
    ('S0','16','137'),('S0','11','133')}
matches=[];contexts=[];hashes={}
for path in sorted((ROOT/'upstream/proofs_csv').glob('*.csv')):
    digest=hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda:stream.read(1048576),b''):digest.update(chunk)
    hashes[path.name]=digest.hexdigest()
    preceding=collections.deque(maxlen=5);following=0
    with path.open(newline='') as stream:
        reader=csv.DictReader(stream)
        for row in reader:
            current=dict(file=path.name,line=reader.line_num,**row)
            chosen=(row.get('name'),row.get('s'),row.get('t')) in selected
            if chosen:
                matches.append(current)
                contexts.extend(preceding)
                following=5
            if following:
                contexts.append(current);following-=1
            preceding.append(current)
unique={(x['file'],x['line']):x for x in contexts}
report=dict(status='untrusted_recorded_rule_search',matches=matches,contexts=list(unique.values()),input_sha256=hashes)
(HERE/'proof-events.json').write_text(json.dumps(report,indent=2)+'\n')
print('matches',len(matches),'context rows',len(unique))
for row in matches:
    if (row['name'],row['s'],row['t']) in selected and (row['depth']=='0' or row['r']=='3'):
        print({k:row[k] for k in ['file','line','id','depth','reason','name','s','t','r','x','dx','info']})
