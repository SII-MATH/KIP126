from pathlib import Path
import json, hashlib, datetime, subprocess, copy
ROOT=Path(__file__).resolve().parents[6]
RUN=ROOT/'docs/audits/h6-square-proof-explorer/segmented-20261004-1456'
OUT=RUN/'formal/evidence-check'
sha=lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p: json.loads(p.read_text())
search=load(RUN/'formal/search-round1.json')
fixed=load(RUN/'math/T00-v2.dependencies.json')
source_index=load(RUN/'formal/evidence-search/source-index-round1.json')
extra=[
 'KIP126/Def/Algebra/Completion/Data.lean',
 'KIP126/Def/Algebra/Filtration/Data.lean',
 'KIP126/Def/SpectralSequence/Basic/Data.lean',
 'KIP126/Def/ClassicalAdams/TowerSSData/Differential/Data.lean',
 'KIP126/Def/Steenrod/MilnorCobar/Hi/Data.lean',
 'KIP126/Def/Steenrod/MilnorModule/Resolution/Data.lean',
 'KIP126/Def/StableHomotopy/Context/Data.lean'
]
records=[]
for p in sorted({x['path'] for x in source_index}|set(extra)):
 raw=(ROOT/p).read_bytes();target=OUT/'sources'/p;target.parent.mkdir(parents=True,exist_ok=True);target.write_bytes(raw)
 previous=next((x for x in source_index if x['path']==p),None)
 module=ROOT/'.lake/build/lib/lean'/Path(p).with_suffix('.olean')
 records.append({'path':p,'sha256':sha(ROOT/p),'searcher_sha256':previous['sha256'] if previous else None,'unchanged_since_search':sha(ROOT/p)==previous['sha256'] if previous else None,'snapshot':str(target.relative_to(RUN)),'lines':len(raw.splitlines()),'source_mtime':(ROOT/p).stat().st_mtime,'olean_mtime':module.stat().st_mtime if module.exists() else None,'source_newer_than_olean':(ROOT/p).stat().st_mtime>module.stat().st_mtime if module.exists() else None})
now=datetime.datetime.now(datetime.timezone.utc).isoformat()
provenance={'role':'Checker','created_utc':now,'git_commit':subprocess.check_output(['git','rev-parse','HEAD'],cwd=ROOT,text=True).strip(),'git_status':subprocess.check_output(['git','status','--short'],cwd=ROOT,text=True),'task_file':'/root/.codex/attachments/23f43443-ed3f-4624-98ff-31c5af3401d4/pasted-text.txt','boundaries_read':['AGENTS.md','PROJECT_BOUNDARY.md'],'current_source_authority':True,'source_files':records,'import_audit_scope':'固定声明、关键定义及直接相关桥接的当前源码已读取；未声称重新编译或审计整个传递依赖闭包。','commands_with_nonzero_exit':[{'command':'rg -n [definition patterns] KIP126/Def/Algebra/Filtration/Data.lean KIP126/Def/Algebra/Completion/Data.lean KIP126/Def/SpectralSequence/Basic KIP126/Def/ClassicalAdams/TowerSSData KIP126/Def/StableHomotopy/HomotopyGroups KIP126/Def/Steenrod/MilnorCobar','exit_code':2,'reason':'HomotopyGroups路径不存在；其他路径仍输出结果。','followup':'随后对KIP126/Def/StableHomotopy检索def HomotopyGroup，在Context/Data.lean:133定位并保存源文件。'}]}
(OUT/'source-audit-round1.json').write_text(json.dumps(provenance,ensure_ascii=False,indent=2)+'\n')

common_bridges=[
 {'name':'固定模型和选定见证','result':'standardFoundation = fixedImplementation.foundationInput.toStandard；standardMilnorCooperations来自同一fixedImplementation.milnorInput。其SourceComparison保留completed sphere、HF₂对象、单位、悬挂及同伦群比较，不独立换取另一球谱。','evidence':['KIP126/Def/StageInput.lean:7','KIP126/Def/StageInput/Foundation.lean:6','KIP126/Def/StageInput/Milnor.lean:6','KIP126/Def/StableHomotopy/Implementation/Data.lean:283','KIP126/Def/StableHomotopy/Implementation/Comparison.lean:27']},
 {'name':'cobar→右余模Ext→左模Ext','result':'选取cobarDerivedExtComparison H M提供的E，再只对E.cobarResolution使用exists_dualCobarComparison。前者comparison由实际多项式cocycle及extMk约束；后者PreservesDualCobarRepresentatives使用同一resolution的实际对偶代表，保持(s,t)。这些是明确的声明及待证存在性，不把任意同维等价视为规范比较。','evidence':['KIP126/Def/Comparison/StageInterfaces.lean:477','KIP126/Def/Comparison/StageInterfaces.lean:496','KIP126/Def/Comparison/StageInterfaces/Proofs/Cobar.lean:23','KIP126/Def/Steenrod/MilnorModule/Comparison/Predicates.lean:19','KIP126/Def/Steenrod/MilnorModule/Comparison/Proofs.lean:15']}
]

