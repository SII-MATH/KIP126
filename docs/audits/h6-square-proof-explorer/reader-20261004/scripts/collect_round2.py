from pathlib import Path
import json,re
ROOT=Path(__file__).resolve().parents[5];OUT=Path(__file__).resolve().parents[1]
commit='e4b916b1ae0889a8f6c053aa27eba52f078a4b22'
def c(name,path,start,end,kind='definition'):
 t=(ROOT/path).read_text();i=t.index(start);j=t.index(end,i) if end else len(t)
 return {'name':name,'path':path,'line':t[:i].count('\n')+1,'commit':commit,'kind':kind,'full_type_and_definition':t[i:j].strip(),'context':'\n'.join(t.splitlines()[:72])}
s='KIP126/Def/Kervaire/Route/SourceLanguage.lean';i='KIP126/Interface/Challenge/Challenge2.lean';m='KIP126/Def/Kervaire/Route/Model/Predicates.lean';r='KIP126/Main/Solution/Computation/Route/Consequences.lean';p='KIP126/LinProgram/Interpretation/Route/Predicates.lean'
raw='KIP126/LinProgram/Route/Selected.lean';txt=(ROOT/raw).read_text().splitlines()
raw_rows=[{'path':raw,'line':n,'text':line.strip(),'commit':commit} for n,line in enumerate(txt,1) if any(key in line for key in [', 11, 135,',', 12, 136,',', 13, 137,'])]
rows=[{'dependency_id':'EXT-001','feedback':'补 η/h1 检测、实际完备性与强收敛的应用条件及同一模型桥接。','candidates':[
 c('KIP126.Literature.Route.HopfInput',s,'def HopfInput','end KIP126.Literature.Route'),
 c('KIP126.Kervaire.SyntheticTheta5.DetectsEta','KIP126/Def/Kervaire/Theta5/Synthetic/Predicates.lean','def SyntheticTheta5.DetectsEta','/-- Original finite'),
 c('KIP126.Kervaire.Route.ComparisonCompatible.homotopy_lambda',m,'  homotopy_lambda :','  /-- The ν-sphere','structure field'),
 c('KIP126.Classical.Adams.BHSObjectApplicability','KIP126/Def/ClassicalAdams/Convergence/BHS/Predicates.lean','structure BHSObjectApplicability','end KIP126','structure'),
 c('KIP126.Classical.Adams.IsAdamsTowerStronglyConvergent','KIP126/Def/ClassicalAdams/Convergence/Tower/Predicates.lean','structure IsAdamsTowerStronglyConvergent','end KIP126','structure'),
 c('KIP126.Literature.Route.BHSCompletionApplicability',s,'structure BHSCompletionApplicability','/-- Source-to-selected','structure'),
 c('KIP126.Literature.Route.BHSCompletionComparison',s,'structure BHSCompletionComparison','/-- The remaining zero','structure'),
 c('KIP126.Challenge2.FoundationInputs',i,'structure FoundationInputs :','/-- Project-specific','structure'),
 c('KIP126.Literature.Route.Application',i,'structure Application (B : Bindings','/-- Assemble the consumer','structure')
 ],'new_evidence':'源对象强收敛含complete/separated/associatedGraded，Q.completed .sphere由同一Application.bhsApplicability.source提供；FoundationInputs.sphereApplicability直接针对固定sphere。是否已覆盖冻结命题的合成强收敛，而非仅经典强收敛，请Checker独立判断。'},
 {'dependency_id':'EXT-002','feedback':'需要B3短边界界，而非只E5或E∞消失。','candidates':[
 c('KIP126.Computation.Route.Inputs',i,'structure Inputs (D : Model','/-- Seven atomic','structure'),
 c('KIP126.Computation.Route.Statement',p,'def Statement','/-- Different provenance'),
 c('KIP126.Computation.Route.BasisCorrect',p,'def BasisCorrect','/-- Each selected'),
 c('KIP126.Computation.Route.SphereBasisValue',p,'def SphereBasisValue','/-- Only the selected'),
 c('KIP126.Core.SpectralSequence.HasDifferential','KIP126/Def/SpectralSequence/Computation/Predicates.lean','def HasDifferential','/-- A nonzero differential')
 ],'raw_rows':raw_rows,'new_evidence':'已新增实际解释的全局部基底与d2/d3入射、d2/d3/d4出射原始条目。AF11基底长度5，短边界坐标[3,4],[4],[0]；其余[1,2]出d4、[2]出d2。AF12短边界[1,2],[3,4],[4],[0]；[2]出d2。AF13短边界[3],[0]、[2]出d3、[1]为correction。Statement.equation只给HasDifferential，单凭E2靶非零不能替代E_r非零；仍待独立核对短边界与outgoing的解释桥接。'},
 {'dependency_id':'EXT-006','feedback':'IsPermanentCycle允许零，需T在E2非零。','candidates':[
 c('KIP126.Computation.Route.Derived.SphereFacts.t_not_h0_multiple',r,'  t_not_h0_multiple :','  t_not_h2_multiple','structure field'),
 c('KIP126.Classical.Adams.Sphere.Internal.product','KIP126/Def/ClassicalAdams/SphereClasses/Product/Data.lean','def product','end KIP126')
 ],'new_evidence':'在t_not_h0_multiple中令a=0。若T=0，则内部Ext乘法h0·0=0给被禁止的存在见证。与首轮t_permanent_cycle和同一R上的route_expression_labels合用得到T非零且永久周期；无需升级为非零E∞存活。'}]
for row in rows: row.update({'round':2,'proposition_version':'v1','searcher':'/root','scope':['KIP126/Def','KIP126/Interface/Challenge/Challenge2.lean','KIP126/Main/Solution/Computation/Route','KIP126/LinProgram/Route/Selected.lean'],'queries':['rg BHSObjectApplicability|strongly_convergent|HopfInput|homotopy_lambda','rg 指定四组(s,t) Selected.lean','读取Statement/BasisCorrect/SphereBasisValue及t_not_h0_multiple'],'limitations':['不把原始记录或类型存在当作已证；新的候选由Checker判定。']})
(OUT/'data/search-round2.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2));print('saved round2')
