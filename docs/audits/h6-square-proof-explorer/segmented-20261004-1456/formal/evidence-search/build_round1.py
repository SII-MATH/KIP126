import datetime
import hashlib
import json
import pathlib
import re
import subprocess

ROOT = pathlib.Path(__file__).resolve().parents[6]
RUN = ROOT / 'docs/audits/h6-square-proof-explorer/segmented-20261004-1456'
OUT = RUN / 'formal/evidence-search'
sha = lambda b: hashlib.sha256(b).hexdigest()
dependency_path = RUN / 'math/T00-v1.dependencies.json'
dependencies = json.loads(dependency_path.read_text())['dependencies']
source_index = json.loads((OUT / 'source-index-round1.json').read_text())
source_by_path = {s['path']: s for s in source_index}
inspection = (OUT / 'lean-inspect-round1.txt').read_text()


def source(path, start, end=None):
    text = (ROOT / path).read_text()
    lines = text.splitlines()
    at = next(i for i, line in enumerate(lines) if start in line)
    if end:
        stop = next(i for i in range(at + 1, len(lines)) if end in lines[i])
    else:
        stop = next((i for i in range(at + 1, len(lines)) if not lines[i].strip()), len(lines))
    return {'path': path, 'line': at + 1, 'end_line': stop,
            'source_declaration': '\n'.join(lines[at:stop]),
            'file_sha256': sha(text.encode()),
            'imports': re.findall(r'^import (.+)$', text, re.M),
            'complete_source_snapshot': source_by_path[path]['snapshot']}


def axioms(fqn):
    m = re.search(re.escape("'" + fqn + "' depends on axioms: [") + r'([^]]*)\]', inspection)
    return [x.strip() for x in m.group(1).split(',')] if m else None


GENERIC = ['universe u v', '{C : Type u}',
           '[KIP126.StableHomotopy.StableHomotopyCategory.{u,v} C]',
           '[KIP126.StableHomotopy.HasFunctorialCofiber (C := C)]',
           '(H : KIP126.StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))',
           '(M : KIP126.Classical.Adams.MilnorCooperations H)']
OPEN = ['CategoryTheory', 'KIP126.StableHomotopy', 'KIP126.StableHomotopy.Cohomology',
        'KIP126.Classical.Adams', 'KIP126.Core.SpectralSequence']


def candidate(cid, fqn, path, marker, kind, type_, preliminary, context=None, end=None,
              keys=None, status=None):
    item = {'candidate_id': cid, 'fqn': fqn, 'kind': kind, **source(path, marker, end),
            'full_type': type_, 'implicit_context': context or [], 'open_context': OPEN,
            'key_definitions': keys or [], 'preliminary_semantic_reading': preliminary,
            'checker_result': None, 'proof_status_observation': status,
            'actual_print_axioms': axioms(fqn)}
    return item