axes1=[
 {'axis':'objects_models','status':'matched','reason':'sphereAdamsData为固定HF₂单位在固定SphereSpectrum上的实际Adams塔构造；SourceComparison.sphere/homotopy及completedSphere_twoComplete、completedSphere_moore_universal把该球绑定到同一个2完成源球。后两者的sorry属于证明状态。'},
 {'axis':'quantifiers_order','status':'partial','reason':'强收敛、过滤及关联分次量化所有整数n,s,t；E₂比较只量化s,t:ℕ。固定used_statement未把E₂限定到t≥0，不能只检查(2,128)后宣称整个E₂等式通过。'},
 {'axis':'premises_parameters_witnesses','status':'matched_as_stated_obligations','reason':'取固定H、M。BHSObjectApplicability同时含nilpotent_complete及strongly_convergent；producer无额外实质性假设。派生Ext比较有Nonempty存在性声明，其选定E和E.cobarResolution可一致地用于左右模型比较。'},
 {'axis':'degrees_filtration_pages_range','status':'partial','reason':'r₀=2且diffDeg r=(r,r−1)由sphereAdamsModel/adamsTowerPreSS定义给出。associatedGraded s (t−s)在t=n+s时为F^s π_n/F^(s+1) π_n。尚缺负内部次数的同一E₂/Ext比较或双方消失证据。'},
 {'axis':'operations_maps_detection','status':'matched','reason':'adamsHomotopyFiltrationSubmodule是同一塔映射在HomotopyGroup上的LinearMap.range；associatedGraded是相邻过滤包含的cokernel，E∞是无限cycles/boundaries的商。不是任意选出的过滤或检测关系。'},
 {'axis':'existence_nonzero_strength','status':'matched','reason':'固定命题不要求某个类非零。StronglyConvergent明确要求完备、分离和E∞到关联分次的同构存在，不把无出射或逐页循环当成强收敛。'},
 {'axis':'model_comparison_bridges','status':'evidence_missing_for_full_range','reason':'正内部次数有完整的加法模型比较链；全整数t的右到左Ext比较并不能补足只在t:ℕ定义的塔E₂到右Ext比较。没有确认矛盾，当前是范围证据不足。'}
]
axes2=[
 {'axis':'objects_models','status':'matched','reason':'producer使用同一固定球的实际tower E₂；internalEquiv与左右Ext比较把它送入以Milnor煤代数实际卷积对偶为Steenrod代数的左模derived Ext。'},
 {'axis':'quantifiers_order','status':'matched','reason':'∀j:ℕ恰好对应所有整数j≥0；比较族在任何j实例化前选取，适用于所有j，不限j=6或有限范围。'},
 {'axis':'premises_parameters_witnesses','status':'matched_as_stated_obligations','reason':'producer无额外前提。采用同一H、M以及存在性声明给出的E，再对E.cobarResolution取e；不把字段所需self当成已实现接口。'},
 {'axis':'degrees_filtration_pages_range','status':'matched','reason':'全部类在Page 2 (1,2^j)，该内部次数非负所以已提供的自然数次数比较足够。j=6直接给(1,64)。不要求覆盖source_statement中的其他t消失。'},
 {'axis':'operations_maps_detection','status':'matched','reason':'hi由hiCochain经实际homology quotient定义；comparison_hi及代表元约束保持该类。此固定命题没有乘法或高页检测要求。'},
 {'axis':'existence_nonzero_strength','status':'matched','reason':'hi≠0且∀x,x=0∨x=hi，经加法等价后仍是Ext中恰有0和一个非零元素。该Ext本来是F₂向量空间，非零元线性独立并张成，故维数1且是唯一非零生成元。'},
 {'axis':'model_comparison_bridges','status':'matched','reason':'只需加法等价保持0和非零性。维数1由目标本身的F₂模结构和两元素结论推出，无需额外假定塔Page已经装有某个F₂线性等价。'}
]
axes3=[
 {'axis':'objects_models','status':'partial','reason':'standardH6Square在固定塔E₂(2,128)中；已给加法比较到左右derived Ext，但候选的非零元素首先是标准cobar concatenation类。'},
 {'axis':'quantifiers_order','status':'matched','reason':'固定命题仅j=6；generic hiSquare_six_ne_zero可对同一固定H、M实例化，没有要求一般所有平方非零。'},
 {'axis':'premises_parameters_witnesses','status':'matched_as_stated_obligations','reason':'一般nonzero定理显式依赖H和M；fixed implementation存在性仍sorry。比较需同一E和E.cobarResolution，右到左乘法定理仅在PreservesDualCobarRepresentatives前提下适用，该前提的存在性已明确陈述。'},
 {'axis':'degrees_filtration_pages_range','status':'matched','reason':'(1,64)+(1,64)=(2,128)，hiSquare_internalDegree负责64+64=128的重指标；全部处于自然数比较范围，无页数或次数差异。'},
 {'axis':'operations_maps_detection','status':'not_established','reason':'hiSquare_eq_cup证明cobar cup平方，preservesYoneda_of_preservesDualCobarRepresentatives只连接右余模和左模的实际Yoneda。仍没有把E.comparison(cup h₆ h₆)等同于右余模Yoneda(E.comparison h₆,E.comparison h₆)的声明/已展开证明。'},
 {'axis':'existence_nonzero_strength','status':'partial','reason':'generic和固定theorem都给cobar类在E₂的非零性；经线性等价可得其Ext像非零。未识别该像为Yoneda平方前，这不足以得到固定used_statement。SphereSquareInterface的standard_class仍只识别同一个cobar类。'},
 {'axis':'model_comparison_bridges','status':'evidence_missing','reason':'缺的是第一段乘法桥cobar cup→右余模Yoneda；已有第二段右Yoneda→左Yoneda不能补它。没有发现候选断言相反命题，不能写成确认矛盾。'}
]

