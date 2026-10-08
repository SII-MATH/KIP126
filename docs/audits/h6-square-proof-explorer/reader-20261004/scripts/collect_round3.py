from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[5];OUT=Path(__file__).resolve().parents[1]
commit='e4b916b1ae0889a8f6c053aa27eba52f078a4b22'
def c(name,path,start,end,kind='definition'):
 t=(ROOT/path).read_text();i=t.index(start);j=t.index(end,i) if end else len(t)
 return {'name':name,'path':path,'line':t[:i].count('\n')+1,'commit':commit,'kind':kind,'full_type_and_definition':t[i:j].strip(),'context':'\n'.join(t.splitlines()[:70])}
rows=[{'dependency_id':'EXT-001','feedback':'需合成塔过滤的完备性或具体次数的强收敛转移，经典强收敛不足。','candidates':[
 c('KIP126.Synthetic.LambdaAdicCompletenessInterface','KIP126/Def/StableHomotopy/Implementation/Data.lean','structure LambdaAdicCompletenessInterface','end Synthetic','structure'),
 c('KIP126.Synthetic.Context.IsLambdaComplete','KIP126/Def/Synthetic/Completion/Predicates.lean','def IsLambdaComplete','/-- The restriction'),
 c('KIP126.Synthetic.SpectralSequence.TowerConvergence','KIP126/Def/Synthetic/AdamsFiltration/Convergence/Data.lean','structure TowerConvergence','def TowerConvergence.toSynthetic','structure'),
 c('KIP126.Synthetic.SpectralSequence.TowerConvergence.Canonical','KIP126/Def/Synthetic/AdamsFiltration/Convergence/Canonical/Predicates.lean','def TowerConvergence.Canonical','end\nend KIP126'),
 c('KIP126.Interface.Solution.Literature.Route.bhs_completed_sources','KIP126/Interface/Solution/Literature/Route/BHS.lean','theorem bhs_completed_sources','end KIP126','theorem (sorry)')
 ],'new_evidence':'第三轮扩展到源实现里的LambdaAdicCompletenessInterface、真实残余λ塔IsLambdaComplete、canonical tower-filtration比较和完成源生产者。它们提供派生λ完备性语言及经典源比较；检索仍未定位把它们转换成实际合成Adams filtration CompletionWitness的声明。不能以此断言不存在这种数学推导。','queries':['rg CompletionWitness|IsAdamsTowerStronglyConvergent|StrongConvergence KIP126/Def/Synthetic KIP126/Interface KIP126/Def/StableHomotopy/Implementation','读取LambdaAdicCompletenessInterface及IsLambdaComplete、TowerConvergence.Canonical、bhs_completed_sources','检查本地AF界生产者AlphaOne/Computation的124/125次数是否给合成过滤完备性']},
 {'dependency_id':'EXT-002','feedback':'需d4靶在E4、d3靶在E3非零和短入射排除，单HasDifferential不够。','candidates':[
 c('KIP126.Computation.Route.Derived.SphereFacts.d3_h4_x_109_12','KIP126/Main/Solution/Computation/Route/Consequences.lean','  d3_h4_x_109_12 :','  d3_h0Sq_x_123_13_2','structure field'),
 c('KIP126.Computation.Route.Derived.Differential','KIP126/Main/Solution/Computation/Route/Consequences.lean','def Differential','def Survival'),
 c('KIP126.Challenge2.StaircaseClaimStatement','KIP126/Interface/Challenge/Challenge2.lean','def StaircaseClaimStatement','/-- cm5 固定'),
 c('KIP126.Challenge2.SphereStaircaseInterface','KIP126/Interface/Challenge/Challenge2.lean','structure SphereStaircaseInterface','/-- cm3','structure'),
 c('KIP126.Core.SpectralSequence.HasNonzeroDifferential','KIP126/Def/SpectralSequence/Computation/Predicates.lean','def HasNonzeroDifferential','/-- Some differential')
 ],'new_evidence':'第三轮补得AF13出射的真正HasNonzeroDifferential（SphereFacts.d3_h4_x_109_12），可与第2轮短边界/完整基底合用。扩大检查全staircase delivery后，StaircaseClaimStatement.equation仍只给HasDifferential，reaches允许零。未定位AF11 d4靶(15,138)[0]的E4非零或对B4/B3的足够边界排除声明；不把数据库行存在与E2非零替代此桥接。','queries':['rg d4|15,138|15, 138|nonzero KIP126/Main/Solution/Computation KIP126/Def/SpectralSequence/Computation','读取全StaircaseClaimStatement/SphereStaircaseInterface判断是否具有边界穷尽语义','读取Derived.Differential及d3_h4_x_109_12的实际非零类型']}
]
for row in rows:row.update({'round':3,'proposition_version':'v1','searcher':'/root','scope':['KIP126/Def/Synthetic','KIP126/Def/StableHomotopy/Implementation','KIP126/Interface','KIP126/Main/Solution/Computation','KIP126/Main/Solution/Route/AlphaOne.lean'],'limitations':['最后一轮提交新增候选与具体缺失桥接；最终状态由Checker决定，未修改命题版本。']})
(OUT/'data/search-round3.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2));print('saved round3')
