# θ₅ 的选择为何不改变平方的首项

> 仅展示 Lemma lem:equistate4 的短证明及必要输入；不是 h₆² 永久存活的完整证明。

## 一 · 设定与输入

### STEP-001 · 固定对象、过滤与一个平方检测见证

本 demo 展开 Lemma `lem:equistate4`：命题 (4) 中“存在一个 $\theta_5$”与 (4′) 中“每一个 $\theta_5$”等价。按论文约定，经典球谱在素数 $2$ 处完备；$\pi_{62}$ 不含奇素数部分。

令 $G=\pi_{62,64}S^{0,0}$，$H=\pi_{124,128}S^{0,0}$，$F^s$ 表示相应群上的 synthetic Adams 下降过滤。$\Theta\subset G$ 是由 $h_5^2$ 检测的 synthetic $\theta_5$ 的集合。设 $c=h_0^2x_{124,8}$，其 Adams 过滤为 $10$、内部次数为 $134$；所以 $\lambda^6c$ 的三次数为 $(10,134,128)$。**$\lambda$ 改变 weight，不降低这里的 Adams 过滤**。

假设 (4) 的完整陈述：选定 $\theta\in\Theta$ 以及由 $c$ 检测的 $b\in\pi_{124,134}S^{0,0}$，满足
$$\theta^2=\lambda^6b\ne0,\qquad [\theta^2]_{10}=\lambda^6c\ne0\in F^{10}H/F^{11}H.$$
“由某元素检测”指在对应关联分次中的首项为该非零元素。现在任取 $\theta'\in\Theta$，记 $\delta=\theta'-\theta\in G$；需要证明 $\theta'^2$ 仍有此非零首项，并构造允许随 $\theta'$ 改变的 $b'$。

论文位置：MainPaper/main.tex · lem:equistate4 · L[2221, 2241]

数学审查：approved

### STEP-002 · 经典差值落在过滤至少 6

IWX 的经典 $E_\infty$ 数据在 stem $62$ 恰有四个非零分次：$h_5^2,h_5n,E_1+C_0,R$，过滤分别为 $2,6,8,10$，每处一维。特别地，过滤 $3,4,5$ 没有非零分次，$h_5^2$ 确实存活并检测经典 $\theta_5$。[[EXT-002]]