reasons={
 'EXT-001':{
  'semantic_status':'incomplete','round_verdict':'not_passed',
  'short_reason':'已找到固定球塔的强收敛、正确微分次数和非负内部次数的 E₂—Ext 比较；固定命题完整次数范围所需的负内部次数比较或消失证据尚缺，需第二轮检索。',
  'full_reason':'当前源码足以逐项对应强收敛部分：IsAdamsTowerStronglyConvergent要求实际塔像过滤的完备性、分离性和E∞到该过滤关联分次的同构；associatedGraded与towerAbutment展开后正是F^sπ_n/F^(s+1)π_n。固定模型经sourceComparison和完成球的两个命题绑定到2完成球。sphereAdamsModel从同一塔定义且微分次数为(r,r−1)。在s,t∈ℕ内，internalEquiv组合MilnorCohomology.comparison和E.comparison；取与E.cobarResolution相容的dualCobarComparison可得到左Steenrod模Ext。该组合没有覆盖塔页已有的负内部整数次数，而used_statement并未只说(2,128)或t≥0。第一轮因此仅部分覆盖，需定向补查；此判断没有要求任意谱X的来源一般性，也没有因sorry本身拒绝语义。',
  'axes':axes1,
  'formal_status':{'summary':'强收敛producer、固定基础存在性及两个Ext比较存在性含sorry；接口字段是显式假设，Main消费时来自challenge2公理。当前源的整个依赖闭包未重编译。','classifications':['contains_sorry','depends_on_unfinished_proof','interface_assumption','main_axiom_input_if_using_consumer'],'axioms_observed':['propext','sorryAx','Classical.choice','Quot.sound'],'source_direct_sorry':['KIP126.Interface.Solution.standardSphereApplicability','KIP126.Def.Solution.implementation_exists','KIP126.Def.Comparison.StageInterfaces.cobarDerivedExtComparison','KIP126.Steenrod.Milnor.Module.exists_dualCobarComparison','KIP126.StableHomotopy.Implementation.completedSphere_twoComplete','KIP126.StableHomotopy.Implementation.completedSphere_moore_universal']},
  'next_search':[{'priority':1,'target':'固定球tower E₂与actual left/right Ext在t<0的比较，或二者消失的匹配声明','scope':['KIP126/Def/ClassicalAdams','KIP126/Def/Steenrod','KIP126/Interface'],'suggested_patterns':['negative','neg','t < 0','IsZero','Subsingleton','connective','boundedBelow','other_degree'],'required_evidence':'完整类型、所有前提、当前源码位置；若以双方为零补齐，须覆盖所有s:ℕ而非仅s=1，并保持同一fixed H/M/塔。不要把t.toNat=0代替负t。'},{'priority':2,'target':'如已有全整数内部次数的E₂比较，给出实际实例化链和其与固定球tower的等式','required_evidence':'可沿已有定义和声明补证，不新增Lean命题，不缩小used_statement。'}]
 },
 'EXT-002':{
  'semantic_status':'passed','round_verdict':'passed',
  'short_reason':'全体 j≥0 的标准类非零且所在 E₂ 群恰有两个元素；沿同一模型的 Ext 比较可得一维 F₂ 空间及唯一非零生成元，j=6 给出次数 (1,64)。',
  'full_reason':'adamsOneLine_at_power的完整结论是∀j:ℕ，指定Sphere.Internal.hi非零，且Page 2 (1,2^j)的任意元素为0或该hi。standardFoundation和standardMilnorCooperations来自同一固定implementation。先用同一H/M的cobarDerivedExtComparison选择E；internalEquiv E 1 (2^j)把塔E₂送到右余模derived Ext；再对E.cobarResolution使用exists_dualCobarComparison给出的代表元相容e，送到左Steenrod模derived Ext。这是定义为Abelian.Ext的实际Ext，非重命名的cobar商。组合保持0、非零性、满射，故目标Ext恰有0和g_j两个元素。在该F₂向量空间中，g_j≠0使单元组线性独立，而两个元素性质使其张成，所以维数为1；g_j即唯一非零生成元。comparison_hi及两次代表元约束也把这个元素绑到标准hiCochain，而非凭名称认定。固定used_statement不要求其他次数消失或高页生存，因此不要求这些较强来源内容。选j=6时2^6=64。语义通过不意味着上述存在性或第一线计算已获无sorry形式证明。',
  'axes':axes2,
  'formal_status':{'summary':'第一线producer本体含sorry；Ext桥的存在性和固定模型构造也未完成。作为Challenge2字段消费时是接口假设，并受Main.challenge2公理支撑；不属于已完成形式化证明。','classifications':['contains_sorry','depends_on_unfinished_proof','interface_assumption','main_axiom_input_if_using_consumer'],'axioms_observed':['propext','sorryAx','Classical.choice','Quot.sound'],'source_direct_sorry':['KIP126.Interface.Solution.adamsOneLine_at_power','KIP126.Def.Solution.implementation_exists','KIP126.Def.Comparison.StageInterfaces.cobarDerivedExtComparison','KIP126.Steenrod.Milnor.Module.exists_dualCobarComparison']},
  'next_search':[]
 },
 'EXT-003':{
  'semantic_status':'incomplete','round_verdict':'not_passed',
  'short_reason':'候选证明的是标准 cobar 拼接平方在塔 E₂ 中非零；尚缺把该平方送到实际 Yoneda 平方的乘法桥接，只有加法等价和右、左 Ext 间的 Yoneda 相容性，需第二轮检索。',
  'full_reason':'standardH6Square按定义是hiSquareCochain 6的实际塔E₂类；hiSquareCochain是cobar cup的自乘，hiSquare_eq_cup和comparison_hiSquare确实保持这一代表。Sphere.h6Square_ne_zero通过实际homology quotient的零检测和cobar非边界计算证明其非零，generic内部版本再经同一塔页同构传递；没有用名称或表格字段代替这个判断。给定E，internalEquiv可把非零类送至derived Ext，且dualCobarComparison的乘法定理把右余模Yoneda送到左模Yoneda。但是E.comparison的字段目前只要求线性等价及每个cocycle的extMk代表公式，未提交cobar cup与右余模derived composition相容的完整声明或可逐步检查的已有推导。CobarCupCalculus止于cobar自乘，SphereSquareInterface.standard_class止于Lin像等于塔cobar类。缺少第一段乘法桥时，非零cobar类的Ext像尚未被核定为used_statement中的标准Yoneda平方。这里只登记证据缺失，不断言该数学桥不成立；首轮有候选未过必须继续定向检索。',
  'axes':axes3,
  'formal_status':{'summary':'一般H/M条件下的cobar非零性有实际证明体，已导入模块的#print axioms只列基础公理；固定standardH6Square版本依赖sorryAx（固定模型未完成）。现有Ext及乘法比较也含sorry，缺失的第一段桥没有可声明完成的证明。','classifications':['proved_under_listed_premises_for_generic_cobar_nonzero','depends_on_unfinished_proof_for_fixed_model','contains_sorry_in_ext_bridges','interface_assumption_for_square_delivery','unprovided_multiplicative_bridge'],'axioms_observed_generic_cobar':['propext','Classical.choice','Quot.sound'],'axioms_observed_fixed_square':['propext','sorryAx','Classical.choice','Quot.sound'],'source_direct_sorry':['KIP126.Def.Solution.implementation_exists','KIP126.Def.Comparison.StageInterfaces.cobarDerivedExtComparison','KIP126.Steenrod.Milnor.Module.exists_dualCobarComparison','KIP126.Steenrod.Milnor.Module.preservesYoneda_of_preservesDualCobarRepresentatives'],'generic_no_sorry_scope':'仅已导入olean中打印的两个generic定理；当前声明体已逐项核对，但不将旧olean输出升级为全部当前依赖已重编译结论。'},
  'next_search':[{'priority':1,'target':'E.comparison将cobar cup送到实际右余模Ext.yoneda的声明，或只对h₆所需平方的精确桥','scope':['KIP126/Def/Steenrod/MilnorExt','KIP126/Def/Comparison','KIP126/Def/ClassicalAdams/MilnorCohomology','KIP126/Interface'],'suggested_patterns':['cup','yoneda','extMk','comp','representatives','multiplicative','PreservesCup','CobarDerivedExtComparison'],'required_evidence':'给出完整类型及使用同一E、E.cobarResolution的条件；(1,64)×(1,64)→(2,128)的重指标也须保留。只提交右Yoneda→左Yoneda原候选不算补桥。'},{'priority':2,'target':'直接位于actual left-module SphereExt的标准h₆ Yoneda平方非零定理或接口字段','required_evidence':'须把h₆绑到第一线唯一非零类，并且所用运算展开为actual derived Yoneda；仅命名h6Square、Lin乘法或cobar cup不够。'}]
 }
}

