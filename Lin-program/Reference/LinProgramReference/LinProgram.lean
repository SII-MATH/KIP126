import LinProgramReference.SteenrodAdams

/-!
# Kervaire 局部数学接口及其程序承载记录（X、G、K；P 仅为隔离接口）

本文件中真正属于数学目标的是余纤维扩张、过滤代表、规则语义和 Kervaire
局部命题。P 层的输入/输出记录只是暂时隔离的承载接口，不应被视为数学
概念已经完成形式化；字符串也绝不自动获得数学意义。
-/

namespace LinProgramReference

/-- 过滤对象由载体和递减的过滤子集组成。 -/
structure Filtration where
  /-- 被过滤的数学对象。 -/
  carrier : Type
  /-- 第 p 层过滤子集。 -/
  level : Nat → Set carrier
  /-- 过滤是递减的。 -/
  decreasing : ∀ p q, p ≤ q → level q ⊆ level p
  /-- 过滤覆盖对象。 -/
  exhaustive : Prop
  /-- 过滤没有非零无限交。 -/
  separated : Prop

/-- 过滤对象中的代表元和其过滤度。 -/
structure FilteredRepresentative (F : Filtration) where
  /-- 代表元。 -/
  value : F.carrier
  /-- 代表元所在的过滤层。 -/
  filtration : Nat
  /-- 代表元属于指定过滤层。 -/
  inLevel : value ∈ F.level filtration

/-- 扩张候选记录一个过滤商中的源、目标和候选输出。 -/
structure ExtensionCandidate where
  /-- 源代表名称。 -/
  source : String
  /-- 目标代表名称。 -/
  target : String
  /-- 候选扩张类型。 -/
  kind : String
  /-- 源和目标过滤度。 -/
  sourceFiltration : Nat
  /-- 目标过滤度。 -/
  targetFiltration : Nat
  /-- 候选满足次数约束。 -/
  gradingCondition : Prop
  /-- 候选确实给出非平凡扩张的命题。 -/
  nontrivial : Prop

/-- essential extension 表示候选确实改变极限对象的加法结构。 -/
def IsEssentialExtension (candidate : ExtensionCandidate) : Prop :=
  candidate.gradingCondition ∧ candidate.nontrivial

/-- inessential extension 表示候选可被已知代表选择吸收。 -/
def IsInessentialExtension (candidate : ExtensionCandidate) : Prop :=
  candidate.gradingCondition ∧ ¬ candidate.nontrivial

/-- crossing 是两个过滤代表发生非平凡交叉的语义条件。 -/
def IsCrossing (left right : FilteredRepresentative F) : Prop :=
  left.filtration ≠ right.filtration ∧ left.value ≠ right.value

/-- no-crossing 条件排除指定两个过滤代表的非平凡交叉。 -/
def NoCrossing (left right : FilteredRepresentative F) : Prop :=
  ¬ IsCrossing left right

/-- 余纤维扩张谱序列的页、过滤和候选集合。 -/
structure CofiberExtensionSpectralSequence where
  /-- 产生扩张的余纤维序列。 -/
  sourceSequence : CofiberSequence
  /-- 极限对象的过滤。 -/
  filtration : Filtration
  /-- 第 r 页的有限代表名称。 -/
  page : Nat → List String
  /-- 第 r 页的扩张微分关系。 -/
  differential : Nat → String → String → Prop
  /-- 页间同调构造。 -/
  nextPageIsHomology : Prop
  /-- 极限过滤商与 E_∞ 页识别。 -/
  convergence : Prop

/-- 扩张证书记录候选、过滤检查和 no-crossing 检查。 -/
structure ExtensionCertificate where
  /-- 被检查的扩张候选。 -/
  candidate : ExtensionCandidate
  /-- 次数与过滤条件已经检查。 -/
  gradingChecked : Prop
  /-- essential/inessential 结论已经检查。 -/
  essentialityChecked : Prop
  /-- no-crossing 结论已经检查。 -/
  noCrossingChecked : Prop

/-- 有限命题列表的合取；它是规则前提的数学解释。 -/
def AllPremises : List Prop → Prop
  | [] => True
  | proposition :: rest => proposition ∧ AllPremises rest

/-- Lin Program 中使用的规则种类。 -/
inductive GeneralizedRule where
  /-- 广义 Leibniz 规则。 -/
  | generalizedLeibniz
  /-- 广义 Mahowald 规则。 -/
  | generalizedMahowald
  /-- d₂ 的专门规则。 -/
  | d2Rule
  /-- 余纤维三角的自然性规则。 -/
  | cofiberNaturality
deriving DecidableEq, Repr

/-- 一次规则应用的前提、结论和可靠性函数。 -/
structure RuleApplication where
  /-- 所使用的数学规则。 -/
  rule : GeneralizedRule
  /-- 规则前提。 -/
  premises : List Prop
  /-- 规则结论。 -/
  conclusion : Prop
  /-- 在前提成立时结论成立的证明。 -/
  sound : AllPremises premises → conclusion

/-- 候选微分的假设；假设本身不是已经证明的非零事实。 -/
structure CandidateHypothesis where
  /-- 候选表达式名称。 -/
  candidate : String
  /-- 候选非零命题。 -/
  nonzero : Prop

