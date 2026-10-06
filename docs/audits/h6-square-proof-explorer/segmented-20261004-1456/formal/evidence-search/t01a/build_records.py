import pathlib, json, hashlib, datetime, re, subprocess
ROOT=pathlib.Path(__file__).resolve().parents[7]
RUN=ROOT/'docs/audits/h6-square-proof-explorer/segmented-20261004-1456'
OUT=RUN/'formal/evidence-search/t01a'
sha=lambda b:hashlib.sha256(b).hexdigest()
sources={}

def excerpt(path,marker,end=None):
    p=ROOT/path; text=p.read_text(); lines=text.splitlines(); a=next(i for i,l in enumerate(lines) if marker in l)
    b=next((i for i in range(a+1,len(lines)) if (end in lines[i] if end else not lines[i].strip())),len(lines))
    if path not in sources:
        dest=OUT/'sources'/path;dest.parent.mkdir(parents=True,exist_ok=True);dest.write_text(text)
        sources[path]={'path':path,'sha256':sha(p.read_bytes()),'imports':re.findall(r'^import (.+)$',text,re.M),
                       'snapshot':str(dest.relative_to(RUN))}
    return {'path':path,'line':a+1,'end_line':b,'source_declaration':'\n'.join(lines[a:b]),
            'imports':sources[path]['imports'],'file_sha256':sources[path]['sha256'],
            'complete_source_snapshot':sources[path]['snapshot']}

CTX=['universe u v w','{C : Type u}','[StableHomotopyCategory.{u,v} C]',
     '[HasFunctorialCofiber (C := C)]','{Syn : Type w}','[SyntheticCategory.{w,v} Syn]',
     '[HasFunctorialCofiber (C := Syn)]','H : Mod2EilenbergMacLane (C := C)',
     'M : MilnorCooperations H','N : NuFunctorData C Syn','F : SyntheticAdamsFamily Syn',
     'D : KIP126.Kervaire.Route.Model H M Syn']
OPEN=['CategoryTheory','KIP126.Classical.Adams','KIP126.StableHomotopy',
      'KIP126.StableHomotopy.Cohomology','KIP126.Synthetic.Context',
      'KIP126.Synthetic.SpectralSequence','KIP126.Classical.Adams.PageRepresentatives',
      'KIP126.Kervaire.Route','KIP126.Literature.Route']

def c(cid,fqn,path,marker,kind,typ,note,keys,ctx=None,end=None,proof='接口输入；不把投影当成实现。'):
    return {'candidate_id':cid,'fqn':fqn,'kind':kind,**excerpt(path,marker,end),
       'full_type':typ,'implicit_context':ctx or [],'open_context':OPEN,
       'key_definitions':keys,'preliminary_semantic_reading':note,
       'proof_status_observation':proof,'checker_result':None}