keys = []
for key, path, marker, end in [
 ('K01-standard-foundation', 'KIP126/Def/StageInput/Foundation.lean', 'noncomputable def standardFoundation', None),
 ('K02-standard-milnor', 'KIP126/Def/StageInput/Milnor.lean', 'noncomputable def standardMilnorCooperations', None),
 ('K03-fixed-implementation', 'KIP126/Def/StableHomotopy/Implementation/Fixed.lean', 'noncomputable def fixedImplementation', None),
 ('K04-implementation-existence', 'KIP126/Def/Solution/Implementation.lean', 'theorem implementation_exists', None),
 ('K05-milnor-coordinates', 'KIP126/Def/ClassicalAdams/MilnorCooperations/Data.lean', 'structure MilnorCooperations', None),
 ('K06-standard-hi', 'KIP126/Def/ClassicalAdams/SphereClasses/Hi/Internal/Data.lean', 'def hi (i', None),
 ('K07-standard-hi-square', 'KIP126/Def/ClassicalAdams/SphereClasses/Hi/Internal/Data.lean', 'def hiSquare (i', None),
 ('K08-standard-h6', 'KIP126/Def/StageInput/StandardSphere/Classes/Data.lean', 'noncomputable def standardH6 :', None),
 ('K09-standard-h6-square', 'KIP126/Def/StageInput/StandardSphere/Classes/Data.lean', 'noncomputable def standardH6Square', None),
 ('K10-page-cobar-comparison', 'KIP126/Def/ClassicalAdams/MilnorCohomology/Comparison/Data.lean', 'def comparison (s t', None),
 ('K11-derived-ext-interface', 'KIP126/Def/Comparison/StageInterfaces.lean', 'structure CobarDerivedExtComparison', '/-- 同一比较在内部'),
 ('K12-dual-representatives', 'KIP126/Def/Steenrod/MilnorModule/Comparison/Predicates.lean', 'def PreservesDualCobarRepresentatives', None),
 ('K13-left-module-ext', 'KIP126/Def/Steenrod/MilnorModule/Data.lean', 'abbrev SphereExt', None),
 ('K14-left-module-yoneda', 'KIP126/Def/Steenrod/MilnorModule/Multiplication/Data.lean', 'noncomputable def yoneda', None),
 ('K15-right-comodule-ext', 'KIP126/Def/Steenrod/MilnorExt/Data.lean', 'abbrev SphereExt', None),
 ('K16-right-comodule-yoneda', 'KIP126/Def/Steenrod/MilnorExt/Multiplication/Data.lean', 'noncomputable def yoneda', None),
 ('K17-cobar-resolution', 'KIP126/Def/Steenrod/MilnorExt/Resolution/Data.lean', 'structure CobarResolution', None),
 ('K18-strong-convergence', 'KIP126/Def/ClassicalAdams/Convergence/Tower/Predicates.lean', 'structure IsAdamsTowerStronglyConvergent', None),
 ('K19-applicability', 'KIP126/Def/ClassicalAdams/Convergence/BHS/Predicates.lean', 'structure BHSObjectApplicability', None),
 ('K20-tower-filtration', 'KIP126/Def/ClassicalAdams/Convergence/Tower/Data.lean', 'noncomputable def adamsHomotopyFiltration', None),
 ('K21-tower-homotopy-image', 'KIP126/Def/ClassicalAdams/Convergence/Tower/Raw/Data.lean', 'def adamsHomotopyFiltrationSubmodule', None),
 ('K22-homotopy-abutment', 'KIP126/Def/ClassicalAdams/Convergence/Tower/Raw/Data.lean', 'def towerAbutment', None),
 ('K23-sphere-source', 'KIP126/Def/StableHomotopy/Implementation/Comparison.lean', 'structure SourceComparison', 'end KIP126'),
 ('K24-sphere-two-complete', 'KIP126/Def/StableHomotopy/Implementation/Completion.lean', 'theorem completedSphere_twoComplete', None),
 ('K25-adams-degrees', 'KIP126/Def/ClassicalAdams/SSDataModel/Data.lean', 'structure AdamsSSData', None),
 ('K26-cobar-cup-square', 'KIP126/Def/ClassicalAdams/MilnorCohomology/Multiplication/Proofs.lean', 'theorem hiSquare_eq_cup', None),
 ('K27-comparison-hisquare', 'KIP126/Def/ClassicalAdams/MilnorCohomology/Comparison/Proofs.lean', '@[simp] theorem comparison_hiSquare', None),
 ('K28-stage-model-binding', 'KIP126/Interface/Challenge/Challenge2.lean', 'structure ModelBindings (routeInput', '/-- Literature conclusions'),
 ('K29-main-stage-axiom', 'KIP126/Main/Axiom/Challenge2.lean', 'axiom challenge2', None),
 ('K30-preserves-yoneda', 'KIP126/Def/Steenrod/MilnorModule/Comparison/Multiplication/Predicates.lean', 'def PreservesYoneda', None),
 ('K31-comparison-hi', 'KIP126/Def/ClassicalAdams/MilnorCohomology/Comparison/Proofs.lean', '@[simp] theorem comparison_hi (i', None),
 ('K32-sphere-source-implementation', 'KIP126/Def/StableHomotopy/Implementation/Data.lean', 'structure Implementation where', 'namespace Implementation'),
]:
    keys.append({'key': key, **source(path, marker, end)})

