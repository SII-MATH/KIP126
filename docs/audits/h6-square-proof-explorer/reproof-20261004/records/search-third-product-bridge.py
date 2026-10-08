from pathlib import Path
import subprocess, sys, json, re, hashlib, datetime
ROOT=Path.cwd()
OUT=ROOT/'docs/audits/h6-square-proof-explorer/reproof-20261004'
sys.path.insert(0,str(OUT/'scripts'))
from search_evidence import capture
commands=[
 ['rg','-n','firstProduct','KIP126','--glob','*.lean'],
 ['rg','-n','adamsSphereE1Product|adamsSphereLayerProductOrdered|Sphere.Internal.product|MilnorCohomology.cup','KIP126','--glob','*.lean'],
 ['rg','-n','LinE2Presentation|ProductCorrect|CobarDerivedExtComparison|CobarCupCalculus|CobarE2Comparison','KIP126','--glob','*.lean'],
 ['rg','-n','FirstQuotientMultiplicationCompatible|FiniteQuotientMultiplicationCompatible|ClassicalProductDetection|SphereAdamsAlgebraPresentation','KIP126','--glob','*.lean'],
 ['rg','-n','(comparison.*(mul|product|cup)|(mul|product|cup).*comparison|RespectsMultiplication|Multiplicative)','KIP126/Def/ClassicalAdams/TowerSmash','KIP126/Def/ClassicalAdams/TowerLongLayer','KIP126/Def/ClassicalAdams/MilnorCohomology','KIP126/Def/Kervaire/Route','KIP126/Interface/Challenge/Challenge2.lean','--glob','*.lean'],
 ['rg','-n','h1_h2|h1_mul_h2|h2_h1|h2_mul_h1|x120.?11|x109.?13|x110.?13|x125.?12|x119.?11|x118.?12','KIP126/Def','KIP126/Main','KIP126/Interface','--glob','*.lean'],
 ['rg','-n','hi.*(cup|product|mul)|cup.*zero|product.*zero','KIP126/Def/Steenrod','KIP126/Def/ClassicalAdams/SphereClasses','KIP126/Def/ClassicalAdams/MilnorCohomology','--glob','*.lean'],
]
log=[]; run=[]
for cmd in commands:
 p=subprocess.run(cmd,text=True,capture_output=True)
 log.append('$ '+' '.join(cmd)+'\nexit='+str(p.returncode)+'\n'+p.stdout+p.stderr)
 run.append({'argv':cmd,'exit_code':p.returncode,'output':p.stdout+p.stderr})
candidates=[]
def add(p,n,f,m='',o=None):
 candidates.append(capture(p,n,f,m,o))
C='KIP126/Interface/Challenge/Challenge2.lean'
add(C,'LinE2Presentation','KIP126.Classical.Adams.LinE2Presentation','comparison_mul compares LinE2.mulAt to P.product, not yet to Sphere.Internal.product.')
add(C,'SphereMultiplicativeInterface','KIP126.Challenge2.SphereMultiplicativeInterface','P.product is identified on every second-cycle representative with the actual first-layer product. No cobar product occurs in its mathematical type.')
add(C,'ComputationInterface','KIP126.Challenge2.ComputationInterface','route_presentation identifies the additive maps of the same route realization and presentation. It does not add P.product = Sphere.Internal.product.')
add(C,'Inputs','KIP126.Computation.Route.Inputs','products quantifies only membership in Raw.products.',1)
add('KIP126/Def/ClassicalAdams/SphereMultiplication/Data.lean','firstProduct','KIP126.Classical.Adams.Sphere.Multiplication.firstProduct','Nat.cast transports of adamsSphereE1Product only.')
add('KIP126/Def/ClassicalAdams/TowerSmash/Pairing/Layer/Multiplication/Homotopy/Data.lean','adamsSphereE1Product','KIP126.Classical.Adams.adamsSphereE1Product','Fixed first-layer tensor pairing. No Milnor coordinate comparison appears.')
add('KIP126/Def/ClassicalAdams/SphereClasses/Product/Data.lean','product','KIP126.Classical.Adams.Sphere.Internal.product','Fixed transport of MilnorCohomology.cup across MilnorCohomology.comparison.')
add('KIP126/Def/ClassicalAdams/MilnorCohomology/Multiplication/Data.lean','cup','KIP126.Classical.Adams.MilnorCohomology.cup','Actual cobar concatenation descended by liftQ₂.')
add('KIP126/Def/Comparison/StageInterfaces.lean','CobarDerivedExtComparison','KIP126.Challenge2.CobarDerivedExtComparison','Additive equivalence to derived comodule Ext with cocycle representatives. No Lin presentation or tower product equation.')
add('KIP126/Def/Comparison/StageInterfaces.lean','CobarCupCalculus','KIP126.Challenge2.CobarCupCalculus','Cobar representative and standard square identities only; no Lin/firstProduct comparison.')
add('KIP126/Def/Kervaire/Route/Multiplication/Comparison.lean','FirstQuotientMultiplicationCompatible','KIP126.Kervaire.Route.FirstQuotientMultiplicationCompatible','Identifies finite synthetic quotient algebra with Sphere.Internal.product; contains no LinE2 or first-layer product identification.')
add('KIP126/Def/Kervaire/Route/SourceLanguage.lean','ClassicalProductDetection','KIP126.Literature.Route.ClassicalProductDetection','For detected homotopy classes only; no general E2 product identification.')
add('KIP126/Def/ClassicalAdams/SphereSequence/Data.lean','SphereAdamsAlgebraPresentation','KIP126.Classical.Adams.SphereAdamsAlgebraPresentation','Old caller-provided presentation and productMap, with no binding to P or Sphere.Internal.product.')
add('KIP126/LinProgram/Interpretation/Route/Predicates.lean','ProductCorrect','KIP126.Computation.Route.ProductCorrect','Correct desired product comparison but restricted in delivered Inputs to explicitly selected degrees.')
add('KIP126/LinProgram/Route/Selected.lean','products','KIP126.Computation.Route.Raw.products','Complete selected degree list; direct lookup below verifies absent pairs.')
add('KIP126/Interface/Solution/LinProgram/Multiplication.lean','sphereMultiplicativeInterface','KIP126.Interface.Solution.sphereMultiplicativeInterface','Existential producer with sorry. Conclusion remains the same first-layer comparison only.')
add('KIP126/Interface/Solution/LinProgram/Route/Certification.lean','certification','KIP126.Interface.Solution.LinProgram.Route.certification','Joint witness supplies selected local products and route presentation equality, without general cobar multiplication bridge.')
# Actual local import closure. External imports are retained as frontier, not silently assumed investigated.
seen=set(); frontier=set(); todo=['KIP126.Interface.Challenge.Challenge2']
while todo:
 mod=todo.pop()
 if mod in seen: continue
 path=ROOT/(mod.replace('.','/')+'.lean')
 if not path.exists(): frontier.add(mod);continue
 seen.add(mod)
 for line in path.read_text().splitlines():
  if line.startswith('import '):
   for imp in line[7:].split():
    if imp.startswith('KIP126.'):todo.append(imp)
    else:frontier.add(imp)