key_specs=[
 ('synthetic-context','KIP126/Def/Synthetic/Context/Data.lean','class SyntheticCategory','variable {Syn'),
 ('nu-data','KIP126/Def/Synthetic/Context/Data.lean','structure NuFunctorData','/-- The landing'),
 ('sphere','KIP126/Def/Synthetic/Sphere/Data.lean','noncomputable def Smn',None),
 ('sphere-unit','KIP126/Def/Synthetic/Sphere/Data.lean','noncomputable def S_0_0',None),
 ('lambda-powers','KIP126/Def/Synthetic/Context/Data.lean','noncomputable def lambdaPow','/-- The chosen cofiber'),
 ('lambda-quotient','KIP126/Def/Synthetic/Context/Data.lean','noncomputable def XModLambdaN',None),
 ('route-input','KIP126/Def/StableHomotopy/Implementation/Data.lean','structure RouteInput',None),
 ('model-data','KIP126/Def/Kervaire/Route/Model/Data.lean','structure ModelData','namespace ModelData'),
 ('model','KIP126/Def/Kervaire/Route/Model/Coherent/Data.lean','structure Model extends','end KIP126'),
 ('model-comparison','KIP126/Def/Kervaire/Route/Model/Predicates.lean','structure ComparisonCompatible','/-- Multiplicativity'),
 ('algebra-data','KIP126/Def/Kervaire/Route/SourceLanguage.lean','structure AlgebraData',None),
 ('source-statements','KIP126/Interface/Challenge/Challenge2.lean','structure Statements (B',None),
 ('bindings','KIP126/Interface/Challenge/Challenge2.lean','structure Bindings where','/-- External results'),
 ('eInfinity-input','KIP126/Interface/Challenge/Challenge2.lean','structure EInftyInput',None),
 ('synthetic-source-inputs','KIP126/Interface/Challenge/Challenge2.lean','structure SyntheticSourceInputs',None),
 ('sphere-foundation','KIP126/Def/StageInput/Foundation.lean','noncomputable def standardFoundation',None),
 ('fixed-foundation','KIP126/Def/StableHomotopy/Implementation/Fixed.lean','noncomputable def fixedImplementation',None),
 ('source-comparison','KIP126/Def/StableHomotopy/Implementation/Comparison.lean','structure SourceComparison','end KIP126'),
 ('two-complete-sphere','KIP126/Def/StableHomotopy/Implementation/Completion.lean','theorem completedSphere_twoComplete',None),
 ('family','KIP126/Def/Synthetic/AdamsSequence/Data.lean','structure SyntheticAdamsFamily',None),
 ('nu-quotient','KIP126/Def/Synthetic/AdamsSequence/Data.lean','def nuQuotient',None),
 ('lambda-degree','KIP126/Def/Synthetic/AdamsSequence/Data.lean','def lambdaDegree',None),
 ('tower-presentation','KIP126/Def/Synthetic/AdamsSequence/TowerComparison/Data.lean','structure TowerPresentation','end\n'),
 ('finite-model','KIP126/Def/ClassicalAdams/PageRepresentatives/Quotient/Data.lean','def finiteEInftyModel',None),
 ('cycle-quotient','KIP126/Def/ClassicalAdams/PageRepresentatives/Quotient/Data.lean','abbrev CycleQuotient',None),
 ('cycles','KIP126/Def/ClassicalAdams/PageRepresentatives/Data.lean','def cycles',None),
 ('boundaries','KIP126/Def/ClassicalAdams/PageRepresentatives/Data.lean','def boundaries',None),
 ('finite-window','KIP126/Def/ClassicalAdams/PageRepresentatives/Quotient/Window/Data.lean','def finiteEInftyWindow',None),
 ('finite-presentation','KIP126/Def/Synthetic/EInfty/Presentation/Data.lean','structure SyntheticEInftyPresentation',None),
 ('finite-formula','KIP126/Def/Synthetic/EInfty/Presentation/Data.lean','abbrev FiniteEInftyFormula',None),
 ('finite-maps','KIP126/Def/Synthetic/EInfty/Presentation/Predicates.lean','structure SyntheticEInftyMapCompatibility','end KIP126'),
 ('nilpotent-complete','KIP126/Def/ClassicalAdams/Completion/Predicates.lean','def IsENilpotentComplete',None),
 ('residual-tower','KIP126/Def/ClassicalAdams/Completion/Data.lean','def adamsResidualSequence',None),
 ('acyclic','KIP126/Def/StableHomotopy/InverseSequence/Predicates.lean','def InverseSequence.IsAcyclic',None),
 ('bhs-applicability','KIP126/Def/ClassicalAdams/Convergence/BHS/Predicates.lean','structure BHSObjectApplicability',None),
 ('tower-convergence','KIP126/Def/Synthetic/AdamsFiltration/Convergence/Data.lean','structure TowerConvergence',None),
 ('tower-filtration','KIP126/Def/Synthetic/AdamsFiltration/Convergence/Data.lean','def towerFiltration',None),
 ('separated','KIP126/Def/Kervaire/Route/Model/Predicates.lean','def HomotopySeparated',None),
 ('convergence-canonical','KIP126/Def/Synthetic/AdamsFiltration/Convergence/Canonical/Predicates.lean','def TowerConvergence.Canonical','end'),
]
keys=[{'key':k,**excerpt(p,m,e)} for k,p,m,e in key_specs]
exist=c('source-background','KIP126.Interface.Solution.Literature.Route.source_background_exists',
 'KIP126/Interface/Solution/Literature/Route/SourceExistence.lean','theorem source_background_exists','theorem',
 '∃ route : KIP126.Classical.Adams.StandardRouteInput, ∃ bindings : KIP126.Challenge2.ModelBindings route, '
 'Nonempty (KIP126.Challenge2.LiteratureInterface route bindings)',
 '存在性包把同一 synthetic category、ν、λ、合成族和 source inputs 一起交付；须逐字段核查所固定外部命题是否全在包中，不能从注释声称的 Pstrągowski construction 自动推出额外公式。',
 ['route-input','model-data','model','bindings','algebra-data','source-statements'],
 proof='源码直接 sorry；并非既成实现。')
applicability=c('sphere-applicability','KIP126.Interface.Solution.standardSphereApplicability',
 'KIP126/Interface/Solution/Foundation.lean','theorem standardSphereApplicability','theorem',
 'KIP126.Classical.Adams.BHSObjectApplicability KIP126.Def.fixedImplementation.foundationInput.countableProducts '
 'KIP126.Def.fixedImplementation.foundationInput.hf2.unit '
 '(KIP126.StableHomotopy.SphereSpectrum (C := KIP126.Def.fixedImplementation.foundationInput.Spectrum))',
 '同一 fixed sphere 的 BHSObjectApplicability 包含 nilpotent_complete，展开为实际残余 Adams 塔同伦极限消失；不是只给谱序列关联分次。',
 ['bhs-applicability','nilpotent-complete','residual-tower','acyclic','source-comparison','two-complete-sphere'],
 proof='源码直接 sorry；与T00同一候选，现用于不同固定命题 EXT-007。')

