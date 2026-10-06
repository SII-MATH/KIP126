from search_evidence import *
D={d['id']:d for d in json.loads((OUT/'data/dependencies.json').read_text())}
def c(p,n,ns):return capture(p,n,ns+'.'+n)
IF='KIP126/Interface/Challenge/Challenge2.lean';RT='KIP126/Main/Solution/Computation/Route.lean';LM='KIP126/Def/AdamsE2/LinModel/'
common=[c(IF,'SphereMultiplicativeInterface','KIP126.Challenge2'),c(IF,'ComputationInterface','KIP126.Challenge2'),c('KIP126/Interface/Solution/LinProgram/Route/Certification.lean','certification','KIP126.Interface.Solution.LinProgram.Route'),c(LM+'Data.lean','definingRelations','KIP126.LinE2'),c(LM+'Data.lean','definingIdeal','KIP126.LinE2'),c(LM+'Proofs.lean','csv_relation_zero','KIP126.LinE2')]
extra={
 '013':[c(RT,n,'KIP126.Computation.Route') for n in ['stem125_e5_zero_finite','sphere_page_zero_above_uniform_bound']]+[c('KIP126/Def/ClassicalAdams/SphereVanishing/Predicates.lean','SphereVanishingLine','KIP126.Classical.Adams')],
 '030':[c(RT,n,'KIP126.Computation.Route') for n in ['nonzero_permanent_of_survives1000','permanent_cycle_of_reaches1000']]+[c('KIP126/Interface/Solution/AdamsOneLine.lean','may_lowDimensionalProducts_permanent','KIP126.Interface.Solution')],
 '031':[],
 '032':[c('KIP126/Def/AdamsE2/LinClasses/Proofs.lean','h1_mul_h2_eq_zero','KIP126.LinE2')],
}
for k in ['025','026','027','028','029']:extra[k]=[c(RT,'permanent_cycle_of_reaches1000','KIP126.Computation.Route')]
rs=[]
for suffix,cands in extra.items():
 d=D['EXT-'+suffix];queries=['SphereMultiplicativeInterface','route_presentation','csv_relation_zero','definingRelations','firstProduct','cobar.*product','nonzero_permanent_of_survives1000']
 log='records/search-round2-'+d['id']+'.log'
 run=subprocess.run(['rg','-n','|'.join(queries),'KIP126/Def','KIP126/Interface','KIP126/Main/Solution'],cwd=ROOT,text=True,stdout=subprocess.PIPE)
 (OUT/log).write_text(run.stdout)
 rs.append({'dependency_id':d['id'],'proposition_version':d['proposition_version'],'fixed_used_statement':d['used_statement'],'used_statement_sha256':hashlib.sha256(d['used_statement'].encode()).hexdigest(),'round':2,'scope':['KIP126/Def','KIP126/Interface','KIP126/Main/Solution','KIP126/LinProgram/Generated/E2.lean'],'queries':queries,'evidence_file':log,'additional_evidence':['records/search-relation-decoding.json','records/checker-raw-coordinate-review.json'],'candidates':common+cands,'search_notes':'针对首轮补同一P与R的route_presentation、全有界乘法、精确关系行以及商理想。SphereMultiplicativeInterface比较actual first-layer product，而ProductCorrect比较Sphere.Internal.product：是否有一般cobar桥须独立核对，不能凭名称合并。关系实读当前Generated/E2：h1h2 index1；h2x12213 index10552 code 2,1,407,1；h0h3x11812=h0²x12512 index10556 code 0,1,3,1,335,1;0,2,425,1；h5X2与h5(C′+X2) indices2982/2981。csv_relation_zero仅商代数真理，非自动实际模型结果。表重建非零需入射矩阵，E5消失只是较弱后果。'})
write_round(2,rs)
print('Second-round submissions',list(extra))
