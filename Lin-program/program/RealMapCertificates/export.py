"""Actual S0->tmf algebra-map substitution and target-basis reduction.
No absent generator, basis coordinate or differential is interpreted as zero.
"""
import argparse,collections,hashlib,json,pathlib,sqlite3
HERE=pathlib.Path(__file__).resolve().parent
ROOT=HERE.parent
BASE=ROOT/'upstream/kervaire-49'
def connection(name):return sqlite3.connect(f'file:{BASE/name}?mode=ro',uri=True)
def mono(raw):
    if raw=='':return ()
    cells=list(map(int,raw.split(',')))
    if len(cells)%2 or any(e<0 for e in cells[1::2]) or any(g<0 or g==4294967295 for g in cells[::2]):raise ValueError('invalid ring monomial')
    return tuple(sorted(g for g,e in zip(cells[::2],cells[1::2]) for _ in range(e)))
def poly(raw):
    if raw is None:raise ValueError('unknown polynomial')
    return set() if raw=='' else {()} if raw==';' else parity(mono(m) for m in raw.split(';'))
def parity(xs):return {m for m,n in collections.Counter(xs).items() if n%2}
def multiply(a,b):return parity(tuple(sorted(x+y)) for x in a for y in b)
def divide(a,b):
    ca,cb=collections.Counter(a),collections.Counter(b)
    return None if any(ca[g]<e for g,e in cb.items()) else tuple(sorted((ca-cb).elements()))