groups=[
 [exist,c('synthetic-lam','KIP126.Synthetic.Context.SyntheticCategory.lam',
 'KIP126/Def/Synthetic/Context/Data.lean','  lam :','class_field',
 '∀ {Syn : Type u} [self : KIP126.Synthetic.Context.SyntheticCategory.{u,v} Syn], '
 'KIP126.Synthetic.Context.SyntheticCategory.biShift (0,-1) ⟶ 𝟭 Syn',
 '提供 (0,−1) 到恒等函子的自然变换，球处给正确双次数。完整源码未在此字段要求它等于 ΣνS⁻¹→νΣS⁻¹ 的典范比较。',
 ['synthetic-context','nu-data','sphere','sphere-unit','lambda-powers'],
 ['universe u v','{Syn : Type u}','[self : SyntheticCategory.{u,v} Syn]'],end='  biShift_tensor_comm'),
 c('synthetic-symmetry','KIP126.Literature.Route.AlgebraData.syntheticSymmetric',
 'KIP126/Def/Kervaire/Route/SourceLanguage.lean','  syntheticSymmetric : SymmetricCategory Syn','structure_field',
 '∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] '
 '{Syn : Type w} [SyntheticCategory.{w,v} Syn] [HasFunctorialCofiber (C := Syn)] '
 '{H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} '
 '{D : KIP126.Kervaire.Route.Model H M Syn}, KIP126.Literature.Route.AlgebraData D → SymmetricCategory Syn',
 '对称幺半结构是 AlgebraData 的实际字段，不能仅从 SyntheticCategory（仅幺半）名称推断对称性。',
 ['algebra-data','bindings'],CTX,end='  realizationMonoidal')],
 [c('sphere-E2','KIP126.Kervaire.Route.ModelData.sphereE2',
 'KIP126/Def/Kervaire/Route/Model/Data.lean','  sphereE2 :','structure_field',
 '∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] '
 '{Syn : Type w} [SyntheticCategory.{w,v} Syn] [HasFunctorialCofiber (C := Syn)] '
 '{H : Mod2EilenbergMacLane (C := C)}, (D : KIP126.Kervaire.Route.ModelData H Syn) → '
 '∀ (s t : ℤ) (k : ℕ), E2 H SphereSpectrum s t ≃ₗ[ℤ] D.family.sphere.E₂ (s,t,t-k)',
 '仅覆盖 E₂ 中每个非负 λ 次幂的分量，次数准确。未包含 E₁ 自由多项式结构或 d₁ 线性延拓；不能把 E₂ 字段当作全命题。',
 ['model-data','family','lambda-degree','tower-presentation'],CTX),
 c('nu-lambda','KIP126.Kervaire.Route.ComparisonCompatible.nu_lambda',
 'KIP126/Def/Kervaire/Route/Model/Predicates.lean','  nu_lambda :','structure_field',
 '(h : KIP126.Kervaire.Route.ComparisonCompatible D) → ∀ (X : ClassicalObject) (s t : ℤ) (k : ℕ) '
 '(x : E2 H (X.obj D.auxiliary) s t), HEq '
 '(familyPageMap D.family (SyntheticCategory.lam.app (D.nu.functor.obj (X.obj D.auxiliary))) '
 '2 (s,t,t-1-k) (D.nuE2 X (-1) s t k x)) (D.nuE2 X 0 s t (k+1) x)',
 '补充 E₂ 分量与实际 λ 映射的相容性；仍没有 E₁ 张量、d₁、逐层余纤维的自由多项式同构。',
 ['model-data','model-comparison'],CTX,end='  /-- Naturality')],
 [c('finite-EInfinity','KIP126.Synthetic.SpectralSequence.SyntheticEInftyPresentation.finite',
 'KIP126/Def/Synthetic/EInfty/Presentation/Data.lean','noncomputable def finite (P','definition',
 '∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] '
 '{Syn : Type w} [SyntheticCategory.{w,v} Syn] [HasFunctorialCofiber (C := Syn)] '
 '{H : Mod2EilenbergMacLane (C := C)} {N : NuFunctorData C Syn} {F : SyntheticAdamsFamily Syn}, '
 '(P : SyntheticEInftyPresentation H N F) → (X : C) → (q : ℕ) → (hq : 0 < q) → '
 '(p : ℤ × ℤ) → (w : ℤ) → ((F.nuQuotient N X q).sequence.ssData (p.1,p.2,w)).eInfty ≃ₗ[ℤ] '
 'finiteEInftyModel H X q p w',
 '精确合并 q≥2 的 quotient 字段与 q=1 的 specialFiber 字段；finiteEInftyModel 展开给 0≤t−w<q 的 Z_(q−t+w)/B_(1+t−w)，其余严格零模块。仅 E∞，无自动强收敛。',
 ['finite-presentation','finite-formula','finite-model','cycle-quotient','cycles','boundaries','nu-quotient'],CTX,
 proof='已给条件定义，输入 P 是接口假设，必须由 source package 提供。'),exist],
 [applicability,c('nilpotent-field','KIP126.Classical.Adams.BHSObjectApplicability.nilpotent_complete',
 'KIP126/Def/ClassicalAdams/Convergence/BHS/Predicates.lean','  nilpotent_complete :','structure_field',
 '∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] '
 '{H : C} {products : CategoryTheory.Limits.HasProductsOfShape ℕ C} {unit : 𝟙_ C ⟶ H} {X : C}, '
 'BHSObjectApplicability products unit X → (letI := products; IsENilpotentComplete unit X)',
 '只需把 standardSphereApplicability 投到此字段，保留同一 products、unit 和 sphere；字段本身不是无需前提的定理。',
 ['bhs-applicability','nilpotent-complete','residual-tower','acyclic'],CTX,end='  strongly_convergent')],
 [c('route-convergence','KIP126.Kervaire.Route.ModelData.convergence',
 'KIP126/Def/Kervaire/Route/Model/Data.lean','  convergence :','structure_field',
 '(D : KIP126.Kervaire.Route.ModelData H Syn) → ∀ X : SyntheticObject, '
 'TowerConvergence (nuCoefficientUnit H.unit D.nu) D.family (X.obj D.nu D.auxiliary)',
 '所选对象闭包（含球及所有有限 λ 商）有实际 towerFiltration 的 E∞/关联分次同构。TowerConvergence 只含 identification，不含过滤完备性。',
 ['model-data','tower-convergence','tower-filtration','nu-quotient'],CTX,end='  classicalConvergence'),
 c('route-separated','KIP126.Kervaire.Route.Model.homotopySeparated',
 'KIP126/Def/Kervaire/Route/Model/Coherent/Data.lean','  homotopySeparated :','structure_field',
 '(D : KIP126.Kervaire.Route.Model H M Syn) → KIP126.Kervaire.Route.HomotopySeparated D.toModelData',
 '另一个字段提供所选对象双分次同伦过滤的 Hausdorff 性；须与同一 ModelData.convergence 配套。固定命题还要求完整性及任意符合条件的 X，这两个字段没有直接给出。',
 ['model','model-data','separated','tower-filtration'],CTX,end='  sphereProductCommutative'),exist],
]