prodtext=next(c['full_type_and_definition'] for c in candidates if c['name']=='KIP126.Computation.Route.Raw.products')
pairs=[tuple(map(int,m)) for m in re.findall(r'⟨(\d+),\s*(\d+),\s*(\d+),\s*(\d+)⟩',prodtext)]
requests={
 'EXT-025':[(2,4,11,131),(1,2,11,131)],
 'EXT-026':[(4,18,13,122)],
 'EXT-027':[(2,16,13,123),(1,8,13,123)],
 'EXT-028':[],
 'EXT-029':[(1,64,7,70)],
 'EXT-031':[(1,8,12,130),(1,8,11,130)],
 'EXT-032':[(1,2,1,4)]}
checks=[]
for dep,ps in requests.items():
 checks.append({'dependency_id':dep,'checks':[{'pair':p,'present':p in pairs,'reverse_present':(p[2],p[3],p[0],p[1]) in pairs} for p in ps],
 'note':('No selected factor has degree (4,18), so no d0 multiplication is delivered by Raw.products, including rearranged orientation.' if dep=='EXT-028' else 'Exact pairs and reverse orientation absent; reverse absence is recorded without presupposing a formal commutativity theorem.')})
d0pairs=[p for p in pairs if p[:2]==(4,18) or p[2:]==(4,18)]
assert not d0pairs
record={
 'role':'Searcher supplementary independent bridge search','round':3,
 'timestamp_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
 'commit':subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip(),
 'scope':'Only current Lean declarations, definitions, explicit and implicit hypotheses, imported project modules; no mathematical statement changes and no checking original-source truth.',
 'commands':run,'candidate_declarations':candidates,
 'project_import_closure':sorted(seen),'external_import_frontier':sorted(frontier),
 'raw_products_count':len(pairs),'raw_product_pairs':pairs,'missing_pairs':checks,
 'new_candidate_closing_gap':None,
 'finding':'未找到 first-layer sphere pairing 经 Milnor comparison 等于 cobar cup 的通用比较，也未找到一般 LinE2 multiplication 到 Sphere.Internal.product 的交付。SphereMultiplicativeInterface + route_presentation 只能将坐标乘法接到 first-layer quotient product；已检查的其它结构未补上此节点。ProductCorrect 给出正确方向，但实际 Inputs 仅对 Raw.products 中的次数对交付。指定缺对在该列表及反向均缺失。',
 'limits':['This is a bounded source search, not a proof of logical non-derivability. Existing structures may support future proofs; none is an already-delivered general bridge in the examined declarations.', 'No new Lean proof or #check command was executed in this supplementary search; conclusions rely on fully recorded current source definitions.', 'The EXT-032 local h2*x12213 relation was intentionally not rechecked, as requested.'],
 'mutations':'Only records/search-third-product-bridge.py, .json, and .log created.'}
(OUT/'records/search-third-product-bridge.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n')
(OUT/'records/search-third-product-bridge.log').write_text('\n\n'.join(log)+'\n\nImport closure local modules: '+str(len(seen))+'\nRaw products: '+str(len(pairs))+'\nMissing-pair checks:\n'+json.dumps(checks,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'candidates':len(candidates),'import_closure':len(seen),'products':len(pairs),'pairs_missing':all(not c['present'] and not c['reverse_present'] for d in checks for c in d['checks'])},ensure_ascii=False))
