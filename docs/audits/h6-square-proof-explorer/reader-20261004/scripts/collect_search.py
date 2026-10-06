from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[5]
OUT=Path(__file__).resolve().parents[1]
COMMIT='e4b916b1ae0889a8f6c053aa27eba52f078a4b22'
def c(name,path,start,end,kind='definition',note=''):
 text=(ROOT/path).read_text(); pos=text.index(start); stop=text.index(end,pos) if end else len(text)
 line=text[:pos].count('\n')+1
 return {'name':name,'path':path,'line':line,'commit':COMMIT,'kind':kind,'full_type_and_definition':text[pos:stop].strip(),'context':text[:pos] if len(text[:pos])<5500 else '\n'.join(text.splitlines()[:72]),'initial_mapping':note}
pres='KIP126/Def/Synthetic/EInfty/Presentation/Data.lean'
compat='KIP126/Def/Synthetic/EInfty/Presentation/Predicates.lean'
source='KIP126/Def/Kervaire/Route/SourceLanguage.lean'
model='KIP126/Def/Kervaire/Route/Model/Predicates.lean'
cons='KIP126/Main/Solution/Computation/Route/Consequences.lean'
route='KIP126/Main/Solution/Computation/Route.lean'
interface='KIP126/Interface/Challenge/Challenge2.lean'
rows=[
 {'dependency_id':'EXT-001','candidates':[
 c('KIP126.Synthetic.SpectralSequence.NuEInftyFormula',pres,'abbrev NuEInftyFormula','/-- BHS A.11'),
 c('KIP126.Synthetic.SpectralSequence.SyntheticEInftyMapCompatibility',compat,'structure SyntheticEInftyMapCompatibility','end KIP126'),
 c('KIP126.Kervaire.Route.MultiplicationCompatible',model,'def MultiplicationCompatible','/-- Hausdorff'),
 c('KIP126.Kervaire.Route.Model','KIP126/Def/Kervaire/Route/Model/Coherent/Data.lean','structure Model extends','end KIP126','structure'),
 c('KIP126.Literature.Route.EInftyInput',interface,'structure EInftyInput where','/-- External BHS','structure')]},
 {'dependency_id':'EXT-002','candidates':[
 c('KIP126.Computation.Route.Derived.SphereFacts.e5_stem124_af11',cons,'  e5_stem124_af11 :','  e4_stem124_af12','structure field'),
 c('KIP126.Computation.Route.Derived.SphereFacts.e4_stem124_af12',cons,'  e4_stem124_af12 :','  e4_stem125_af12','structure field'),
 c('KIP126.Main.Solution.Route.Section7.classical_stem124_af13_generated','KIP126/Main/Solution/Route/AlphaOne.lean','theorem classical_stem124_af13_generated','/-- The filtration bound','theorem (sorry)')]},
 {'dependency_id':'EXT-003','candidates':[
 c('KIP126.Computation.Route.Derived.SphereFacts.h1_correction_zero',cons,'  h1_correction_zero :','  p_h2_boundary','structure field'),
 c('KIP126.Computation.Route.sphere_facts',route,'theorem sphere_facts','/-- Source [0,3,4]','theorem (sorry)'),
 c('KIP126.Computation.Route.ProductCorrect','KIP126/LinProgram/Interpretation/Route/Predicates.lean','def ProductCorrect','/-- Bottom-cell')]},
 {'dependency_id':'EXT-004','candidates':[
 c('KIP126.Literature.Route.FiltrationLambda',source,'def FiltrationLambda :','/-- The first quotient'),
 c('KIP126.Literature.Route.SyntheticSourceInputs.toInputs',interface,'def SyntheticSourceInputs.toInputs','end\nend KIP126.Literature.Route','definition'),
 c('KIP126.Literature.Route.BHSFiltrationLambdaAt',source,'def BHSFiltrationLambdaAt','/-- Actual completion')]},
 {'dependency_id':'EXT-005','candidates':[
 c('KIP126.Computation.Route.Derived.SphereFacts.u_permanent',cons,'  u_permanent :','  correction_permanent','structure field'),
 c('KIP126.Computation.Route.Derived.Permanent',cons,'def Permanent','def NotHit'),
 c('KIP126.Computation.Route.route_expression_labels',route,'theorem route_expression_labels','/-- The high class','theorem (sorry)')]},
 {'dependency_id':'EXT-006','candidates':[
 c('KIP126.Computation.Route.Derived.SphereFacts.t_permanent_cycle',cons,'  t_permanent_cycle :','  t_only_incoming','structure field'),
 c('KIP126.Computation.Route.BasisCorrect','KIP126/LinProgram/Interpretation/Route/Predicates.lean','def BasisCorrect','/-- Each selected'),
 c('KIP126.Computation.Route.route_expression_labels',route,'theorem route_expression_labels','/-- The high class','theorem (sorry)')]}
]
for row in rows:
 row.update({'round':1,'proposition_version':'v1','searcher':'/root (Master兼任Searcher)','scope':['KIP126/Def/Kervaire/Route','KIP126/Def/Synthetic/EInfty','KIP126/Interface/Challenge/Challenge2.lean','KIP126/Main/Solution/Computation/Route','KIP126/Main/Solution/Route/AlphaOne.lean','KIP126/LinProgram/Interpretation/Route'],'queries':['rg -n EInftyFormulaInput|FiltrationLambda|SphereFacts|stem124|af11|af12|af13','rg -n t_permanent_cycle|u_permanent|h1_correction_zero|sphere_facts|route_expression_labels','沿上述import读取定义及当前单见证接口'],'limitations':['完整传递依赖审计另行记录；声明类型与证明完成度分别交Checker判断。']})
(OUT/'data/search-round1.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2))
print('saved',len(rows),'dependency searches')