bridge1 = candidate('C-bridge-internal-ext',
 'KIP126.Challenge2.CobarDerivedExtComparison.internalEquiv',
 'KIP126/Def/Comparison/StageInterfaces.lean',
 'noncomputable def CobarDerivedExtComparison.internalEquiv', 'definition',
 '{C : Type u} → [StableHomotopyCategory.{u,v} C] → [HasFunctorialCofiber (C := C)] → '
 '{H : Mod2EilenbergMacLane (C := C)} → {M : MilnorCooperations H} → '
 '(E : KIP126.Challenge2.CobarDerivedExtComparison H M) → (s t : ℕ) → '
 '(adamsTowerInternalSpectralSequence H.unit SphereSpectrum).Page 2 ((s : ℤ),(t : ℤ)) ≃ₗ[ℤ] '
 'KIP126.Steenrod.Milnor.Ext.SphereExt s (t : ℤ)',
 '把实际塔 E₂ 与 right-comodule derived Ext 相连，保留同一个 H、M 和输入 E。范围为 s,t∈ℕ；只给加法线性等价，目标还不是 left Steenrod-module Ext。',
 GENERIC, keys=['K10-page-cobar-comparison','K11-derived-ext-interface','K15-right-comodule-ext'],
 status='依赖输入 E；实际 #print axioms 另检出 sorryAx，不能把定义当成 E 的存在证明。')
bridge2 = candidate('C-bridge-ext-exists',
 'KIP126.Def.Comparison.StageInterfaces.cobarDerivedExtComparison',
 'KIP126/Def/Comparison/StageInterfaces/Proofs/Cobar.lean',
 'theorem cobarDerivedExtComparison', 'theorem',
 '∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] '
 '(H : Mod2EilenbergMacLane (C := C)) (M : MilnorCooperations H), '
 'Nonempty (KIP126.Challenge2.CobarDerivedExtComparison H M)',
 '提供前一比较所需 E 的存在性命题；源码为 sorry。',GENERIC,
 keys=['K11-derived-ext-interface','K17-cobar-resolution'],status='声明体直接含 sorry；#print axioms 含 sorryAx。')
bridge3 = candidate('C-bridge-right-left',
 'KIP126.Steenrod.Milnor.Module.exists_dualCobarComparison',
 'KIP126/Def/Steenrod/MilnorModule/Comparison/Proofs.lean',
 'theorem exists_dualCobarComparison', 'theorem',
 '∀ (R : KIP126.Steenrod.Milnor.Ext.CobarResolution), '
 '∃ e : ∀ (s : ℕ) (t : ℤ), KIP126.Steenrod.Milnor.Ext.SphereExt s t ≃ₗ[KIP126.Core.Algebra.F2] '
 'KIP126.Steenrod.Milnor.Module.SphereExt s t, '
 'KIP126.Steenrod.Milnor.Module.PreservesDualCobarRepresentatives R e',
 '从同一 cobarResolution 的右余模 Ext 到左模 Ext，所有次数固定，代表元通过实际对偶指定；可与 internalEquiv 组合，但存在性是 sorry。',
 keys=['K12-dual-representatives','K13-left-module-ext','K15-right-comodule-ext','K17-cobar-resolution'],
 status='声明体直接含 sorry；#print axioms 含 sorryAx。')

ext1 = [candidate('C001-convergence-producer',
 'KIP126.Interface.Solution.standardSphereApplicability',
 'KIP126/Interface/Solution/Foundation.lean', 'theorem standardSphereApplicability', 'theorem',
 'KIP126.Classical.Adams.BHSObjectApplicability '
 'KIP126.Def.fixedImplementation.foundationInput.countableProducts '
 'KIP126.Def.fixedImplementation.foundationInput.hf2.unit '
 '(KIP126.StableHomotopy.SphereSpectrum (C := KIP126.Def.fixedImplementation.foundationInput.Spectrum))',
 '强收敛部分的直接 producer：BHSObjectApplicability.strongly_convergent 在同一固定球的塔上提供 complete、separated、E∞ 与实际塔像过滤关联分次的同构存在性。它不单独陈述 E₂=左模Ext。',
 keys=['K18-strong-convergence','K19-applicability','K20-tower-filtration','K21-tower-homotopy-image',
       'K22-homotopy-abutment','K23-sphere-source','K24-sphere-two-complete'],
 status='声明体直接含 sorry；#print axioms 含 sorryAx。'),
 candidate('C001-convergence-field','KIP126.Challenge2.FoundationInputs.sphereApplicability',
 'KIP126/Interface/Challenge/Challenge2.lean','  sphereApplicability :','structure_field',
 '(self : KIP126.Challenge2.FoundationInputs) → KIP126.Classical.Adams.BHSObjectApplicability '
 'KIP126.Def.fixedImplementation.foundationInput.countableProducts '
 'KIP126.Def.fixedImplementation.foundationInput.hf2.unit '
 '(KIP126.StableHomotopy.SphereSpectrum (C := KIP126.Def.fixedImplementation.foundationInput.Spectrum))',
 '同一强收敛义务也确实作为 FoundationInputs 的字段存在；必须已有 self，字段并非无条件证明。',
 ['(self : KIP126.Challenge2.FoundationInputs)'], keys=['K18-strong-convergence','K19-applicability','K29-main-stage-axiom'],
 status='接口假设；Main 的 self 来自唯一 challenge2 公理，producer 未完成。'),
 candidate('C001-differential-degree','KIP126.Classical.Adams.sphereAdamsModel',
 'KIP126/Def/StageInput/StandardSphere/Sequence/Data.lean','noncomputable def sphereAdamsModel','definition',
 'KIP126.Classical.Adams.AdamsSSData',
 '展开 AdamsSSData 后 firstPage=2 且 ∀r diffDeg r=(r,r−1)，由构造 rfl 给出；sequence 是固定 foundation 的真实球塔。',
 keys=['K01-standard-foundation','K25-adams-degrees'],status='数据定义中的次数证据 rfl；固定基础构造仍依赖未完成证明。'),
 bridge1, bridge2, bridge3]

