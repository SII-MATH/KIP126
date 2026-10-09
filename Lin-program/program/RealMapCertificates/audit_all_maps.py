"""Read-only readiness census of exactly the 180 direct maps in ss.json.
Presence and parseability are not mathematical verification.
"""
import collections,hashlib,json,pathlib,sqlite3
HERE=pathlib.Path(__file__).resolve().parent
BASE=HERE.parent/'upstream/kervaire-49'
def qi(name):return '"'+name.replace('"','""')+'"'
def connect(path):return sqlite3.connect(f'file:{path}?mode=ro',uri=True)
def unknown(raw):return raw is None or any(tag in str(raw).lower() for tag in ['?','null','unknown','possibly'])
def table_report(c,table,column):
 names={r[0] for r in c.execute("select name from sqlite_master where type='table'")}
 if table not in names:return dict(present=False)
 columns=[r[1] for r in c.execute('pragma table_info('+qi(table)+')')]
 if column not in columns:return dict(present=True,rows=c.execute('select count(*) from '+qi(table)).fetchone()[0],column_missing=column)
 vals=[r[0] for r in c.execute('select '+qi(column)+' from '+qi(table))]
 return dict(present=True,rows=len(vals),sql_null=sum(v is None for v in vals),unknown_marker=sum(v is not None and unknown(v) for v in vals),numeric_sentinel=sum(v is not None and '4294967295' in str(v).replace(';',',').split(',') for v in vals),empty_strings=sum(v=='' for v in vals))
def main():
 raw=(BASE/'ss.json').read_bytes();category=json.loads(raw);objects={r['name']:dict(r,kind=kind) for kind in ['rings','modules'] for r in category[kind]}
 object_reports={}
 for name,obj in objects.items():
  path=BASE/obj['path'];report=dict(path=obj['path'],present=path.exists(),kind=obj['kind'],over=obj.get('over'))
  if path.exists():
   c=connect(path)
   report['basis']=table_report(c,name+'_AdamsE2_basis','mon');report['relations']=table_report(c,name+'_AdamsE2_relations','rel');report['generators']=table_report(c,name+'_AdamsE2_generators','id')
   cols=[r[1] for r in c.execute('pragma table_info('+qi(name+'_AdamsE2_basis')+')')]
   report['basis_d2']=table_report(c,name+'_AdamsE2_basis','d2') if 'd2' in cols else dict(present=False,reason='basis table has no d2 column; staircase is not silently completed')
   c.close()
  object_reports[name]=report
 records=[]
 for index,entry in enumerate(category['maps'],1):
  source=objects.get(entry['from']);target=objects.get(entry['to']);path=BASE/entry['path'];issues=[]
  r=dict(ordinal=index,name=entry['name'],source=entry['from'],target=entry['to'],path=entry['path'],present=path.exists(),t_max=entry.get('t_max'),suspension=entry.get('sus',0),filtration=entry.get('fil',0),source_basis=object_reports.get(entry['from'],{}).get('basis'),target_basis=object_reports.get(entry['to'],{}).get('basis'),target_relations=object_reports.get(entry['to'],{}).get('relations'))
  if path.exists():
   c=connect(path);tables=[x[0] for x in c.execute("select name from sqlite_master where type='table' and name like 'map_AdamsE2_%'")];r['map_tables']=tables
   if len(tables)!=1:issues.append('expected exactly one map image table')
   else:
    tab=tables[0];r['images']=table_report(c,tab,'map');ids={x[0] for x in c.execute('select id from '+qi(tab))}
    sc=connect(BASE/source['path']);srcids={x[0] for x in sc.execute('select id from '+qi(entry['from']+'_AdamsE2_generators'))};sc.close()
    r['missing_source_generator_ids']=sorted(srcids-ids);r['image_ids_not_source_generators']=sorted(ids-srcids)
    if r['images'].get('sql_null') or r['images'].get('unknown_marker') or r['images'].get('numeric_sentinel'):issues.append('unknown generator image values')
    if srcids-ids:issues.append('not all source generators have images; truncation must be respected')
   c.close()
  else:issues.append('missing map database')
  ring_map=source and target and source['kind']=='rings' and target['kind']=='rings'
  r['current_exporter_compatible_encoding']=bool(ring_map)
  if not ring_map:issues.append('requires module-linear substitution, trailing module generator encoding, and suspension/filtration handling; ring exporter cannot be reused blindly')
  r['verified_coverage']=dict(status='not_verified_by_RealMapCertificates')
  if entry['name']=='S0__tmf':
   summary=json.loads((HERE/'verification_summary.json').read_text())
   r['verified_coverage']=dict(status='all_stored_source_basis_t_le_261',column_kernel_theorems=summary['kernel_theorems'],source_basis_images=summary['source_basis_images'],matrices=summary['complete_degree_matrices'],whole_matrix_runtime_checks=8719,whole_matrix_kernel_degrees=[[1,1],[2,4],[21,147],[25,150]],topological_realization=False)
  r['issues']=issues;records.append(r)
 result=dict(scope='exactly ss.json maps; maps_v2 excluded',inventory_sha256=hashlib.sha256(raw).hexdigest(),direct_maps=len(records),derived_maps_excluded=len(category['maps_v2']),extra_map_db_files_not_used=len(list(BASE.glob('map_AdamsSS*.db')))-len({r['path'] for r in records}),objects=object_reports,maps=records)
 (HERE/'all_maps_readiness.json').write_text(json.dumps(result,indent=2)+'\n')
 lines=['# Direct-map data readiness','',f'Exactly {len(records)} direct maps from ss.json are audited; {len(category["maps_v2"])} derived maps are excluded. Data presence is not a proof.','',f'Present databases: {sum(r["present"] for r in records)}. Ring-encoding compatible with the current exporter: {sum(r["current_exporter_compatible_encoding"] for r in records)}. Verified by this family: S0__tmf only.','','Numeric 4294967295 module sentinels are counted as unknown alongside textual markers in the table. Empty map strings retain the database zero-polynomial convention. SQL NULL and explicit unknown markers are counted separately and never converted to zero. Missing generator IDs can reflect truncation; each proposed source basis image must check all used IDs before export. Module targets need module relations as well as coefficient-ring relations, and source modules require module-linear rather than ring-homomorphism substitution.','','The current S0→tmf exporter is deliberately not generalized by simply changing names. Its source monomial parser expects pairs of generator/exponent integers; module monomials carry a trailing module-generator ID. Reusing that parser would produce incorrect semantics.','','| Map | Images | NULL/unknown | Missing generator IDs | Encoding | Verified |','|---|---:|---:|---:|---|---|']
 for r in records:
  im=r.get('images',{});lines.append(f'| {r["name"]} | {im.get("rows","missing")} | {im.get("sql_null",0)}/{im.get("unknown_marker",0)+im.get("numeric_sentinel",0)} | {len(r.get("missing_source_generator_ids",[]))} | {"ring" if r["current_exporter_compatible_encoding"] else "module"} | {"yes, finite algebra" if r["name"]=="S0__tmf" else "no"} |')
 lines+=['','Reproduce: `python3 program/RealMapCertificates/audit_all_maps.py` from repository root. JSON contains per-object source basis, target relations, d2-column availability and detailed per-map issues. No certificates are generated or existing proofs rerun by this audit.']
 (HERE/'all_maps_readiness.md').write_text('\n'.join(lines)+'\n')
 print(len(records),'maps;',sum(r['present'] for r in records),'present;',sum(r['current_exporter_compatible_encoding'] for r in records),'ring-compatible')
if __name__=='__main__':main()
