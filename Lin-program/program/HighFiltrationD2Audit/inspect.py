"""Reconstruct finite d2 matrices from complete staircase bases, preserving unknowns."""
import hashlib
import importlib.util
import json
import sqlite3
import subprocess
from pathlib import Path

p=Path(__file__).resolve().parent;root=p.parent
db=root/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
meta=dict(c.execute('select name,value from version'))
dag=json.loads((root/'AggregateC2D4Conditional/dag.json').read_text())
roots=['S0:52,177:d4','S0:55,180:d2','S0:56,181:d2','S0:54,180:d3']
seen=set()
def visit(key):
    if key in seen:return
    seen.add(key)
    for predecessor in dag['blocks'][key]['predecessors']:visit(predecessor)
for key in roots:visit(key)
spec=importlib.util.spec_from_file_location('wire_audit',root/'Row3147MapSearch/review.py')
audit=importlib.util.module_from_spec(spec);spec.loader.exec_module(audit)


def basis(s,t):
    if t>meta['t_max']:raise ValueError('outside E2 basis coverage')
    return c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()


def vector(raw,n):
    if raw is None or raw in ['[NULL]','?','-1']:raise ValueError('unknown coordinate vector')
    ids=list(map(int,raw.split(','))) if raw else []
    if ids!=sorted(set(ids)) or any(i<0 or i>=n for i in ids):raise ValueError('invalid coordinate vector')
    return [int(i in ids) for i in range(n)]


def inverse_columns(columns):
    n=len(columns)
    if any(len(col)!=n for col in columns):raise ValueError('staircase is not a full square basis')
    rows=[[columns[j][i] for j in range(n)]+[int(i==j) for j in range(n)] for i in range(n)]
    for j in range(n):
        pivot=next((i for i in range(j,n) if rows[i][j]),None)
        if pivot is None:raise ValueError('staircase basis singular')
        rows[j],rows[pivot]=rows[pivot],rows[j]
        for i in range(n):
            if i!=j and rows[i][j]:rows[i]=[x^y for x,y in zip(rows[i],rows[j])]
    return [row[n:] for row in rows]


matrices={};failures={}
def reconstruct(s,t):
    if (s,t) in matrices:return matrices[s,t]
    old=basis(s,t);target=basis(s+2,t+1)
    m,k=len(old),len(target)
    staircase=c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(s,t)).fetchall()
    if len(staircase)!=m:raise ValueError('staircase does not cover the full E2 basis')
    columns=[vector(row[1],m) for row in staircase]
    inverse=inverse_columns(columns)
    images=[];evidence=[]
    for rid,base,diff,level in staircase:
        if level==9998:
            image=vector(diff,k);reason='stored_outgoing_d2'
        elif 2<=level<5000:
            image=[0]*k;reason='incoming_boundary_d2_cycle_prefix'
        elif 9000<level<9998:
            image=[0]*k;reason='later_outgoing_or_survival_d2_cycle_prefix'
        elif k==0:
            image=[];reason='complete_empty_E2_target'
        else:raise ValueError(f'unknown staircase d2 row{rid} level{level}')
        images.append(image);evidence.append(dict(row=[rid,base,diff,level],kind=reason))
    matrix=[sum(images[q][i]*inverse[q][j] for q in range(m))%2 for i in range(k) for j in range(m)]
    known=0
    for j,(_,_,raw) in enumerate(old):
        if raw is not None:
            expected=vector(raw,k);actual=[matrix[i*m+j] for i in range(k)]
            if expected!=actual:raise ValueError(f'known raw d2 conflict basis{old[j][0]}')
            known+=1
    result=dict(degree=[s,t],target_degree=[s+2,t+1],source_basis=old,target_basis=target,
                staircase=staircase,basis_columns=columns,inverse_rows=inverse,
                staircase_images=images,entries=matrix,rows=k,cols=m,evidence=evidence,
                raw_known_columns=known,raw_unknown_columns=m-known,
                raw_d2_metadata_covers=t<=meta['d2_t_max'])
    matrices[s,t]=result
    return result


comparisons=[]
for key in sorted(seen):
    block=dag['blocks'][key]
    if block['page']!=2:continue
    s,t=block['center']
    try:
        outgoing=reconstruct(s,t);incoming=reconstruct(s-2,t-1)
        k,m,n=outgoing['rows'],outgoing['cols'],incoming['cols']
        assert incoming['rows']==m
        bits=lambda a:''.join(map(str,a)) or '-'
        proc=subprocess.run([str(root/'PageTransitionCertificates/page-transition-export'),str(k),str(m),str(n),
                             bits(outgoing['entries']),bits(incoming['entries'])],capture_output=True,text=True)
        if proc.returncode:raise ValueError(proc.stderr.strip())
        w=json.loads(proc.stdout);audit.check_wire(w)
        comparisons.append(dict(key=key,wire=w))
    except (ValueError,AssertionError) as error:failures[key]=str(error)
report=dict(database_sha256=hashlib.sha256(db.read_bytes()).hexdigest(),metadata=meta,
            event_roots=roots,dependency_blocks=sorted(seen),complete_d2_comparisons=comparisons,
            reconstructed_degrees=[matrices[k] for k in sorted(matrices)],failures=failures,
            trust='staircase relation and prefix semantics are imported finite data, not raw E2.d2 extension or Adams topology')
(p/'report.json').write_text(json.dumps(report,indent=2)+'\n')
print('d2 comparisons',len(comparisons),'degrees',len(matrices),'unknown raw columns',sum(x['raw_unknown_columns'] for x in matrices.values()),'failures',failures)