写 $q$ 为反演 $\lambda$ 后的经典实现。BHS 的任意提升检测保持说明，$q(\theta)$ 与 $q(\theta')$ 都由经典 $h_5^2$ 检测。[[EXT-003]] 它们在 $F^2\pi_{62}/F^3\pi_{62}$ 中的像相同，故
$$q(\delta)\in F^3\pi_{62}=F^4\pi_{62}=F^5\pi_{62}=F^6\pi_{62}.$$
这是**经典过滤差**的结论，尚未证明 $\delta$ 的 synthetic 过滤至少为 $6$。此外，四个 $\mathbb F_2$ 分次并不自动排除隐藏 $2$ 扩张；下一步将单独调用完整同伦群指数 $2$ 的计算。

论文位置：MainPaper/main.tex · lem:equistate4 · L[2221, 2241]

数学审查：approved

### STEP-003 · 用提升与无 torsion 边界比较两种过滤

**本步采用论文内部边界 INT-001：Remark `rem:theta5choice` 断言 $G=\pi_{62,64}S^{0,0}$ 无 $\lambda$-幂 torsion。** 原文由 Proposition `prop:30e8b746` 加经典微分分析得到它；本 demo 没有重算该微分分析。因此下述推导明确以这条上游结论为边界。

若 $q(\delta)=0$，取 $z=0$。否则令其实际经典 Adams 过滤为 $s\ge6$。BHS 的指定检测类提升给出 $\widetilde\delta\in\pi_{62,62+s}S^{0,0}$，经典实现为 $q(\delta)$；取 $z=\lambda^{s-6}\widetilde\delta\in\pi_{62,68}S^{0,0}$，即有 $q(\lambda^4z)=q(\delta)$。[[EXT-003]]

局部化的基本性质给出：$q(u)=0$ 当且仅当某个 $\lambda^N u=0$。由 INT-001，$q$ 在 $G$ 上单射，于是
$$\boxed{\delta=\lambda^4z.}$$
BHS 的过滤比较取 $(k,w,s)=(62,2,6)$ 给出
$$F^6G=\operatorname{im}\bigl(\lambda^4:\pi_{62,68}S^{0,0}\longrightarrow G\bigr),$$
故 $\delta\in F^6G$。[[EXT-004]] **无 torsion 负责识别两种提升，过滤比较负责得出 Adams 过滤结论**；两者不能互相替代。

接着，IWX 的完整群计算给出 $2x=0$ 对全部 $x\in\pi_{62}$ 成立。[[EXT-001]] 因此 $q(2\theta)=2q(\theta)=0$；再次使用 $q$ 在 $G$ 上单射，得到 $2\theta=0$。同样每个 synthetic $\theta_5$ 都有阶 $2$。

论文位置：MainPaper/main.tex · lem:equistate4 · L[2221, 2241]

数学审查：approved_with_limitations

## 二 · 平方差计算

### STEP-004 · 展开平方并逐项消去交叉项

$\theta$ 和 $\delta$ 的双次数都是 $(62,64)$。synthetic 同伦环的 Koszul 约定给出 $xy=(-1)^{tt'}yx$；本处 $(-1)^{62\cdot62}=+1$，所以 $\delta\theta=\theta\delta$。即使使用未调整的球面交换约定，指数 $(-2)^2+64^2=4100$ 也为偶数。[[EXT-005]]

利用双线性，在 $H$ 中逐项展开：
$$\begin{aligned}
\theta'^2-\theta^2
&=(\theta+\delta)(\theta+\delta)-\theta^2\\
&=\theta\delta+\delta\theta+\delta^2\\
&=2\theta\delta+\delta^2\\
&=(2\theta)\delta+\delta^2=\delta^2.
\end{aligned}$$
最后一步使用 STEP-003 的 $2\theta=0$。这里没有把整个 synthetic 同伦环当成特征 $2$ 的环；消去交叉项需要交换符号和该元素的阶这两项理由。

论文位置：MainPaper/main.tex · lem:equistate4 · L[2221, 2241]

数学审查：approved_with_limitations

### STEP-005 · 把平方差提高到过滤 12

由 $\delta=\lambda^4z$，并注意 $\lambda$ 的 stem 为 $0$、因而与各元素交换，得到
$$\delta^2=\lambda^8z^2,\qquad z^2\in\pi_{124,136}S^{0,0}.$$
这里的环与交换结构来自 [[EXT-005]]。对 [[EXT-004]] 取 $(k,w,s)=(124,4,12)$，便得到
$$\delta^2\in F^{12}\pi_{124,128}S^{0,0}.$$
这是本处所需乘法过滤界 $F^6\cdot F^6\subseteq F^{12}$ 的具体证明：将乘法写成明确的 $\lambda$ 幂，再应用过滤公式，不额外引入未说明的一般理论包。

结合上一部，核心估计为
$$\boxed{\theta'^2-\theta^2\in F^{12}H.}$$
这里不要求 $\delta^2=0$，所以还不能断言不同选择的平方在同伦群中完全相等。

论文位置：MainPaper/main.tex · lem:equistate4 · L[2221, 2241]

数学审查：approved_with_limitations

## 三 · 保留首项与范围

### STEP-006 · 保留过滤 10 的非零首项并构造新见证

下降过滤给出 $F^{12}H\subseteq F^{11}H$，故平方差在 $F^{10}H/F^{11}H$ 中为零，得到
$$[\theta'^2]_{10}=[\theta^2]_{10}=\lambda^6c\ne0.$$
如果 $\theta'^2=0$，其关联分次像也为零，与上式矛盾。因此 $\theta'^2\ne0$，且仍由同一个 $\lambda^6h_0^2x_{124,8}$ 检测。这是商群的直接推理，无需另外引入外部检测定理。

还要保留引理中“特别地”的完整等式。不能把 STEP-001 的 $b$ 对所有选择固定不变；定义
$$b'=b+\lambda^2z^2\in\pi_{124,134}S^{0,0}.$$
[[EXT-004]] 取 $(k,w,s)=(124,10,12)$ 给出 $\lambda^2z^2\in F^{12}\pi_{124,134}S^{0,0}$，故 $b'$ 仍由过滤 $10$ 的 $c$ 检测。于是
$$\theta'^2=\theta^2+\lambda^8z^2=\lambda^6(b+\lambda^2z^2)=\lambda^6b'\ne0.$$
这完成 (4)$\Rightarrow$(4′)。$b'$ 允许随 $\theta'$ 改变；得到的是指定检测的选择无关性。

论文位置：MainPaper/main.tex · lem:equistate4 · L[2221, 2241]

数学审查：approved_with_limitations

### STEP-007 · 补上存在性并说明 demo 的范围

逆向 (4′)$\Rightarrow$(4) 还需要 $\Theta\ne\varnothing$；空集上的全称命题不能推出存在命题。IWX 的 $h_5^2\ne0\in E_\infty^{2,64}$ 给出一个经典 $\theta_5$。[[EXT-002]] BHS 的指定检测类提升定理给出由 $h_5^2$ 检测的 synthetic $\theta_0\in\pi_{62,64}S^{0,0}$。[[EXT-003]] 在 (4′) 中代入 $\theta_0$，就得到 (4) 的存在见证。

至此，在明确的 INT-001 内部边界下，Lemma `lem:equistate4` 的两个方向及“特别地”的见证均已展开。这里没有证明 (4) 本身成立；得到的是**只要一个选择具有该平方检测，全部选择便具有相同检测**。

主目标 $h_6^2\in E_2^{2,128}$ 的存活、所有可能进出该位置的微分以及完整 $E_\infty$ 论证均在本 demo 之外。这个局部选择无关性结论不能直接视作主定理的完成证明。

论文位置：MainPaper/main.tex · lem:equistate4 · L[2221, 2241]

数学审查：approved_with_limitations

## 外部依赖（数学命题；对应核查见网页批注）

### EXT-001 · 经典 62-stem 的完整群结构与指数 2

对 $2$-完备球谱，$\pi_{62}(S_2^\wedge)\cong(\mathbb Z/2)^4$。特别地 $\forall x\in\pi_{62}(S_2^\wedge),\ 2x=0$。这是完整同伦群的群结构断言，不只是 $E_\infty$ 页上四个 $\mathbb F_2$ 分次的计数。

来源：Source/IWX/source/more-stable-stems-intro.tex · Table tab:order；290–300 行给 n^j 的群结构含义；370 行 k=62 的 2-primary 列为2^4，v1-periodic 列为空

### EXT-002 · 经典 62-stem 的 Adams 分次及 θ5 存在

对经典 $2$-完备球谱 Adams 过滤，$\operatorname{gr}_F^s\pi_{62}$ 恰在 $s=2,6,8,10$ 非零，每处为 $\mathbb F_2$，检测元依次为 $h_5^2,h_5n,E_1+C_0,R$。特别地 $h_5^2\ne0\in E_\infty^{2,64}$ 并检测至少一个经典 $\theta_5$，且 $F^3\pi_{62}=F^6\pi_{62}$。

来源：Source/IWX/data/Adams-classical-Einfty.csv · 204–207 行；stem=62 恰四行，表头为 name,stem,Adams filtration

### EXT-003 · BHS：检测类的经典实现与指定 synthetic 提升

设 $X$ 是 $E$-nilpotent complete，且其 $E$-Adams 谱序列强收敛。若 $x\in E_2^{s,k+s}(X)$ 存活为非零的 $E_\infty$ 类，则每个模 $\lambda$ 像为 $x$ 的提升 $\widetilde x\in\pi_{k,k+s}(\nu X)$，其经典实现均由 $x$ 检测；反之，给定由 $x$ 检测的 $\alpha\in\pi_kX$，可选择这样的提升，使其经典实现恰为 $\alpha$。本 demo 取 $E=H\mathbb F_2$、$X=S_2^\wedge$；BHS 的 $\tau$ 即本文 $\lambda$。

来源：Source/BHS/source/SynRevBigraded.tex · Theorem 9.19 (= Theorem A.1), thm:synthetic-Adams,149–175 行，(2b) 任意提升检测保持、(3b) 指定经典类的提升；Source/BHS/source/SynRevBigraded.tex · thm:tau-inv,35–39 行给 λ 反演的经典识别；Corollary 9.21,196–201 行给过滤像表述；MainPaper/main.tex · 254 行：全篇 2-完备、connective、finite type 及 Adams 强收敛约定

### EXT-004 · BHS：synthetic Adams 过滤等于 λ 可除过滤

设 $X$ 是 $E$-nilpotent complete，且经典 $E$-Adams 谱序列强收敛。对 $s\ge w$，
$$F^s\pi_{k,k+w}(\nu X)=\operatorname{im}\bigl(\lambda^{s-w}:\pi_{k,k+s}(\nu X)\to\pi_{k,k+w}(\nu X)\bigr).$$
本 demo 使用 $(k,w,s)=(62,2,6),(124,4,12),(124,10,12)$。该命题是过滤等式，本身不包含无 $\lambda$-torsion 的断言。

来源：Source/BHS/source/SynRevAdams.tex · Corollary A.19, cor:tau-surj,321–333 行；Fτ 为 τ-Bockstein/τ-可除过滤；Source/BHS/paper.txt · 4391–4414 行：Notation A.18 与 Corollary A.19；MainPaper/main.tex · 254 行：本 demo 所用强收敛与完备性约定

### EXT-005 · Pstrągowski：synthetic 同伦环的交换符号

对 synthetic 谱中的交换代数 $A$，其双分次同伦群是双分次环；在 Koszul 约定下，对 $x\in\pi_{t,w}A$、$y\in\pi_{t',w'}A$ 有 $xy=(-1)^{tt'}yx$。对于 $A=S^{0,0}$，双次数 $(62,64)$ 的两个元素交换，stem 为 $0$ 的 $\lambda$ 与各元素交换。

来源：Source/Pst/source/synthetic_spectra.tex · Remark 4.10 (Sign conventions),1958–1978 行；标签 rem:associativity_equivalence_for_synthetic_spheres_and_sign_rule_for_commutative_bigraded_rings

## 范围与未展开环节

### INT-001 · π62,64 无 λ-torsion 的逐项微分分析未展开

采用 MainPaper Remark rem:theta5choice 的 $\pi_{62,64}S^{0,0}$ 无 $\lambda$-torsion 结论。原文将其归结于 Proposition prop:30e8b746 与经典 Adams 微分分析；本 demo 没有逐项复算。这是本论文内部前置义务，不是新增外部黑箱，故不分配 EXT 编号或送往外部文献 Lean 搜索。后续平方计算均受此边界约束。

### SCOPE-001 · 局部等价引理，不是最终永久循环证明

本 demo 仅展开 (4) 与 (4′) 的等价，在 INT-001 边界下有效。不证明 (4) 成立，不证明 h6² 所有微分消失。数学审查、形式化语义匹配、Lean 证明完成度分别展示。
