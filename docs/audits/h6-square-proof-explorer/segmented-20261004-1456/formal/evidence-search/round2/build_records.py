import pathlib,json,hashlib,re,datetime
ROOT=pathlib.Path(__file__).resolve().parents[7]
RUN=ROOT/'docs/audits/h6-square-proof-explorer/segmented-20261004-1456'
OUT=RUN/'formal/evidence-search/round2'
sha=lambda b:hashlib.sha256(b).hexdigest()
idx={}
def decl(fqn,path,marker,end=None,kind='definition',typ=None,context=None,note=None):
 p=ROOT/path;text=p.read_text();lines=text.splitlines();a=next(i for i,l in enumerate(lines) if marker in l)
 b=next((i for i in range(a+1,len(lines)) if (end in lines[i] if end else not lines[i].strip())),len(lines))
 dest=OUT/'sources'/path;dest.parent.mkdir(parents=True,exist_ok=True);dest.write_text(text)
 idx[path]={'path':path,'sha256':sha(p.read_bytes()),'snapshot':str(dest.relative_to(RUN))}
 return {'fqn':fqn,'path':path,'line':a+1,'end_line':b,'kind':kind,'full_type':typ,
  'implicit_context':context or [],'source_declaration':'\n'.join(lines[a:b]),
  'imports':re.findall(r'^import (.+)$',text,re.M),'source_sha256':sha(p.read_bytes()),
  'snapshot':str(dest.relative_to(RUN)),'preliminary_semantic_reading':note}

context=['universe u v','{C : Type u}','[StableHomotopyCategory.{u,v} C]',
 '[MonoidalPreadditive C]','H : Mod2EilenbergMacLane (C := C)',
 'R : Mod2RingStructure H','K : Mod2CooperationKunneth H R','B : Mod2ReducedMilnorBasis H R',
 '[HasFunctorialCofiber (C := C)]','[(tensorLeft H.HF2).CommShift ℤ]',
 '[(tensorLeft H.HF2).IsTriangulated]']
word=decl('KIP126.Classical.Adams.sphereTowerHomologyWordEquiv',
 'KIP126/Def/ClassicalAdams/TowerHomology/MilnorCoordinates/Data.lean',
 'def sphereTowerHomologyWordEquiv',context=context,
 typ='∀ (s : ℕ) (n : ℤ), mod2HomologyF2 H R n (adamsTower H.unit SphereSpectrum s) ≃ₗ[ZMod 2] (MilnorWord s (n+s) →₀ ZMod 2)',
 note='新候选：覆盖所有整数n；取n=t−s，则词次数严格等于整数t。不是t.toNat截断。需要通过adamsPageOneHomologyF2Equiv接到E₁，再由商页得到E₂。')
word['candidate_id']='R2-C001-word-coordinates'
nonneg=decl('KIP126.Steenrod.Milnor.milnorWord_degree_nonneg',
 'KIP126/Def/Steenrod/MilnorCobar/Polynomial/Monomials/Words/Proofs.lean',
 'theorem milnorWord_degree_nonneg',kind='theorem',
 typ='∀ {s : ℕ} {t : ℤ} (d : KIP126.Steenrod.Milnor.MilnorWord s t), 0 ≤ t',
 note='与前项组合排除t<0的词；覆盖全部s。定理体完整且无sorry。')
nonneg['candidate_id']='R2-C001-word-nonneg'