candidate_notes={
'C001-convergence-producer':'强收敛部分语义相符；不是完整E₂=Ext声明，且源码本体sorry。',
'C001-convergence-field':'与producer同一强收敛命题，投影前提self不可删；属于接口输入。',
'C001-differential-degree':'当前构造精确给出初页2和(r,r−1)，与同一实际tower相连；本身不给收敛或Ext。',
'C-bridge-internal-ext':'加法桥保持同一H/M且有代表元约束，但只在s,t:ℕ；不能由线性等价推出乘法相容。',
'C-bridge-ext-exists':'提供E的存在性命题，因此不把E当作未声明新增假设；该存在性是sorry而非已实现数据。',
'C-bridge-right-left':'同一E.cobarResolution可实例化该全次数比较；完整代表元条件保持同一模型/整数t。源码sorry。',
'C002-one-line-producer':'与桥组合覆盖used_statement全部j≥0和标准非零生成元；body sorry单独列证明状态。',
'C002-one-line-field':'相同命题的字段，只有已有self才能投影，不能称接口已实现。',
'C003-standard-square-nonzero':'精确给固定cobar拼接平方非零；不单独识别actual Yoneda平方。',
'C003-generic-square-nonzero':'在显式H/M下由页同构传递cobar非零性，完整证明体存在；固定模型与Yoneda桥须另查。',
'C003-page-square-nonzero':'通过实际商的零检测与非边界计算证明cobar类非零，强度仅E₂，不包含高页结论。',
'C003-square-interface':'nonzero和standard_class用同一presentation把Lin像识别为标准cobar类；仍未触及cobar→Yoneda桥。',
'C003-yoneda-right-left':'精确陈述第二段右Yoneda→左Yoneda，但不提供第一段cobar cup→右Yoneda。源码sorry。'
}