oneline_type = ('∀ (j : ℕ), Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j ≠ 0 ∧ '
 '∀ x : sphereAdamsData.Page 2 (1, ((2 ^ j : ℕ) : ℤ)), '
 'x = 0 ∨ x = Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j')
ext2 = [candidate('C002-one-line-producer','KIP126.Interface.Solution.adamsOneLine_at_power',
 'KIP126/Interface/Solution/AdamsOneLine.lean','theorem adamsOneLine_at_power','theorem',oneline_type,
 '精确覆盖所有自然数 j 的实际 E₂ 第一线：所指定 hi 非零且每个元素为 0 或 hi。经固定模型与 Ext 比较，才可解释为原命题的 1维 F₂ 空间；j=6 给 (1,64)。不使用该接口的其他高页结论。',
 keys=['K06-standard-hi','K08-standard-h6','K10-page-cobar-comparison','K11-derived-ext-interface','K31-comparison-hi'],
 status='声明体直接含 sorry；#print axioms 含 sorryAx。'),
 candidate('C002-one-line-field','KIP126.Challenge2.AdamsOneLineInterface.adamsOneLine_at_power',
 'KIP126/Interface/Challenge/Challenge2.lean','  adamsOneLine_at_power (j', 'structure_field',
 '(self : KIP126.Challenge2.AdamsOneLineInterface) → '+oneline_type,
 '同样的全族第一线命题作为接口字段；投影需要 self。不能把该字段计为 producer 已实现。',
 ['(self : KIP126.Challenge2.AdamsOneLineInterface)'],end='  adamsOneLine_other_degree',
 keys=['K06-standard-hi','K29-main-stage-axiom'],status='接口假设；Main 通过 challenge2.literature.adamsOneLine 消费。'),
 bridge1, bridge2, bridge3]