/-- “假设—传播—矛盾”证明树。 -/
inductive ProofTree where
  /-- 一个候选假设节点。 -/
  | assumption (hypothesis : CandidateHypothesis)
  /-- 应用一条传播规则。 -/
  | propagation (parent : ProofTree) (application : RuleApplication)
  /-- 得到矛盾并排除候选。 -/
  | contradiction (parent : ProofTree) (reason : Prop)

/-- 证明树的深度；对应 Lin Program 的 depth 字段。 -/
def ProofTree.depth : ProofTree → Nat
  | .assumption _ => 0
  | .propagation parent _ => parent.depth + 1
  | .contradiction parent _ => parent.depth + 1

/-- 证明树的根节点是否已经记录了排除性命题。

这里的命题仍是语义层的输出，不能单独把任意字符串记录提升为定理；
真正的排除必须由 `RuleApplication.sound` 提供前提证明，并在证书语义中引用。 -/
def ProofTree.excludes : ProofTree → Prop
  | .assumption _ => False
  | .propagation parent application =>
      parent.excludes ∨ application.conclusion
  | .contradiction _ reason => reason

/-- 若传播规则前提成立，则规则结论成立。 -/
theorem rule_application_sound (application : RuleApplication)
    (premises : AllPremises application.premises) :
    application.conclusion :=
  application.sound premises

/-- 程序输入中的一个 E₂ 生成元行。 -/
structure E2GeneratorInput where
  /-- 数据库稳定编号。 -/
  id : Nat
  /-- 人类可读名称。 -/
  name : String
  /-- Adams stem。 -/
  stem : Int
  /-- Adams 过滤次数。 -/
  filtration : Nat
  /-- 内部次数。 -/
  internal : Int
  /-- 次数一致性。 -/
  grading : internal - filtration = stem

/-- 程序输入中的关系行。 -/
structure RelationInput where
  /-- 左侧线性组合。 -/
  left : List Nat
  /-- 右侧线性组合。 -/
  right : List Nat
  /-- 关系所在双次数。 -/
  degree : Bidegree

/-- 程序输入中的谱和余纤维行。 -/
structure SpectrumInput where
  /-- 谱或余纤维的稳定名称。 -/
  name : String
  /-- 有限谱数据。 -/
  finiteData : FiniteSpectrumData
  /-- 数据与稳定对象的语义一致性。 -/
  semanticMeaning : Prop

/-- Lin Program 的有类型输入快照。 -/
structure LinProgramInput where
  /-- E₂ 生成元表。 -/
  generators : List E2GeneratorInput
  /-- 关系表。 -/
  relations : List RelationInput
  /-- 谱和余纤维表。 -/
  spectra : List SpectrumInput
  /-- 已知微分的输入表。 -/
  knownDifferentials : List String
  /-- 已知扩张的输入表。 -/
  knownExtensions : List ExtensionCertificate

/-- 程序输出中的微分记录。 -/
structure DifferentialOutput where
  /-- 微分阶数。 -/
  page : Nat
  /-- 源类名称。 -/
  source : String
  /-- 目标类名称。 -/
  target : String
  /-- 该记录的次数检查。 -/
  gradingChecked : Prop
  /-- 该记录的数学语义。 -/
  semanticStatement : Prop

/-- 程序输出中的存活记录。 -/
structure SurvivalOutput where
  /-- 存活类名称。 -/
  className : String
  /-- 存活目标页。 -/
  page : Nat
  /-- 存活命题。 -/
  statement : Prop

/-- Lin Program 的有类型输出快照。 -/
structure LinProgramOutput where
  /-- 计算出的微分表。 -/
  differentials : List DifferentialOutput
  /-- 计算出的扩张证书。 -/
  extensions : List ExtensionCertificate
  /-- 计算出的存活记录。 -/
  survivors : List SurvivalOutput
  /-- 候选排除证明树。 -/
  exclusions : List ProofTree

/-- 程序输入满足所有次数和表结构约束。 -/
def InputWellFormed (input : LinProgramInput) : Prop :=
  (∀ (row : E2GeneratorInput), row ∈ input.generators →
    row.internal - (row.filtration : Int) = row.stem) ∧
  (∀ (spectrum : SpectrumInput), spectrum ∈ input.spectra → spectrum.semanticMeaning)

/-- 程序输出的数学语义：每个输出记录都是相应的谱序列命题。 -/
def OutputSemanticallyCorrect (output : LinProgramOutput) : Prop :=
  (∀ row, row ∈ output.differentials →
    row.gradingChecked ∧ row.semanticStatement) ∧
  (∀ row, row ∈ output.survivors → row.statement)

/-- 程序证书把输入、输出、规则树和检查结果绑定在一起。 -/
structure LinProgramCertificate (input : LinProgramInput)
    (output : LinProgramOutput) where
  /-- 证书版本。 -/
  version : Nat
  /-- 证明树的有限数据。 -/
  proofTrees : List ProofTree
  /-- 证书格式字段满足其有限语法约束。 -/
  formatChecked : Prop

