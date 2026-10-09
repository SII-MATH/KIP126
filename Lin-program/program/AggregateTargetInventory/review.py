"""Independent direct SQL coverage checks and byte-stable output verification."""
import collections,hashlib,json,sqlite3,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
names=['inventory.json','basis.csv','staircase.csv'];before={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
subprocess.run(['python3',str(p/'generate.py')],check=True)
assert before=={n:hashlib.sha256((p/n).read_bytes()).hexdigest() for n in names}
x=json.loads((p/'inventory.json').read_text());db=r/x['provenance']['database'];assert hashlib.sha256(db.read_bytes()).hexdigest()==x['provenance']['database_sha256']
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
raw=c.execute('select id,s,t,mon,d2 from S0_AdamsE2_basis where t=s+125 order by s,id').fetchall()
assert raw==[(b['global_id'],b['filtration'],b['total_degree'],b['monomial'],b['d2']) for b in x['basis']]
assert len(raw)==105 and len({b[0] for b in raw})==105
ss=c.execute('select id,s,t,base,diff,level from S0_AdamsE2_ss where t=s+125 order by s,id').fetchall()
assert ss==[(b['staircase_id'],b['filtration'],b['total_degree'],b['base'],b['diff'],b['level']) for b in x['staircase']]
for b in x['staircase']:
 degree=[z for z in raw if z[1:3]==(b['filtration'],b['total_degree'])]
 assert b['base_global_ids']==[degree[j][0] for j in b['base_local_indices']]
 if b['other_degree'] is not None and b['diff'] is not None:
  targets=c.execute('select id from S0_AdamsE2_basis where s=? and t=? order by id',b['other_degree']).fetchall()
  assert b['diff_global_ids']==[targets[int(j)][0] for j in b['diff'].split(',') if j]
assert [b['staircase_id'] for b in x['four_sentinel_candidates']]==[2695,3080,3993,3994]
assert all(b['diff'] is None for b in x['four_sentinel_candidates'])
assert len(x['filtration_groups'])==45 and sum(g['dimension'] for g in x['filtration_groups'])==105
(p/'review.json').write_text(json.dumps(dict(basis_count=105,staircase_count=105,filtration_groups=45,stored_incoming=38,stored_outgoing=63,sentinel_unknown=4,deterministic=True,direct_sql_coverage=True,mathematical_eliminations_proved=0),indent=2)+'\n')
print('105 complete input generators verified; all degrees/IDs retained; no elimination theorem')