support=[]
for args in [
 ('KIP126.Steenrod.Milnor.MilnorWord','KIP126/Def/Steenrod/MilnorCobar/Polynomial/Monomials/Words/Data.lean','abbrev MilnorWord',None,'abbreviation','(s : ℕ) → (t : ℤ) → Type'),
 ('KIP126.Steenrod.Milnor.MilnorMonomial','KIP126/Def/Steenrod/MilnorCobar/Polynomial/Monomials/Full/Data.lean','abbrev MilnorMonomial',None,'abbreviation','(n : ℤ) → Type'),
 ('KIP126.Steenrod.Milnor.Ext.Cofree.wordSpace','KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean','def wordSpace',None,'definition','(s : ℕ) → GrVect F2'),
 ('KIP126.Steenrod.Milnor.Ext.Cofree.term','KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean','def term (s',None,'definition','(s : ℕ) → RightComodule Coalgebra.dualSteenrod'),
 ('KIP126.Steenrod.Milnor.Coalgebra.Carrier','KIP126/Def/Steenrod/MilnorCoalgebra/Raw/Data.lean','abbrev Carrier',None,'abbreviation','(n : ℤ) → Type'),
 ('KIP126.Steenrod.Milnor.Ext.CobarResolution','KIP126/Def/Steenrod/MilnorExt/Resolution/Data.lean','structure CobarResolution',None,'structure','Type'),
 ('KIP126.Foundation.CooperationInput','KIP126/Def/StableHomotopy/Implementation/Data.lean','structure CooperationInput',None,'structure','(F : FoundationInput) → [TensorInput F] → (M : MilnorInput F) → Type'),
 ('KIP126.Foundation.TensorInput','KIP126/Def/StableHomotopy/Implementation/Data.lean','class TensorInput',None,'class','(F : FoundationInput) → Type'),
 ('KIP126.Classical.Adams.SphereVanishingLine','KIP126/Def/ClassicalAdams/SphereVanishing/Predicates.lean','def SphereVanishingLine',None,'definition','(H : Mod2EilenbergMacLane (C := C)) → Prop'),
 ('KIP126.Interface.Solution.adamsOneLine_other_degree','KIP126/Interface/Solution/AdamsOneLine.lean','theorem adamsOneLine_other_degree',None,'theorem','∀ (t : ℤ), (∀ j : ℕ, t ≠ ((2^j : ℕ) : ℤ)) → ∀ x : sphereAdamsData.Page 2 (1,t), x = 0'),
 ('KIP126.Algebra.GradedComodule.coefficientYoneda_apply','KIP126/Def/Algebra/GradedComodule/Ext/Multiplication/Proofs.lean','theorem coefficientYoneda_apply',None,'theorem','∀ (η : Coaugmentation C) (s s\' : ℕ) (t u : ℤ) (x : CoefficientExt η s t) (y : CoefficientExt η s\' u), coefficientYoneda η s s\' t u x y = (coefficientShift η t s\' u y).comp x (Nat.add_comm s\' s)'),
 ('KIP126.Algebra.GradedComodule.coefficientYoneda','KIP126/Def/Algebra/GradedComodule/Ext/Multiplication/Data.lean','def coefficientYoneda',None,'definition','(η : Coaugmentation C) → (s s\' : ℕ) → (t u : ℤ) → CoefficientExt η s t →ₗ[K] CoefficientExt η s\' u →ₗ[K] CoefficientExt η (s+s\') (t+u)'),
 ('KIP126.Steenrod.Milnor.Ext.Cofree.cupBilinear','KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean','def cupBilinear',None,'definition','(s s\' : ℕ) → TensorPower s →ₗ[F2] TensorPower s\' →ₗ[F2] TensorPower (s+s\')'),
 ('KIP126.Steenrod.Milnor.Ext.Cofree.termPolynomial_injective','KIP126/Def/Steenrod/MilnorExt/Cofree/Proofs.lean','theorem termPolynomial_injective',None,'theorem','∀ (s : ℕ) (n : ℤ), Function.Injective (termPolynomial s n)'),
]:
 f,p,m,e,k,t=args;support.append(decl(f,p,m,e,k,t))

# Complete source files supplying the actual E1 and quotient-page endpoints.
for path in ['KIP126/Def/ClassicalAdams/TowerHomology/MilnorCoordinates/Basic/Data.lean',
 'KIP126/Def/ClassicalAdams/TowerHomology/Kunneth/Iterated/Data.lean',
 'KIP126/Def/ClassicalAdams/TowerVanishing/Proofs.lean',
 'KIP126/Def/Steenrod/MilnorModule/Comparison/Predicates.lean',
 'KIP126/Def/Steenrod/MilnorExt/Multiplication/Data.lean',
 'KIP126/Def/ClassicalAdams/MilnorCohomology/Multiplication/Data.lean']:
 p=ROOT/path;dest=OUT/'sources'/path;dest.parent.mkdir(parents=True,exist_ok=True);dest.write_bytes(p.read_bytes())
 idx[path]={'path':path,'sha256':sha(p.read_bytes()),'snapshot':str(dest.relative_to(RUN))}

