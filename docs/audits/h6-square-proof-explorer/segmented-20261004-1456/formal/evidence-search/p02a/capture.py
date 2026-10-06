from pathlib import Path
import re,json,hashlib,subprocess,datetime,shutil
ROOT=Path.cwd(); RUN=Path('docs/audits/h6-square-proof-explorer/segmented-20261004-1456'); E=RUN/'formal/evidence-search/p02a'
queries=json.loads((E/'index-round1.json').read_text())
new=[
('q05-staircase-fixed-degrees',['rg','-n',r'\(some (8|9|10|11|12|13|14|15|16|17)\), \(some (132|133|134|135|136|137|138|139|140)\)','KIP126/LinProgram/Generated/Staircase','--glob','*.lean']),
('q06-independent-bridges',['rg','-n',r'permanent_cycle_of_reaches|rows_sound|certification|sphere_facts|sphereBasis|basisTable_correct|SphereBasisValue|LabelsCorrect','KIP126/Interface/Solution','KIP126/Interface/Challenge/Challenge2.lean','KIP126/Main/Solution/Computation','KIP126/LinProgram/Interpretation/Route','--glob','*.lean']),
('q07-label-specific-matches',['rg','-n',r'x_124_11|x_124_14|x_124_15|x_125_10|h1_correction_zero|correction_permanent|u_permanent|v_to_e12|v_not_hit','KIP126','--glob','*.lean']),
('q08-appendix-semantic-users',['rg','-n',r'AppendixRow|appendixRows|ClassTerm','KIP126/Main','KIP126/Interface','KIP126/LinProgram/Interpretation','--glob','*.lean']),
('q09-additive-differential-bridges',['rg','-n',r'theorem.*(differential|Differential|[Rr]epresents|[Pp]ermanent|[Nn]onzero).*(add|sum|zero|cycle)|def HasDifferential|def HasNonzeroDifferential','KIP126/Def/SpectralSequence','KIP126/Main/Solution/Computation','--glob','*.lean'])]
for name,argv in new:
 p=subprocess.run(argv,text=True,capture_output=True); (E/(name+'.txt')).write_text(p.stdout+p.stderr)
 queries.append(dict(record_id=name,argv=argv,exit_code=p.returncode,output=str(E/(name+'.txt')),utc=datetime.datetime.now(datetime.timezone.utc).isoformat()))
(E/'index-round1.json').write_text(json.dumps(queries,ensure_ascii=False,indent=2)+'\n')
paths='''KIP126/Interface/Challenge/Challenge2.lean
KIP126/Interface/Solution/Challenge2.lean
KIP126/Interface/Solution/LinProgram/BasisTable.lean
KIP126/Interface/Solution/LinProgram/SphereBasis.lean
KIP126/Interface/Solution/LinProgram/Route/Certification.lean
KIP126/Interface/Solution/Literature/Route/Range.lean
KIP126/LinProgram/Route/Raw.lean
KIP126/LinProgram/Route/Selected.lean
KIP126/LinProgram/Interpretation/Route/Data.lean
KIP126/LinProgram/Interpretation/Route/Predicates.lean
KIP126/LinProgram/Interpretation/Near126/Names/Data.lean
KIP126/LinProgram/Interpretation/Near126/Names/Proofs.lean
KIP126/LinProgram/Interpretation/Near126/Classes/Data.lean
KIP126/LinProgram/Interpretation/State/Data.lean
KIP126/LinProgram/Generated/E2.lean
KIP126/LinProgram/Generated/Staircase/Table.lean
KIP126/LinProgram/Raw/Staircase/Data.lean
KIP126/Main/Solution/Literature/Near126/Sphere/Data.lean
KIP126/Main/Solution/Literature/Near126/Sphere/Predicates.lean
KIP126/Main/Solution/Computation/Route.lean
KIP126/Main/Solution/Computation/Route/Consequences.lean
KIP126/Main/Solution/Computation/LinProgram/Route/Records.lean
KIP126/Main/Solution/Computation/LinProgram/Basis/Data.lean
KIP126/Main/Solution/Computation/LinProgram/Basis/Proofs.lean
KIP126/Main/Solution/Computation/LinProgram/Interpretation/Basis/Data.lean
KIP126/Main/Solution/Computation/LinProgram/Interpretation/Basis/Proofs.lean
KIP126/Main/Solution/Computation/LinProgram/Interpretation/Classes/Data.lean
KIP126/Main/Solution/Computation/LinProgram/Interpretation/Presentation/Proofs.lean
KIP126/Main/Solution/Computation/LinProgram/Presentation.lean
KIP126/Main/Solution/StageInput.lean
KIP126/Main/Axiom/Challenge2.lean
KIP126/Def/AdamsE2/LinModel/Data.lean
KIP126/Def/AdamsE2/LinModel/Proofs.lean
KIP126/Def/AdamsE2/LinBasisTable/Data.lean
KIP126/Def/AdamsE2/LinBasisTable/Predicates.lean
KIP126/Def/AdamsE2/LinBasisTable/Certification/Data.lean
KIP126/Def/AdamsE2/LinBasisTable/Certification/Proofs.lean
KIP126/Def/SpectralSequence/Computation/Predicates.lean
KIP126/Def/SpectralSequence/Computation/State/Predicates.lean
KIP126/Def/SpectralSequence/Permanence/Predicates.lean
KIP126/Def/ClassicalAdams/SphereVanishing/Predicates.lean
KIP126/Def/References/Literature/AppendixTable/Rows/Data.lean
KIP126/Def/References/Literature/AppendixTable/Rows/Predicates.lean
KIP126/Def/References/Literature/AppendixTable/Rows/Catalogue/Rows001To160.lean
KIP126/Def/StageInput/StandardSphere/Sequence/Data.lean
KIP126/Def/StageInput/Foundation.lean
KIP126/Def/StageInput/Milnor.lean
KIP126/Def/Kervaire/Route/SourceLanguage.lean'''.splitlines()
paths += [str(p) for p in Path('KIP126/LinProgram/Generated/Staircase').glob('Shard*.lean') if any(re.search(r'\(some (8|9|10|11|12|13|14|15|16|17)\), \(some (132|133|134|135|136|137|138|139|140)\)',x) for x in p.read_text().splitlines())]
index=[]
for p in paths:
 src=Path(p); target=E/'sources'/p;target.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(src,target)
 data=src.read_bytes();index.append(dict(path=p,sha256=hashlib.sha256(data).hexdigest(),lines=len(data.splitlines()),snapshot=str(target.relative_to(RUN)),imports=re.findall(r'^import (.+)$',data.decode(),re.M)))