/-- 证书通过检查时所应推出的完整数学语义。 -/
def CertificateSemantics (input : LinProgramInput) (output : LinProgramOutput)
    (certificate : LinProgramCertificate input output) : Prop :=
  InputWellFormed input ∧ OutputSemanticallyCorrect output ∧ certificate.formatChecked

/-- 证书检查器的抽象接口；实现可以由 C++ 生成，但可靠性必须显式提供。 -/
structure LinProgramChecker where
  /-- 对输入、输出和证书的可计算布尔检查。 -/
  check : (input : LinProgramInput) → (output : LinProgramOutput) →
    (certificate : LinProgramCertificate input output) → Bool
  /-- 检查通过蕴含输入、输出和证书的数学可靠性。 -/
  sound : ∀ (input : LinProgramInput) (output : LinProgramOutput)
    (_certificate : LinProgramCertificate input output),
    check input output _certificate = true →
    CertificateSemantics input output _certificate

/-- 检查器通过时得到可靠的数学结论。 -/
theorem checker_sound (checker : LinProgramChecker)
    (input : LinProgramInput) (output : LinProgramOutput)
    (certificate : LinProgramCertificate input output)
    (h : checker.check input output certificate = true) :
    CertificateSemantics input output certificate :=
  checker.sound input output certificate h

/-- Kervaire 论文中的命名 Adams 类及其双次数。 -/
structure NamedAdamsClass where
  /-- 程序或论文中的类名。 -/
  name : String
  /-- 类所在的 Adams 双次数。 -/
  degree : Bidegree

/-- 有限候选集合及其目标类。 -/
structure TargetCandidates where
  /-- 被考虑的目标类。 -/
  target : NamedAdamsClass
  /-- 全部有限候选。 -/
  candidates : List NamedAdamsClass
  /-- 列表无重复。 -/
  nodup : candidates.Nodup

/-- 候选排除的计数命题。 -/
def ExcludesCount (candidates excluded : Nat) : Prop :=
  excluded ≤ candidates

/-- 候选排除报告：三组列表和分割关系共同记录实际候选，而不只是记录数字。 -/
structure ExclusionReport where
  /-- 完整候选列表。 -/
  candidates : List NamedAdamsClass
  /-- 已被证明排除的候选列表。 -/
  excluded : List NamedAdamsClass
  /-- 排除后仍保留的候选列表。 -/
  remaining : List NamedAdamsClass
  /-- 完整候选列表没有重复项。 -/
  candidatesNodup : candidates.Nodup
  /-- 排除列表没有重复项。 -/
  excludedNodup : excluded.Nodup
  /-- 每个排除项确实来自完整候选列表。 -/
  excludedSubset : ∀ x, x ∈ excluded → x ∈ candidates
  /-- 排除项和剩余项的长度构成完整候选列表的长度。 -/
  partitionLength : excluded.length + remaining.length = candidates.length

/-- 论文中出现的 105−101=4 是算术事实；它不等同于已经核验了 105 行数据。 -/
theorem kervaire_remaining_count_arithmetic :
    105 - 101 = 4 := by decide

/-- 101 是 105 的合法排除数量上界；实际排除仍需提供 `ExclusionReport`。 -/
theorem kervaire_exclusion_bound :
    ExcludesCount 105 101 := by
  norm_num [ExcludesCount]

/-- Kervaire 局部存活事实的记录。 -/
structure KervaireSurvivalClaim where
  /-- 类名。 -/
  className : NamedAdamsClass
  /-- 目标页。 -/
  page : Nat
  /-- 存活命题。 -/
  survives : Prop
  /-- 该命题对应已检查的 Adams/扩张证书。 -/
  evidence : Prop

/-- Kervaire 第 7 节四个局部事实的打包接口。 -/
structure KervaireLocalClaims where
  /-- x_(126,8,4)+x_(126,8) 存活至 E₆。 -/
  fact76_1 : KervaireSurvivalClaim
  /-- h₁ h₄ x_(109,12) 的潜在击杀通道分类。 -/
  fact76_2 : Prop
  /-- h₀² x_(124,8) 存活至 E∞。 -/
  fact76_3 : KervaireSurvivalClaim
  /-- 相关 Ext 双次数中唯一 E₅ 存活类。 -/
  fact76_4 : Prop
  /-- Remark 7.7 的 d₃ 候选排除。 -/
  remark77 : Prop
  /-- h₆² 的目标候选排除及存活结论。 -/
  h6SquaredSurvives : Prop

/-- 局部结论证书：只有证书可靠性成立时才可引用这些论文事实。 -/
structure KervaireCertificate (claims : KervaireLocalClaims) where
  /-- 第 7 节的所有局部命题已由规则和数据证明。 -/
  checked : claims.fact76_1.survives ∧
    claims.fact76_3.survives ∧ claims.h6SquaredSurvives

/-- Kervaire 结论接口从证书中提取 h₆² 存活命题。 -/
theorem h6_squared_from_certificate
    (claims : KervaireLocalClaims)
    (certificate : KervaireCertificate claims) :
    claims.h6SquaredSurvives :=
  certificate.checked.2.2

end LinProgramReference
