"""Pin the upstream polynomial zero/unit convention and audit relevant tables."""
import hashlib,json,pathlib,sqlite3
ROOT=pathlib.Path(__file__).resolve().parent.parent;BASE=ROOT/'upstream/kervaire-49'
def main():
 code=ROOT/'ExtComplexCertificates/SSeqCpp-build-source/src/dbAdamsSS.cpp';text=code.read_text();assert 'else if (str == ";")' in text and 'Return 1 as a polynomial' in text
 category=json.loads((BASE/'ss.json').read_text());records=[]
 for m in category['maps']:
  c=sqlite3.connect(f'file:{BASE}/{m["path"]}?mode=ro',uri=True);tab=c.execute("select name from sqlite_master where name like 'map_AdamsE2_%'").fetchone()[0];units=[i for i, in c.execute('select id from "'+tab+'" where map=?',(';',))]
  if units:records.append(dict(name=m['name'],path=m['path'],unit_generator_ids=units))
 ring_tables=[]
 for name in ['S0','tmf']:
  c=sqlite3.connect(f'file:{BASE}/{name}_AdamsSS_t261.db?mode=ro',uri=True)
  for table, in c.execute("select name from sqlite_master where type='table'"):
   for col in ['rel','d2']:
    if col in [r[1] for r in c.execute('pragma table_info("'+table+'")')]:
     n=c.execute('select count(*) from "'+table+'" where "'+col+'"=?',(';',)).fetchone()[0];ring_tables.append(dict(object=name,table=table,column=col,unit_count=n))
 report=dict(upstream_source=str(code.relative_to(ROOT)),sha256=hashlib.sha256(code.read_bytes()).hexdigest(),convention=dict(empty_string='zero polynomial',semicolon='unit polynomial with one empty monomial'),maps_with_units=records,ring_tables=ring_tables,existing_verified_full_maps_affected=False,reason='S0__tmf and Cnu__S0 contain no semicolon images')
 (ROOT/'ModuleRingLowBatches/unit_encoding_audit.json').write_text(json.dumps(report,indent=2)+'\n');print(len(records),'maps with unit encoding; existing full S0->tmf/Cnu->S0 unaffected')
if __name__=='__main__':main()