deps=json.loads((RUN/'math/T01a-v1.dependencies.json').read_text())['dependencies']
queries=json.loads((OUT/'index-round1.json').read_text())
data={'role':'Searcher','round':1,'task_id':'T01a','created_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
 'git_commit':subprocess.check_output(['git','rev-parse','HEAD'],cwd=ROOT,text=True).strip(),
 'items':[],'shared_key_definitions':keys,'source_index':'formal/evidence-search/t01a/source-index.json',
 'role_separation':'仅提交候选与初解，最终语义判定留给独立Checker；无信息回传数学角色。'}
for dep,cs in zip(deps,groups):
 data['items'].append({'id':dep['id'],'version':dep['version'],'round':1,'used_statement':dep['used_statement'],
 'used_statement_sha256':sha(dep['used_statement'].encode()),'name':dep['name'],
 'source_dependency_file':'math/T01a-v1.dependencies.json',
 'dependency_file_sha256':sha((RUN/'math/T01a-v1.dependencies.json').read_bytes()),
 'fixed_by_review':'reviews/T01a-v1-review.json','candidates':cs,
 'searcher_outcome':'candidates_submitted_to_checker','semantic_status':None,'proof_status':None,
 'search_scope':{'root':'KIP126/','kinds':['theorem','axiom','definition','structure_field','class_field','explicit_hypothesis','implicit_hypothesis'],
 'primary':['Def/Synthetic','Def/ClassicalAdams','Def/Comparison','Def/Kervaire/Route','Def/StableHomotopy','Interface']},
 'queries':[q['record_id'] for q in queries],'records':queries,
 'execution_record':'formal/evidence-search/t01a/lean-execution.json'})
(OUT/'source-index.json').write_text(json.dumps(list(sources.values()),ensure_ascii=False,indent=2)+'\n')
(RUN/'formal/search-T01a-round1.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'items':len(data['items']),'candidate_counts':{x['id']:len(x['candidates']) for x in data['items']},'sources':len(sources)},ensure_ascii=False))