execution=load(RUN/'formal/evidence-search/lean-inspect-execution-round1.json')
execution_note={'provenance':'Searcher真实执行结果，Checker独立读取输出及当前源码；本轮Checker未冒称重新运行或重编译。','execution_record':'formal/evidence-search/lean-inspect-execution-round1.json','execution_record_sha256':sha(RUN/'formal/evidence-search/lean-inspect-execution-round1.json'),'output':'formal/evidence-search/lean-inspect-round1.txt','output_sha256':sha(RUN/'formal/evidence-search/lean-inspect-round1.txt'),'exit_code':execution['exit_code'],'freshness_warning':'部分olean早于当前source，尤其Cobar.lean；当前源声明与输出逐项核对，但#print axioms反映已导入产物，不能保证整个当前传递依赖闭包无变化。','no_full_rebuild':True}

deps=[]
for source in fixed['dependencies']:
 d=reasons[source['id']]; s=next(x for x in search['items'] if x['id']==source['id'])
 digest=hashlib.sha256(source['used_statement'].encode()).hexdigest(); assert digest==s['used_statement_sha256']
 cs=copy.deepcopy(s['candidates'])
 for c in cs:
  c['checker_assessment']={'coverage':'constituent_only' if source['id']!='EXT-002' else 'supports_combined_match','reason':candidate_notes[c['candidate_id']],'current_source_sha256_verified':True}
 entry={'dependency_id':source['id'],'dependency_version':source['version'],'id':source['id'],'version':source['version'],'name':source['name'],'used_statement':source['used_statement'],'used_statement_sha256':digest,'source_dependency_file':'math/T00-v2.dependencies.json','source_dependency_file_sha256':sha(RUN/'math/T00-v2.dependencies.json'),'source_review':'reviews/T00-v2-review.json','source_review_sha256':sha(RUN/'reviews/T00-v2-review.json'),'semantic_status':d['semantic_status'],'status':d['semantic_status'],'short_reason':d['short_reason'],'full_reason':d['full_reason'],'formal_status':d['formal_status'],'formal_status_execution_scope':execution_note,'scope_comparison':d['axes'],'shared_bridges':common_bridges,'needs_search_round2':d['semantic_status']!='passed','rounds_completed':1,'is_terminal':d['semantic_status']=='passed','three_round_rule':'有候选首轮未过仅记录round verdict=not_passed；未完成第二、三轮时顶层semantic_status=incomplete，不显示红色三轮终态。' if d['semantic_status']!='passed' else '首轮语义通过，按规则结束本命题版本检索。','next_search':d['next_search'],'rounds':[{'round':1,'search_record':'formal/search-round1.json','search_record_sha256':sha(RUN/'formal/search-round1.json'),'verdict':d['round_verdict'],'semantic_status':d['round_verdict'],'reason':d['short_reason'],'candidates':cs,'search_queries':s['records'],'next_search':d['next_search']}],'checker_evidence':['formal/evidence-check/source-audit-round1.json','formal/evidence-search/source-index-round1.json','formal/evidence-search/lean-inspect-execution-round1.json','formal/evidence-search/lean-inspect-round1.txt'],'role_separation':'结论只交Master/Searcher；不用于改写数学固定命题或向Reasoner/Judger反馈。'}
 deps.append(entry)