ext3 = [candidate('C003-standard-square-nonzero','KIP126.Classical.Adams.standardH6Square_ne_zero',
 'KIP126/Def/StageInput/StandardSphere/Classes/Proofs.lean','theorem standardH6Square_ne_zero','theorem',
 'KIP126.Classical.Adams.standardH6Square ≠ 0',
 '固定 sphereAdamsData 的 (2,128) 中标准 cobar concatenation 类非零。必须检查它通过比较是不是原 used_statement 的 Yoneda 平方，而非只凭名称 square。',
 keys=['K07-standard-hi-square','K09-standard-h6-square','K26-cobar-cup-square','K27-comparison-hisquare'],
 status='本定理体无 sorry；实际 #print axioms 含 sorryAx，固定基础 implementation_exists 尚未完成。'),
 candidate('C003-generic-square-nonzero','KIP126.Classical.Adams.Sphere.Internal.hiSquare_six_ne_zero',
 'KIP126/Def/ClassicalAdams/SphereClasses/Hi/Internal/Proofs.lean','theorem hiSquare_six_ne_zero','theorem',
 '∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] '
 '(H : Mod2EilenbergMacLane (C := C)) (M : MilnorCooperations H), Sphere.Internal.hiSquare H M 6 ≠ 0',
 '在显式 H、M 前提下证明实际内部 E₂ 的 cobar concatenation 类非零；其 #print axioms 没有 sorryAx，不能据此把固定 H、M 的存在或 Yoneda 对应视为完成。',
 GENERIC,keys=['K05-milnor-coordinates','K07-standard-hi-square'],
 status='在列明 H、M 和稳定范畴前提下已证明；实际 axioms 仅 propext/Classical.choice/Quot.sound。'),
 candidate('C003-page-square-nonzero','KIP126.Classical.Adams.Sphere.h6Square_ne_zero',
 'KIP126/Def/ClassicalAdams/SphereClasses/Proofs.lean','theorem h6Square_ne_zero','theorem',
 '∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] '
 '(H : Mod2EilenbergMacLane (C := C)) (M : MilnorCooperations H), Sphere.h6Square H M ≠ 0',
 '通过 classOfMilnorCocycle_eq_zero_iff 与 h6SquareCochain_not_boundary 排除成为 d₁ 边界；这证明实际第二页的标准代表，不涉及高页存活。',
 GENERIC,keys=['K05-milnor-coordinates','K09-standard-h6-square'],
 status='在列明 H、M 和稳定范畴前提下已证明；实际 axioms 仅 propext/Classical.choice/Quot.sound。'),
 candidate('C003-square-interface','KIP126.Challenge2.SphereSquareInterface.nonzero',
 'KIP126/Interface/Challenge/Challenge2.lean','  nonzero : presentation.comparison 2 128','structure_field',
 '∀ {presentation : KIP126.Classical.Adams.LinE2Presentation}, '
 '(self : KIP126.Challenge2.SphereSquareInterface presentation) → '
 'presentation.comparison 2 128 (by decide) KIP126.LinE2.dataH6Sq ≠ 0',
 '计算像非零字段；同一记录的 standard_class 将其等同 standardH6Square。记录源码同时保留这三个字段供核实，仍未独立提供 cobar 到 Yoneda 的乘法桥。',
 ['{presentation : KIP126.Classical.Adams.LinE2Presentation}',
  '(self : KIP126.Challenge2.SphereSquareInterface presentation)'],end='structure ComputationInterface',
 keys=['K09-standard-h6-square','K29-main-stage-axiom'],status='接口假设；不是完整 producer 证明。'),
 bridge1, bridge2, bridge3,
 candidate('C003-yoneda-right-left','KIP126.Steenrod.Milnor.Module.preservesYoneda_of_preservesDualCobarRepresentatives',
 'KIP126/Def/Steenrod/MilnorModule/Comparison/Multiplication/Proofs.lean',
 'theorem preservesYoneda_of_preservesDualCobarRepresentatives','theorem',
 '∀ (R : KIP126.Steenrod.Milnor.Ext.CobarResolution) '
 '{e : ∀ (s : ℕ) (t : ℤ), KIP126.Steenrod.Milnor.Ext.SphereExt s t ≃ₗ[KIP126.Core.Algebra.F2] '
 'KIP126.Steenrod.Milnor.Module.SphereExt s t}, '
 'KIP126.Steenrod.Milnor.Module.PreservesDualCobarRepresentatives R e → '
 'KIP126.Steenrod.Milnor.Module.PreservesYoneda e',
 '将右余模 Yoneda 乘法比较至左模 Yoneda 乘法，针对同一 representative-preserving e；未在检索中找到 cobar cup 到右余模 Yoneda 的对应公式，交 Checker 审定缺口是否影响当前命题。',
 keys=['K12-dual-representatives','K14-left-module-yoneda','K16-right-comodule-yoneda','K30-preserves-yoneda'],
 status='声明体直接含 sorry；#print axioms 含 sorryAx。')]

