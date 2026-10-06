# Judger 数学审核：Lemma `lem:equistate4`

审核范围为 `MainPaper/main.tex` 第 2221–2241 行及必要上游。Judger 独立读取了论文、IWX/BHS/Pstrągowski 原始文献文件；未读取 Lean、Blueprint、旧审计结果，也未用形式化检索结果决定数学陈述。

## 结论与边界

本 demo 可展示一个**依赖明确上游输入的局部证明**：若一个 synthetic $\theta_5$ 的平方满足命题 (4)，则每个选择均满足同一检测条件；反向使用 $\theta_5$ 的存在性。它不证明命题 (4) 本身，不证明 $h_6^2$ 为永久循环，也不宣称任何 Lean 形式化已完成。

主论文第 254 行已约定谱为 2-completed、connective、finite type，并说明 $H\mathbb F_2$-Adams 谱序列强收敛。BHS 输入的完备性与强收敛假设须保留，并在该约定下应用。

论文 Remark `rem:theta5choice` 的局部计算断言——$\pi_{62,64}S^{0,0}$ 无 $\lambda$-幂挠元——仍是本小段的内部边界。本 demo 没有重新枚举相关 classical Adams 微分来证明该断言。它应保留为显式限制，不能改名为已经验证的外部定理。

## 与 Reasoner 的审查往返

1. **无挠不单独反射过滤。** 最初短句“classical 差在 AF ≥ 6，synthetic 群无挠，因此 synthetic 差在 AF ≥ 6”省略了比较输入。已要求补入 BHS lift：取 $z\in\pi_{62,68}$ 映到 classical 差；$\delta-\lambda^4z$ 局部化为零，局部化核是 $\lambda$-幂挠元，无挠使 $\delta=\lambda^4z$。再用 BHS 的 synthetic Adams/λ-Bockstein 过滤识别才得到 AF ≥ 6。
2. **消除交叉项须显示理由。** $\theta,\delta$ 均处于 $(62,64)$，Pstrągowski 的 Koszul 交换符号为 $(-1)^{62\cdot62}=+1$。由局部化单射和 classical 群指数 2 得 $2\theta=0$，从而 $\theta\delta+\delta\theta=2\theta\delta=0$。
3. **平方过滤可用已需输入直接推出。** 从 $\delta=\lambda^4z$ 得 $\delta^2=\lambda^8z^2$，其中 $z^2\in\pi_{124,136}$。BHS 过滤公式在 $(k,w,s)=(124,4,12)$ 给出 $\delta^2\in F^{12}\pi_{124,128}$；因此不必额外添加一个一般乘性定理依赖。
4. **只保留检测，不宣称平方相等。** $F^{12}\subset F^{11}$，故扰动不改变 $F^{10}/F^{11}$ 的非零类；这不推出不同选择的平方在 homotopy 中完全相同。
5. **处理括号类的量词。** 从 (4) 固定 $\theta^2=\lambda^6b$，对另一个选择构造 $b'=b+\lambda^2z^2\in\pi_{124,134}$。BHS 公式给 $\lambda^2z^2\in F^{12}$，故 $b'$ 仍由 $c=h_0^2x_{124,8}$ 检测，并且 $(\theta+\delta)^2=\lambda^6b'$。$b'$ 可以随 $\theta$ 的选择变化。这避免了仅凭“$\lambda^6$ 保过滤”就错误断言任意原像均由 $c$ 检测。
6. **全称到存在须有见证。** IWX 给 $h_5^2$ 在 classical $E_\infty$ 非零；BHS 的 detected lift 定理提供 synthetic 选择。仅有逻辑式 $\forall\theta,P(\theta)$ 不足以推出 $\exists\theta,P(\theta)$。
7. **区分页上的类与模 λ 像。** BHS 输入应令 $x$ 是 $E_2$ 中存活为非零 $E_\infty$ 类的代表，再谈提升的模 $\lambda$ 像为 $x$；不能直接把 $E_\infty$ 商群中的元素当作 $\pi_{*,*}(\nu X/\lambda)\cong E_2$ 的元素。此项在外部依赖版本 1 冻结前修正。

## 独立复核的原始材料

| 输入 | 原始文件与定位 | 此次复核内容 |
|---|---|---|
| IWX 的 classical 62-stem | `Source/IWX/source/more-stable-stems-intro.tex`，表的记号说明 287–292、62 行条目 370 | 2-primary 群为 $(\mathbb Z/2)^4$；不能误读成循环群 $\mathbb Z/16$。 |
| IWX 的过滤层 | `Source/IWX/data/Adams-classical-Einfty.csv`，204–207 | AF 2、6、8、10；AF 2 的生成元为 $h_5^2$。 |
| BHS 的 detected lift 与 classical 过滤 | `Source/BHS/source/SynRevBigraded.tex`，149–176、196–201 | 保留 $E$-nilpotent complete 与强收敛假设；detected lift 和 classical 过滤的 image 描述。 |
| BHS 的 synthetic 过滤 | `Source/BHS/source/SynRevAdams.tex`，324–333 | $F^s\pi_{k,k+w}=F_\tau^{s-w}\pi_{k,k+w}$；必须把来源的 $\tau$ 映射为主论文的 $\lambda$。 |
| Pstrągowski 的符号 | `Source/Pst/source/synthetic_spectra.tex`，1958–1978 | 采用文献的 Koszul 约定后，交换符号为 $(-1)^{tt'}$；weight 不另加符号。 |

“原始材料已复核”仅指本次识别的数学命题及相应局部原文一致，不等于独立重做整篇文献证明或计算。源材料的定位与数学命题审定完成后，外部依赖固定为版本 1 单向交给 Master；后续 Searcher/Checker 的结果不得反向改变这些命题。

## 审核状态解释

`approved` 表示该步的局部推理或该项输入的识别及表述通过审核；`approved_with_limitations` 表示局部推理通过，但仍依赖上文尚未展开的无挠计算等显式边界。强收敛与完备性作为适用假设保留。以上状态不是 Lean 检查状态。最终逐步状态写入 `data/math-reviewed.json`。

最终审核数据包含 7 步、5 项固定版本 1 外部输入、2 项范围/内部边界说明。STEP-001、STEP-002 为 `approved`；STEP-003 至 STEP-007 为 `approved_with_limitations`，明确继承 INT-001。5 项外部输入均已通过识别与数学表述审核；后续形式化候选的语义状态仍待独立检查。已验证 JSON 可解析、步骤依赖 ID 有效，全部步骤都有明确审核状态。