(E/'source-index.json').write_text(json.dumps(index,ensure_ascii=False,indent=2)+'\n')
# Mechanical extraction of literal Lean source records; no mathematical certification is claimed.
e2=Path('KIP126/LinProgram/Generated/E2.lean').read_text(); gens=[]
for n,line in enumerate(e2.splitlines(),1):
 if re.match(r'def generatorChunk\d+ ',line):
  for name,s,t in re.findall(r'\(("(?:[^"\\]|\\.)*"), (\d+), (\d+)\)',line):
   gens.append(dict(id=len(gens),name=json.loads(name),s=int(s),t=int(t),path='KIP126/LinProgram/Generated/E2.lean',line=n))
assert len(gens)==2914
selected=Path('KIP126/LinProgram/Route/Selected.lean').read_text(); degrees={};claims=[]
for n,l in enumerate(selected.splitlines(),1):
 m=re.search(r'⟨.sphere, (\d+), (\d+), (\[.*\])⟩',l)
 if m:
  s,t=map(int,m.group(1,2)); codes=json.loads(m[3]); degrees[(s,t)]=dict(s=s,t=t,codes=codes,line=n)
 m=re.search(r'⟨.sphere, .(equation|reaches|boundaryBy|refutation), (\d+), (\d+), (\d+), (\[.*?\]), (\d+), (\d+), (\[.*?\]), "([^"]+)", (\d+)⟩',l)
 if m:
  kind,r,s,t,x,ts,tt,y,origin,record=m.groups();claims.append(dict(kind=kind,r=int(r),s=int(s),t=int(t),x=json.loads(x),ts=int(ts),tt=int(tt),y=json.loads(y),origin=origin,record=int(record),line=n,source=l.strip()))
def decode_mon(code):
 nums=[int(x) for x in code.split(',')]; assert len(nums)%2==0
 return [dict(generator=gens[i],power=a) for i,a in zip(nums[::2],nums[1::2])]
relevant=[]
for (s,t),d in degrees.items():
 if 8<=s<=17 and 131<=t<=140:
  d['basis']=[dict(coordinate=i,code=c,factors=decode_mon(c)) for i,c in enumerate(d['codes'])]; relevant.append(d)
(E/'coordinate-bridge.json').write_text(json.dumps(dict(extraction='literal source parsing only; no Lean eval or proof',degrees=relevant,claims=[c for c in claims if 8<=c['s']<=17 and 131<=c['t']<=140]),ensure_ascii=False,indent=2)+'\n')
# Full staircase rows in the same range, preserving actual array offsets.
rows=[]
for p in sorted(Path('KIP126/LinProgram/Generated/Staircase').glob('Shard*.lean')):
 off=0
 for n,l in enumerate(p.read_text().splitlines(),1):
  if re.match(r'  ⟨',l):
   m=re.search(r'⟨(\d+), \(some (\d+)\), \(some (\d+)\), \(some "([^"]*)"\), (none|\(some "[^"]*"\)), \(some (\d+)\)⟩',l)
   if m:
    rid,s,t,base,diff,level=m.groups();s=int(s);t=int(t)
    if 8<=s<=17 and 131<=t<=140: rows.append(dict(id=int(rid),s=s,t=t,base=base,diff=diff,level=int(level),path=str(p),line=n,shard=int(p.stem[5:]),offset=off,source=l.strip()))
   off+=1
(E/'staircase-rows.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2)+'\n')
print(json.dumps(dict(queries=len(queries),sources=len(index),degrees=len(relevant),rows=len(rows))))