report={'schema_version':1,'role':'Checker','created_utc':now,'round':1,'git_commit':provenance['git_commit'],'source_authority':'当前Lean源码；命名、注释、旧pass和编译exit0不替代语义检查。','dependencies':deps,'statistics':{'unique_dependencies':3,'passed':1,'not_found':0,'not_passed_terminal':0,'incomplete':2,'actual_search_rounds_by_dependency':{'EXT-001':1,'EXT-002':1,'EXT-003':1}},'evidence_index':'formal/evidence-check/source-audit-round1.json'}
for name in ['check-round1.json','checks-current.json']:
 (RUN/'formal'/name).write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
feedback={'role':'Checker','for_roles':['Master','Searcher'],'round':1,'dependencies':[{'dependency_id':d['dependency_id'],'dependency_version':d['dependency_version'],'used_statement_sha256':d['used_statement_sha256'],'round_verdict':d['rounds'][0]['verdict'],'next_search':d['next_search']} for d in deps if d['needs_search_round2']]}
(OUT/'feedback-search-round2.json').write_text(json.dumps(feedback,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'written':['formal/check-round1.json','formal/checks-current.json','formal/evidence-check/feedback-search-round2.json'],'source_snapshots':len(records),'unchanged_search_snapshots':sum(x['unchanged_since_search'] is True for x in records),'stats':report['statistics']},ensure_ascii=False))