old=json.loads((RUN/'formal/search-round1.json').read_text())
feedback=RUN/'formal/evidence-check/feedback-search-round2.json'
queries=json.loads((OUT/'index.json').read_text())
items=[]
for ident in ['EXT-001','EXT-003']:
 base=next(x for x in old['items'] if x['id']==ident)
 item={k:base[k] for k in ['id','version','used_statement','used_statement_sha256','source_dependency_file','dependency_file_sha256','fixed_by_review']}
 item.update({'round':2,'feedback':'formal/evidence-check/feedback-search-round2.json',
   'feedback_sha256':sha(feedback.read_bytes()),'previous_round':'formal/search-round1.json',
   'previous_checker_verdict':'not_passed','semantic_status':None,'proof_status':None,
   'candidates':[word,nonneg] if ident=='EXT-001' else [],
   'search_scope':{'root':'KIP126/','targets': '全整数t比较及双方消失' if ident=='EXT-001' else 'cobar cup到right-comodule Yoneda，以及actual left-module标准平方非零'},
   'queries':[q['record_id'] for q in queries],'records':queries,
   'supplemental_evidence':support,
   'searcher_outcome':'new_partial_candidates_and_evidence' if ident=='EXT-001' else 'no_new_bridge_candidate_after_targeted_search',
   'termination_rule':'本轮无新完整匹配不改写成未找到；前轮已有候选失败，等待独立Checker复核/指定第3轮。'})
 if ident=='EXT-001':
  item['instantiation_proposal']=[
   '令 c=KIP126.Def.fixedImplementation，C=c.foundationInput.Spectrum，H=c.foundationInput.hf2；用c.tensorInput给全部tensor/triangulated实例，R/K/B分别取c.cooperationInput.ring/kunneth/basis。',
   'sphereTowerHomologyWordEquiv H R K B s (t−s) 的词次数为(t−s)+s=t，对所有s:ℕ、t:ℤ均真实保留；milnorWord_degree_nonneg排除t<0的词。',
   '尚须Checker核实 adamsPageOneHomologyF2Equiv 到当前同一塔E₂的商页应用链，及其全部附加实例是否来自固定c。',
   '右余模Ext端新证据：E.cobarResolution.termIso在全部整数次数识别共自由term；term=wordSpace s⊗dualSteenrod，两个系数均非负度支持。尚未发现仓库中已命名的全s负t Ext消失定理；从分解到Ext的必要一般构造与实例化交Checker核查。']
  item['discarded_nearby_hits']=[
   {'fqn':'KIP126.Classical.Adams.SphereVanishingLine','reason':'要求正stem 0<t−s，不能用于s≥0,t<0。'},
   {'fqn':'KIP126.Interface.Solution.adamsOneLine_other_degree','reason':'只覆盖s=1；不能覆盖全部s。'},
   {'fqn':'KIP126.Classical.Adams.adamsTowerInternal_page_subsingleton_of_negative','reason':'negative指s<0，不是内部次数t<0。'}]
 else:
  item['findings']=[
   '新的精确低层公式coefficientYoneda_apply把实际Yoneda展开为内部移位后的derived composition，但没有涉及cobar cup或E.comparison。',
   'Cofree.cupBilinear用于共自由项的多项式坐标，不是Ext Yoneda运算；termPolynomial_injective只给坐标单射且源码sorry。',
   'rg全KIP126的extMk×comp/mul/cup定向模式返回exit1（无匹配）。',
   'MilnorExt/MilnorModule全部声明列表没有标准h₆ actual Yoneda平方非零定理；不重复提交第1轮右Yoneda→左Yoneda候选。',
   '未找到新的同一E、同一E.cobarResolution的cobar cup→右余模Yoneda桥；此为检索未补足证据，不断言该数学对应不可能。']
 items.append(item)
data={'role':'Searcher','round':2,'created_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
 'items':items,'source_index':'formal/evidence-search/round2/source-index.json',
 'execution':'本轮只读源码与rg检索；没有编译新Lean检查或修改命题，未虚构#check结果。',
 'scope_control':'EXT-002首轮通过，不重查；未向数学角色传递Lean反馈。'}
(OUT/'source-index.json').write_text(json.dumps(list(idx.values()),ensure_ascii=False,indent=2)+'\n')
(RUN/'formal/search-round2.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'items':[x['id'] for x in items],'source_files':len(idx),'new_candidate_counts':{x['id']:len(x['candidates']) for x in items}},ensure_ascii=False))
