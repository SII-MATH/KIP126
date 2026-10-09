"""Independent bounded union coverage assertion without recompilation."""
import hashlib,json,pathlib,re
ROOT=pathlib.Path(__file__).resolve().parent.parent

def main():
 datasets=[];fingerprint={};columns=0;maps=set()
 for folder,expected in [('ModuleLowMapBatches',2886),('ModuleLowMapSupplement',199)]:
  p=ROOT/folder;a=json.loads((p/'generation_audit.json').read_text());logs=json.loads((p/'compile_audit.json').read_text());assert all(r['exit_code']==0 for r in logs)
  keys=set();theorems=0
  for f in p.glob('Batch*.lean'):
   theorems+=len(re.findall(r'^theorem ',f.read_text(),re.M));fingerprint[str(f.relative_to(ROOT))]=hashlib.sha256(f.read_bytes()).hexdigest()
  for m in a['records']:
   maps.add(m['name'])
   for block in m['blocks']:
    if block['status']!='generated_unverified':continue
    key=(m['name'],block['s'],block['t']);assert key not in keys;keys.add(key);columns+=len(block['source_ids'])
    f=ROOT/block['certificate'];raw=f.read_bytes();assert b'4294967295' not in raw;fingerprint[block['certificate']]=hashlib.sha256(raw).hexdigest()
  assert len(keys)==theorems==expected;datasets.append((a,keys))
 base,old=datasets[0];supp,new=datasets[1];missing={(m['name'],b['s'],b['t']) for m in base['records'] for b in m['blocks'] if b['status']=='unresolved'}
 assert missing==new and not old&new and len(old|new)==3085 and len(maps)==135
 current=dict(status='all_requested_low_degree_blocks_kernel_verified',maps=135,source_t_max=12,blocks=3085,source_columns=columns,batches=31,unresolved=0,certificate_and_lean_sha256=fingerprint,scope='same-S0 module-to-module direct maps only')
 (ROOT/'ModuleLowMapSupplement/current_union_audit.json').write_text(json.dumps(current,indent=2,sort_keys=True)+'\n');print('PASS 135 maps; 3085 blocks;',columns,'source columns; 31 kernel batches; 0 remaining')
if __name__=='__main__':main()
