"""Master/Searcher first submission for separately frozen dependency batch."""
from search_evidence import *
import datetime
D={d['id']:d for d in json.loads((OUT/'data/dependencies.json').read_text())}
SL='KIP126/Def/Kervaire/Route/SourceLanguage.lean'; IF='KIP126/Interface/Challenge/Challenge2.lean'; CO='KIP126/Main/Solution/Computation/Route/Consequences.lean'; RT='KIP126/Main/Solution/Computation/Route.lean'; RA='KIP126/LinProgram/Route/Selected.lean'; PR='KIP126/LinProgram/Interpretation/Route/Predicates.lean'; CL='KIP126/LinProgram/Interpretation/Near126/Classes/Data.lean'
def c(p,n,ns,**kw):return capture(p,n,ns+'.'+n,**kw)
def lit(n):return c(SL,n,'KIP126.Literature.Route')
def inter(n):return c(IF,n,'KIP126.Literature.Route')
def route(n):return c(RT,n,'KIP126.Computation.Route')
def raw(n):return c(RA,n,'KIP126.Computation.Route.Raw')
ci=c(IF,'Inputs','KIP126.Computation.Route',occurrence=1)
sf=c(CO,'SphereFacts','KIP126.Computation.Route.Derived')
common=[ci,c(PR,'BasisCorrect','KIP126.Computation.Route'),c(PR,'SphereBasisValue','KIP126.Computation.Route'),c(PR,'Statement','KIP126.Computation.Route')]
entries={
'009':[c('KIP126/Def/ClassicalAdams/Moss/Statement/Predicates.lean','StatementAt','KIP126.Classical.Adams.Moss'),c('KIP126/Def/ClassicalAdams/Moss/Crossing/Predicates.lean','HasMossCrossing','KIP126.Classical.Adams.Moss'),inter('MossSourceInput'),lit('ThetaBMossInput')],
'013':common+[raw('degrees'),raw('claims'),route('stem125_e5_zero_finite'),route('sphere_page_zero_stem125_tail')],
'017':[inter('TodaInputs'),inter('TodaSourceResults'),inter('TodaApplication'),lit('TripleToda'),lit('QuotientAlgebras')],
'018':[inter('TodaInputs'),inter('TodaApplication'),lit('TripleToda'),lit('syntheticTwo')],
'019':[c('KIP126/Def/StableHomotopy/Toda/Predicates.lean','Relation','KIP126.StableHomotopy.Toda'),c('KIP126/Def/StableHomotopy/Toda/Coset/Proofs.lean','relation_iff_indeterminacy','KIP126.StableHomotopy.Toda'),c('KIP126/Def/StableHomotopy/Toda/Juggling/Proofs.lean','juggling','KIP126.StableHomotopy.Toda')]+[c('KIP126/Def/StableHomotopy/Toda/Law/Proofs.lean',n,'KIP126.StableHomotopy.Toda') for n in ['precompose','postcompose','absorb_first','absorb_last','shuffle_iff']],
'020':[inter('TmfSourceResults'),lit('TmfSourceData'),lit('TmfSourceData.unit'),lit('TmfBinding')],
'021':[inter('TmfSourceResults'),lit('TmfSourceData'),lit('TmfSourceData.high125'),lit('TmfLabels.Standard'),route('high125_detected_choice_unique')],
'022':[sf,route('sphere_facts')]+[c(CL,n,'KIP126.Computation.Near126') for n in ['B','X','correction']],
'023':[sf,route('sphere_facts')]+[c(CL,n,'KIP126.Computation.Near126') for n in ['T','Y']],
'024':[sf,route('sphere_facts')]+[c(CL,n,'KIP126.Computation.Near126') for n in ['P','Q']]+[c(PR,'Statement','KIP126.Computation.Route')],
'030':[sf,ci,raw('degrees'),raw('claims'),raw('products')],
'031':[ci,raw('products'),raw('claims')],
'032':[ci,raw('products'),sf],
}
for k in ['025','026','027','028','029']:
 entries[k]=common+[raw('degrees'),raw('claims'),route('permanent_cycle_of_reaches1000')]
records=[]
for key,candidates in entries.items():
 dep=D['EXT-'+key]
 queries=[x['name'].split('.')[-1] for x in candidates]
 q='|'.join(re.escape(x) for x in queries)
 proc=subprocess.run(['rg','-n',q,'KIP126/Def','KIP126/Interface','KIP126/Main/Solution','KIP126/LinProgram/Route','KIP126/LinProgram/Interpretation'],cwd=ROOT,text=True,stdout=subprocess.PIPE)
 log='records/search-round1-EXT-'+key+'.log';(OUT/log).write_text(proc.stdout)
 records.append({'dependency_id':dep['id'],'proposition_version':dep['proposition_version'],'fixed_used_statement':dep['used_statement'],'used_statement_sha256':hashlib.sha256(dep['used_statement'].encode()).hexdigest(),'round':1,'scope':['KIP126/Def','KIP126/Interface','KIP126/Main/Solution','KIP126/LinProgram'],'queries':queries,'evidence_file':log,'candidates':candidates,'search_notes':'实际读取当前完整声明和词法上下文。纯数字Raw记录需独立比较命名基、完整性及全页与有限页；conditional structure不意味着实例存在。generic Toda/Moss和特殊应用范围须独立比对。'})
write_round(1,records)
print('Submitted',len(records),'frozen dependencies')
