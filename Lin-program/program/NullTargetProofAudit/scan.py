"""Stream all proof rows, retaining relevant degrees and branch anchors exactly."""
import collections
import csv
import hashlib
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
DEGREES={(9,134):'source2696',(11,136):'source2852',(16,140):'common_target'}
events={'source2696':7,'source2852':5}
result=[];files=[];counts=collections.Counter();anchors={};previous=collections.deque(maxlen=5)
for path in sorted((ROOT/'upstream/proofs_csv').glob('proofs-part*.csv')):
    digest=hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda:stream.read(1048576),b''):digest.update(chunk)
    read=0;selected=0
    with path.open(newline='',encoding='utf-8-sig') as stream:
        reader=csv.DictReader(stream)
        while True:
            start=reader.line_num+1
            try:row=next(reader)
            except StopIteration:break
            read+=1
            entry=dict(file=path.name,start_line=start,end_line=reader.line_num,fields=dict(row))
            depth=int(row['depth'])
            if row['reason'] in ['T','TI']:
                anchors[depth]=entry
                for d in list(anchors):
                    if d>depth:del anchors[d]
            degree=(int(row['s']),int(row['t']))
            direct=row['name']=='S0' and degree in DEGREES
            # Raw info may reference the class by bidegree; retain it for source-rule review.
            info_ref=any(token in row['info'] for token in ['(125, 9)','(125,9)','(125, 11)','(125,11)','(124, 16)','(124,16)']) and 'S0' in row['info']
            if direct or info_ref:
                entry.update(match='degree' if direct else 'info_text',degree_role=DEGREES.get(degree),
                    active_trial=dict(anchors[depth]) if depth in anchors and depth else None,
                    previous_ids=[x['fields']['id'] for x in previous])
                result.append(entry);selected+=1
                counts[f"{entry['degree_role']}:{row['reason']}:depth{depth}"]+=1
            previous.append(entry)
    files.append(dict(file=path.name,sha256=digest.hexdigest(),rows=read,selected=selected,physical_lines=reader.line_num))
    print(path.name,read,'rows',selected,'selected',flush=True)
(HERE/'matches.jsonl').write_text(''.join(json.dumps(x,sort_keys=True)+'\n' for x in result))
summary=dict(files=files,total_rows=sum(x['rows'] for x in files),selected=len(result),counts=dict(counts),
    scope='All S0 proof rows at either source degree or the common target degree, plus exact listed info-text references. Trial anchors are chronology context, not a proved logical scope reconstruction.',
    scanner_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest())
(HERE/'scan.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps(summary,indent=2))
