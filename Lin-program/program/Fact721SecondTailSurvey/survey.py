"""Read-only untrusted candidate survey; creates no Lean theorem or object."""
import hashlib
import importlib.util
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
helper=importlib.util.module_from_spec(spec);spec.loader.exec_module(helper)
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True);meta=helper.metadata(c)
records={}
def inspect(d):
    key=f'{d[0]},{d[1]}'
    if key in records:return records[key]
    b=dict(degree=d,basis=list(c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',d)),
        staircase=list(c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',d)))
    try:
        comparison=helper.comparison(c,'S0',*d,meta)
        b['candidate_complete_d2']=comparison
    except ValueError as error:
        b['complete_d2_unavailable']=str(error)
    records[key]=b
    return b
for r in range(18,50):inspect((12+r,133+r))
neighborhoods={
    'd20':[(32,153),(35,155)],
    'd23':[(35,156),(32,154),(38,158),(39,159),(36,157),(42,161)],
    'd26':[(38,159),(35,157),(41,161),(34,156),(31,154),(37,158)],
    'd29':[(41,162),(38,160),(44,164),(37,159),(34,157),(40,161)],
    'd32':[(44,165),(41,163),(47,167),(48,168),(45,166),(51,170)],
    'd35':[(47,168),(50,170)],
    'd38':[(50,171),(47,169),(53,173),(56,175),(46,168),(43,166),(49,170)]}
for degrees in neighborhoods.values():
    for d in degrees:inspect(d)
empty_window=[]
for r in range(50,129):
    d=(12+r,133+r)
    rows=list(c.execute('select id,mon from S0_AdamsE2_basis where s=? and t=?',d))
    assert not rows
    empty_window.append(dict(page=r,degree=d))
report=dict(status='untrusted_candidate_survey_only',database_sha256=hashlib.sha256(db.read_bytes()).hexdigest(),
    metadata=meta,records=records,neighborhoods=neighborhoods,empty_E2_inside_window=empty_window,
    next_unknown_targets=[dict(page=48,degree=[60,181],row=7160),dict(page=49,degree=[61,182],row=7245)],
    limitations='No new Lean proof. NULL never means zero. Rows beyond t_max=261 cannot be inferred empty from this database.')
(HERE/'survey.json').write_text(json.dumps(report,indent=2)+'\n')
print(len(records),'degrees;',len(empty_window),'empty targets inside finite coverage')