query_records = json.loads((OUT / 'index-round1.json').read_text())
items = []
for dep, candidates in zip(dependencies, [ext1, ext2, ext3]):
    items.append({'id': dep['id'], 'version': dep['version'], 'round': 1,
       'name': dep['name'], 'used_statement': dep['used_statement'],
       'used_statement_sha256': sha(dep['used_statement'].encode()),
       'source_dependency_file': 'math/T00-v1.dependencies.json',
       'dependency_file_sha256': sha(dependency_path.read_bytes()),
       'fixed_by_review': 'reviews/T00-v1-review.json',
       'searcher_outcome': 'candidates_submitted_to_checker',
       'semantic_status': None, 'proof_status': None,
       'candidates': candidates,
       'search_scope': {'root': 'KIP126/',
          'primary_subtrees': ['KIP126/Def/ClassicalAdams','KIP126/Def/Steenrod',
             'KIP126/Def/Algebra','KIP126/Def/Comparison','KIP126/Def/StageInput',
             'KIP126/Def/StableHomotopy/Implementation','KIP126/Interface','KIP126/Main'],
          'declaration_kinds': ['axiom','theorem','lemma','structure_field','projection','definition','explicit_hypothesis','implicit_hypothesis'],
          'source_authority': '当前 Lean 源码；注释仅作检索线索，真实类型、结构字段、定义与证明体完整读取。'},
       'queries': [q['record_id'] for q in query_records],
       'records': query_records,
       'execution_record': 'formal/evidence-search/lean-inspect-execution-round1.json'})

execution = {'command': ['lake','env','lean',str((RUN/'formal/LeanInspect.lean').relative_to(ROOT))],
 'cwd': str(ROOT), 'sandbox_permissions': 'require_escalated',
 'reason': '父协调已确认默认沙箱 Lean runtime 故障；本次沿批准 lake env lean 前缀执行只读检查。',
 'session_id': 90517, 'exit_code': 0,
 'output': 'formal/evidence-search/lean-inspect-round1.txt',
 'inspection_source_sha256': sha((RUN/'formal/LeanInspect.lean').read_bytes()),
 'output_sha256': sha((OUT/'lean-inspect-round1.txt').read_bytes()),
 'commands_allowed': ['import','#check','#print','#print axioms'],
 'scope': '读取既有已编译模块；没有 build 全库，也没有编译或更改 KIP126 源码。',
 'limitation': '现有 .olean 可能陈旧。Cobar.lean 源码 mtime 晚于对应 .olean；已将候选类型逐项与当前源码核对，但本执行不是当前源码全部依赖的重新编译证明。',
 'module_mtimes': []}
for stem in ['KIP126/Interface/Solution/AdamsOneLine','KIP126/Interface/Solution/Foundation',
             'KIP126/Def/StageInput/StandardSphere/Classes/Proofs',
             'KIP126/Def/Comparison/StageInterfaces/Proofs/Cobar']:
    sp=ROOT/(stem+'.lean'); op=ROOT/'.lake/build/lib/lean'/(stem+'.olean')
    execution['module_mtimes'].append({'module':stem,'source_mtime':sp.stat().st_mtime,
       'olean_mtime':op.stat().st_mtime,'source_newer':sp.stat().st_mtime>op.stat().st_mtime})
(OUT/'lean-inspect-execution-round1.json').write_text(json.dumps(execution,ensure_ascii=False,indent=2)+'\n')

data={'role':'Searcher','round':1,'created_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
 'git_commit': subprocess.check_output(['git','rev-parse','HEAD'],cwd=ROOT,text=True).strip(),
 'boundaries_read':['AGENTS.md','PROJECT_BOUNDARY.md'],
 'permissions':'KIP126/MainPaper/Source 源码只读；仅本 RUN/formal 搜索与证据产物新增。',
 'role_separation':'本记录不判定语义状态；所有候选交独立 Checker。没有向 Reasoner/Judger 传递 Lean 结论。',
 'items':items,'shared_key_definitions':keys,
 'source_index':'formal/evidence-search/source-index-round1.json',
 'notes':['先前一次 python 命令因 python 不存在退出127；随后改 python3 成功，未影响源码。',
 'q06 对不存在 KIP126/Def/Foundation 路径返回 exit2；随后 q10 使用实际 Implementation 路径完成。',
 'EXT-001 的完整命题需要多个声明组合，不能仅凭 strong-convergence 字段判断全部对应。',
 'EXT-002 的第一线候选在 tower E₂ 上，相关右余模/左模 Ext 比较已列入同轮证据。',
 'EXT-003 的 cobar 类非零、固定基础实现、实际 Yoneda 对应三层分开记录。']}
(RUN/'formal/search-round1.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'items':len(items),'candidate_counts':{x['id']:len(x['candidates']) for x in items},
                  'key_definitions':len(keys),'path':str(RUN/'formal/search-round1.json')},ensure_ascii=False))
