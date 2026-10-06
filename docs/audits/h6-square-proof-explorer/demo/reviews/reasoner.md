# Reasoner 数学交接 v1

范围为 MainPaper/main.tex 2221–2241 的 Lemma lem:equistate4；3章、7步、5个固定命题粒度外部输入。未读取 Lean、Blueprint 或旧数学审计评论；仅读论文、BHS/IWX/Pstrągowski 原始文献、任务 schema 与仓库规范。

已补全：经典差过滤至少6；BHS 指定检测类提升；明确的内部无torsion边界使 δ=λ⁴z；完整π62指数2给 synthetic 2θ=0；偶数stem交换符号保证交叉项消去；δ²=λ⁸z²∈F¹²；F¹⁰/F¹¹首项不变；b′=b+λ²z²给出随θ′改变的完整见证；逆向依赖h5²存活与BHS提升确保存在性。

INT-001是未展开的论文内部边界，未伪装外部黑箱。EXT-001为全π62指数2；002为经典分次；003为BHS任意lift保持检测及指定经典类lift；004为BHS Corollary A.19过滤等式；005为Pstrągowski Remark4.10的环与交换符号。乘性特例在正文由004与005给出的结构直接证明，没有额外整包输入。

所有外部输入均为v1，原始资料已核验。Judger 负责独立数学审查；不预判形式化候选语义匹配或Lean完成状态。Searcher/Checker不可反向修改已固定数学表述来迎合现存代码。MainPaper:254确保所用2完备球谱与强收敛适用设置。