def run(max_t=40):
    src=connection('S0_AdamsSS_t261.db');tgt=connection('tmf_AdamsSS_t261.db');mp=connection('map_AdamsSS_S0_to_tmf_t261.db')
    maps={i:poly(raw) for i,raw in mp.execute('select id,map from map_AdamsE2_S0_to_tmf')}
    source=list(src.execute('select id,mon,s,t from S0_AdamsE2_basis order by id'))
    target=collections.defaultdict(list)
    for i,raw,s,t in tgt.execute('select id,mon,s,t from tmf_AdamsE2_basis order by id'):target[s,t].append((i,mono(raw)))
    rels=[(i,[mono(x) for x in raw.split(';')],s,t) for i,raw,s,t in tgt.execute('select rowid,rel,s,t from tmf_AdamsE2_relations')]
    groups=collections.defaultdict(list);rejected=[];resolved=[]
    out=HERE/'relations';out.mkdir(exist_ok=True)
    # Full low-degree region includes nontrivial generator images and products.
    for bid,raw,s,t in source:
      if t>max_t:continue
      try:
        image={()}
        for g in mono(raw):
          if g not in maps:raise ValueError('missing generator image')
          image=multiply(image,maps[g])
          if len(image)>2000:raise ValueError('substitution polynomial exceeds 2000 monomials')
        current=set(image);basis={m:i for i,m in target[s,t]};used=[];index={};terms=[];seen=set()
        for step in range(10000):
          bad=next((m for m in sorted(current) if m not in basis),None)
          if bad is None:break
          state=tuple(sorted(current))
          if state in seen:raise ValueError('relation reduction cycle')
          seen.add(state)
          choice=next(((r,divide(bad,r[1][0])) for r in rels if r[2]<=s and r[3]<=t and divide(bad,r[1][0]) is not None),None)
          if choice is None:raise ValueError('no reducing relation')
          (rid,rpoly,_,_),mult=choice
          if rid not in index:index[rid]=len(used);used.append((rid,rpoly))
          terms.append(dict(relation=index[rid],multiplier=[mult]))
          current.symmetric_difference_update(multiply({mult},rpoly))
        else:raise ValueError('step limit')
        bundle=dict(relations=[p for _,p in used],input=sorted(image),output=sorted(current),terms=terms)
        (out/f'basis{bid}.json').write_text(json.dumps(bundle,sort_keys=True,separators=(',',':'))+'\n')
        row=dict(source_basis_id=bid,source_monomial=raw,s=s,t=t,target_basis_ids=[basis[m] for m in sorted(current)],relation_rowids=[i for i,_ in used],certificate=f'relations/basis{bid}.json')
        groups[s,t].append(row);resolved.append(row)
      except ValueError as e:rejected.append(dict(source_basis_id=bid,s=s,t=t,reason=str(e)))
    lines=['import LinearCertificates.Checker','import RealMapCertificates.Substitution','namespace RealMapCertificates','open LinearCertificates LinProgramCertificates NamedElementCertificates']
    usedGenerators=sorted({g for _,raw,_,t in source if t<=max_t for g in mono(raw)})
    def pl(p):return '['+','.join('['+','.join(map(str,m))+']' for m in p)+']'
    lines += ['def generatorImages : Nat → Polynomial', *[f'  | {g} => {pl(sorted(maps[g]))}' for g in usedGenerators], '  | _ => []']
    matrices=[]
    for (s,t),rows in sorted(groups.items()):
      expected=[i for i,_,a,b in source if (a,b)==(s,t)]
      if [r['source_basis_id'] for r in rows]!=expected:continue
      ids=[i for i,_ in target[s,t]];m=len(ids);n=len(rows)
      a=[i in r['target_basis_ids'] for i in ids for r in rows]
      mat=dict(s=s,t=t,rows=m,cols=n,source_basis_ids=expected,target_basis_ids=ids,entries=a)
      matrices.append(mat);name=f'map_{s}_{t}'
      bl=lambda xs:'['+','.join('true' if x else 'false' for x in xs)+']'
      lines.append(f'def {name} : Matrix {m} {n} := fun i j => ({bl(a)} : List Bool)[i.val*{n}+j.val]!')
      for j,r in enumerate(rows):
        bid=r['source_basis_id'];bits=[i in r['target_basis_ids'] for i in ids]
        lines += [f'def image{bid} : Vec {m} := fun i => ({bl(bits)} : List Bool)[i.val]!',f'theorem evaluation{bid} : InImage {name} image{bid} := by lin_cert using (fun j : Fin {n} => decide (j.val = {j}))',f'def reduction{bid} : Bundle := named_bundle% "RealMapCertificates/relations/basis{bid}.json"',f'theorem reductionProof{bid} : EqualModuloRelations reduction{bid}.relations reduction{bid}.input reduction{bid}.output := by lin_cert using reduction{bid}.terms',f'theorem substitutionProof{bid} : IsMapEvaluation generatorImages reduction{bid}.relations {pl([mono(r["source_monomial"])])[1:-1]} reduction{bid}.output := by lin_cert using reduction{bid}.terms']
    lines.append('end RealMapCertificates')
    if max_t<=40:(HERE/'Generated.lean').write_text('\n'.join(lines)+'\n')
    else:
      batches=HERE/'batches';batches.mkdir(exist_ok=True)
      start=next(i for i,line in enumerate(lines) if line.startswith('def map_'))
      header=lines[:start];chunks=[];current=[];count=0
      for line in lines[start:-1]:
        if line.startswith('def map_') and count>=100:
          chunks.append(current);current=[];count=0
        current.append(line)
        if line.startswith('theorem substitutionProof'):count+=1
      if current:chunks.append(current)
      for i,chunk in enumerate(chunks):
        import re
        batch_ids=[int(re.search(r'substitutionProof(\d+)',x).group(1)) for x in chunk if x.startswith('theorem substitutionProof')]
        raw_by_id={r['source_basis_id']:r['source_monomial'] for r in resolved}
        needed=sorted({g for bid in batch_ids for g in mono(raw_by_id[bid])})
        local_header=header[:2]+['set_option maxRecDepth 4096']+header[2:5]+['def generatorImages : Nat → Polynomial',*[f'  | {g} => {pl(sorted(maps[g]))}' for g in needed],'  | _ => []']
        (batches/f'Batch{i:03d}.lean').write_text('\n'.join(local_header+chunk+['end RealMapCertificates'])+'\n')
    audit=dict(map='S0_to_tmf',range=f'all source basis elements with t <= {max_t}',resolved=resolved,rejected=rejected,matrices=matrices,missing='tmf E2 basis has no d2 column; no complete d2 matrices inferred from absent data',trust='generator map and target relations imported; no theorem identifies these with Ext/topological unit',sources={name:hashlib.sha256((BASE/name).read_bytes()).hexdigest() for name in ['S0_AdamsSS_t261.db','tmf_AdamsSS_t261.db','map_AdamsSS_S0_to_tmf_t261.db']})
    (HERE/'audit.json').write_text(json.dumps(audit,indent=2)+'\n');print(len(resolved),'resolved;',len(rejected),'rejected;',len(matrices),'complete E2 degree matrices')
if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('--max-t',type=int,default=40)
    run(parser.parse_args().max_t)
