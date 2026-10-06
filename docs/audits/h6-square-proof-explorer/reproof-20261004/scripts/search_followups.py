from search_evidence import *
D={d['id']:d for d in json.loads((OUT/'data/dependencies.json').read_text())}
SL='KIP126/Def/Kervaire/Route/SourceLanguage.lean';RT='KIP126/Main/Solution/Computation/Route.lean'
def c(p,n,ns):return capture(p,n,ns+'.'+n)
entries={
'009':([c('KIP126/Interface/Solution/Literature/Route/Moss.lean','mossInputOfClassicalSource','KIP126.Interface.Solution.Literature.Route'),c(SL,'MossTowerApplicability','KIP126.Literature.Route'),c('KIP126/Def/ClassicalAdams/Moss/Crossing/Predicates.lean','crossingSourceDegree','KIP126.Classical.Adams.Moss')],['Moss','MossCrossing','synthetic.*Massey','3 ≤ r','2 ≤ r'],'回应第一轮r≥3/经典限制，新增经典到合成Moss适用性adapter，仍需核对其仅theta/B局部范围。'),
'017':([c('KIP126/Def/StableHomotopy/Toda/Law/Proofs.lean',n,'KIP126.StableHomotopy.Toda') for n in ['map','tensor_right','tensor_left']]+[c(SL,n,'KIP126.Literature.Route') for n in ['QuotientAlgebraBinding','AlgebraData.withBinding']],['quotientClass','tensor_right','tensor_left','ModuleTripleToda','sphere_action'],'针对商RN，新增实际三角函子的Toda自然性、张量传递以及同一商代数sphere_action绑定。不能自动把对sphere成员等式改成环Toda；需核对所有桥接。'),
'021':([c(SL,n,'KIP126.Literature.Route') for n in ['ClassicalProductDetection','ClassicalHigh125Tail','TmfBinding']]+[c(RT,n,'KIP126.Computation.Route') for n in ['high125_label','classical_stem125_filtration26_zero']]+[c('KIP126/Main/Solution/Computation/Tmf.lean',n,'KIP126.Main.Solution.Computation') for n in ['high125_nonzero_survival_of_computation','tmf_inputs_of_computation']],['ClassicalProductDetection','ClassicalSphereSeparated','SphereVanishingLine','high125_label','TmfBinding'],'针对任意G检测代表，补同一球谱乘积检测、绑定、F26消失、G标签与非零检测；同一I,V,分离前提必须显式保留。'),
}
rs=[]
for suffix,(cands,queries,note) in entries.items():
 d=D['EXT-'+suffix]
 log='records/search-round2-'+d['id']+'.log'
 p=subprocess.run(['rg','-n','|'.join(queries),'KIP126/Def','KIP126/Interface','KIP126/Main/Solution'],cwd=ROOT,text=True,stdout=subprocess.PIPE)
 (OUT/log).write_text(p.stdout)
 rs.append({'dependency_id':d['id'],'proposition_version':d['proposition_version'],'fixed_used_statement':d['used_statement'],'used_statement_sha256':hashlib.sha256(d['used_statement'].encode()).hexdigest(),'round':2,'scope':['KIP126/Def','KIP126/Interface','KIP126/Main/Solution'],'queries':queries,'evidence_file':log,'candidates':cands,'search_notes':note})
write_round(2,rs)
print('Second-round submissions',list(entries))
