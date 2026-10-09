# 步骤一结果：Lin Program 与 Kervaire 论文计算依赖清单

## 1. 结论范围

本清单的目标是确定后续实现的边界，而不是声称已经形式化了代数拓扑。两篇论文明确描述的程序链条是：

```text
Steenrod 代数上的有限生成数据
        ↓
Adams：最小分解、乘法、E₂ 页、d₂、谱序列之间的映射
        ↓
ss：利用 Leibniz 规则、自然性、扩张谱序列及两条广义定理传播信息
        ↓
Adams 微分、永久循环、扩张和机器生成的证明记录
        ↓
Kervaire 论文第 7 节使用的局部事实
```

因此，Lin Program 的程序边界包括两个相互连接的程序：

1. `Adams`：计算 Steenrod 代数上的 Ext 数据，也就是 Adams (E_2) 页、乘法结构、某些 (d_2) 以及谱之间的 (E_2) 页映射。
2. `ss`：读取上述数据库，在 CW 谱、映射和余纤维序列组成的类别上推导 Adams 微分和扩张，并把每一步记录为机器证明。

Kervaire 论文中的 `Lin’s program` 指这两个部分及其生成的数据，而不是只指一个可执行文件。

## 2. `Adams` 的程序边界

### 2.1 支持的对象

`Adams` 处理 2-primary、有限型、连通的 CW 谱。论文数据集包含 49 个谱。表中名称是程序接口名称；其数学含义由名称约定决定，例如 `Ceta` 是 η 的余纤维，`CW_eta_nu` 是相应的多胞复形，`RP1_256` 是截断实射影空间，`Fphi` 是 Kahn–Priddy 映射纤维的悬挂。

| 类别 | 输入 | 输出 |
|---|---|---|
| 环谱 | `R`、内部次数上界 `t` | `R_Adams_res.db`、`R_Adams_res_prod.db`、`R_AdamsSS.db` |
| 环谱上的模 | `M`、环谱 `R`、`t` | `M_Adams_res.db`、`M_Adams_res_prod.db`、`M_AdamsSS.db` |
| 二阶微分 | CW 谱 `X`、二阶运算参数 `d2` | `X_Adams_d2.db`；导出后写入 `X_AdamsE2_basis.d2` |
| 谱之间的映射 | `X`、`Y`、`t` | `map_Adams_res_X__Y.db`、`map_AdamsSS_X__Y.db` |

公开命令形式为：

```text
./Adams res R 100
./Adams prod R 100
./Adams export R 100
./Adams res M 100
./Adams prod_mod M R 100
./Adams export_mod M R 100
./Adams d2 X d2
./Adams export X 100
./Adams map_res X Y 100
./Adams export_map X Y 100
```

### 2.2 自定义输入格式

`Adams.json` 定义用户自定义 CW 谱和映射。每个谱至少需要：

```text
cells       有序的细胞维数
cells_gen   作为 Steenrod 代数模生成元的最小集合
operations 非平凡 Sq^(2^k) 作用
```

映射需要：

```text
from、to、images、sus
```

其中 `images` 给出上同调生成元的像，`sus` 是悬挂次数。内置对象包括 `S0`、`tmf`、截断实/复/四元射影空间；自定义对象还可以自动得到 `tmf_X`。

### 2.3 49 个谱输入清单

```text
S0, tmf,
C2, Ceta, Cnu, Csigma,
CW_2_eta, CW_eta_2, CW_eta_nu, CW_nu_eta, CW_sigma_nu, CW_nu_sigma,
CW_2_eta_nu, CW_nu_eta_2, CW_sigma_nu_eta, CW_eta_nu_sigma,
CW_sigma_nu_eta_2, CW_2_eta_nu_sigma,
Csigmasq, C2h4, DC2h4, Ctheta4, C2h5, DC2h5, Ctheta5,
C2h6, DC2h6,
C2_C2, Ceta_Ceta, Cnu_Cnu, Csigma_Csigma,
CW_2sigma_sigma, CW_sigma_2sigma, C2sigma,
CW_2_V_eta, CW_2_A_eta, Joker,
CW_eta_2_eta_Eq_2_nu, CW_eta_2_eta_Eq_nu_2, C2_Ceta,
RP3_6, Fphi, RP1_4, RP1_6, RP1_8, RP1_10, RP1_12,
RP1_256, RP3_256
```

论文表 1 给出每个谱的最大内部次数。重要上界包括 `S0/tmf = 261`，多数谱为 180 或 200；`Adams` 源码另外规定最大 Adams 过滤为 (2^{12}-1=4095)，Steenrod 代数最高次数为 383，自由模维数上界为 (2^{19}=524288)。

### 2.4 `Adams` 的输出语义

每个 `X_AdamsSS.db` 可导出三张核心表：

| 文件 | 行的含义 |
|---|---|
| `X_AdamsE2_generators.csv` | 生成元 `id/name/stem/s` |
| `X_AdamsE2_relations.csv` | 关系 `rel/stem/s` |
| `X_AdamsE2_basis.csv` | β 进制单项式基 `index/mon/stem/s/d2` |

其中 `d2` 为空表示尚未计算，`[NULL]` 表示程序暂未得到数值；这两者都不能被当作“零”。生成元和基底的索引是后续证书中必须保留的稳定标识。

## 3. `ss` 的程序边界

### 3.1 类别配置输入

`ss` 不重新计算全部 (E_2) 页，而读取一个类别目录中的数据库及 `ss.json`：

| 配置段 | 内容 |
|---|---|
| `rings` | 环谱及其 `*_AdamsSS.db` |
| `modules` | 环谱上的模及其数据库 |
| `maps` | `Adams` 计算出的谱间映射 |
| `maps_v2` | 由 (E_2) 乘法结构推出的映射 |
| `cofseqs` | 余纤维序列中的包含映射、商映射和连接映射 |
| `dir_plot` | 图形输出目录 |

余纤维序列的数学形状是

```text
X --f--> Y --g--> Z --h--> ΣX
```

配置中的 `i/q/d` 分别指定包含、商和连接映射；`maps` 中的 `sus` 与 `t_max` 指定悬挂次数和计算范围。

### 3.2 `ss` 的命令输入输出

```text
./ss reset category_name
./ss add_diff cw_name stem s r x dx category_name
./ss deduce auto category_name num=3
./ss deduce auto category_name flags=zero num=3
./ss plot_ss category_name
./ss plot_cofseq category_name
```

输出包括：

- 类别目录中的 `log.db`：微分/扩张及其逐行人类可读证明；
- `X_AdamsE2_ss.csv` 或数据库中的谱序列结果；
- `cofseq_X__Y__Z.csv` 或数据库中的扩张结果；
- Adams 谱序列和余纤维序列的交互网页/图形。

### 3.3 机器证明记录的输入输出字段

`proofs.db` 或 `proofs-part1.csv`–`proofs-part22.csv` 的核心字段是：

```text
id, depth, reason, name, stem, s, t, r, x, dx, info
```

`name` 是谱或余纤维序列映射；对谱，记录 (d_r(x)=dx)；对映射，记录扩张；`depth` 和 `reason` 描述证明树；`info` 保存推理文本。论文明确说明该表超过两千万行，因此后续 Lean 接口应按查询结果生成证书，而不是整体导入。

`reason` 的完整分类为：

```text
D      演绎结论
T      尝试一个候选值并得到矛盾
d2     Adams 的次二阶运算程序直接计算
N      自然性
G      次数原因
XX/XY  Leibniz 规则或自然性产生的平方/乘积结论
ToCs   扩张谱序列枚举所有候选值
OutCsI 两个永久循环在 E∞ 上相等，差值必须被微分击中
CsCm   简单同伦关系给出的扩张
Syn    广义 Leibniz 规则
SynCs  广义 Mahowald 技巧给出的扩张
SynIn  广义 Mahowald 技巧判定永久循环
TI/DI/GI  对已知目标反向枚举来源的对应记录
```

## 4. Kervaire 论文中依赖 Lin Program 的所有位置

这里“依赖”分为论文明确写出 `Lin’s program` 的位置和正文实际读取附录计算结果的位置。

### 4.1 引言第 1 节：程序角色和总量

引言“证明策略”明确说：

1. Lin Program 计算大量有限谱的 Adams (E_2) 页及其映射；
2. 基于次级 Steenrod 代数，计算某些有限谱的 Adams (d_2)；
3. 用 Leibniz 规则、自然性和扩张谱序列传播微分与扩张；
4. 加上广义 Leibniz 规则和广义 Mahowald 技巧后，程序检查定理条件并生成可读证明；
5. 在 stem 125 的 105 个可能目标中，Lin Program 与归纳方法排除 101 个；
6. 剩余情形被约化为一个可能的非零 (d_{12})，再由第 7 节的人工/合成谱论证排除。

这些内容位于第 1 节“证明策略”中，论文 HTML 行 144–167；对应 PDF 是引言中介绍主定理证明策略的段落。

### 4.2 第 7 节“主定理证明”：附录结果的实际使用点

| 位置 | 直接读取的计算结果 | 在证明中的作用 |
|---|---|---|
| Fact 7.6 | 附录表 5、6、7、9 | 确定 (x_{126,8,4}+x_{126,8}) 到 (E_6) 的存活、(h_1h_4x_{109,12}) 的永久性及其可能击中方式、(h_0^2x_{124,8}) 的 (E_infty) 存活、stem 125 的唯一 (E_5) 存活元 |
| Remark 7.7 | 附录表 9 | 给出 (d_3(x_{126,6})=h_5x_{94,8}) 加上可能项，从而排除 (x_{126,6}) 击中 (h_1h_4x_{109,12}) |
| Proposition 7.8 | Fact 7.6 及其相关附录微分 | 将 (h_6^2) 永久性与唯一可能的 (d_{12}(h_6^2)=h_1h_4x_{109,12}) 等价化，并列出三个必要条件 |
| Fact 7.13 / Lemma 7.14 | 附录表 3、7 | 证明 (x_{123,9}+h_0x_{123,8}) 到 (E_{12}) 存活，并使用 (d_2(x_{125,8})) 的具体值构造合成同伦类 |
| Fact 7.15 / Lemma 7.16 | 附录表 7 | 证明 (h_0^2x_{125,9,2}) 至少存活到 (E_5)，从而确定合成 Toda 括号的检测元 |
| Fact 7.19 / Lemma 7.20 | 附录表 2 | 证明 (h_1x_{121,7}) 至少存活到 (E_6)，并给出乘以 (h_2) 的扩张关系 |
| Fact 7.21 / Proposition 7.9 | 附录表 2 | 证明 (h_6Md_0) 与 (h_5x_{91,11}) 是永久循环；这些永久性用于排除 η-扩张及最终排除剩余情形 |
| Proposition 7.9 的末段 | 附录表 1 | 在 (S^0/ν) 的 stem 126 中，证明 (h_1h_4x_{109,12}[0]) 不被 (rleq5) 的微分击中，产生矛盾 |

此外，第 7 节多处以具体附录表格支持 “某元素存活到 (E_r)”、“某个微分非零”、“某个候选被排除”等局部事实。这些事实是 Lin Program 输出进入主证明的最小接口。

### 4.3 第 8 节附录：程序数据的公开边界

附录标题是“(122leq t-sleq127, sleq25) 的经典 Adams 谱序列”。它明确给出程序依赖的三类输入：

1. 一组 CW 谱的 Adams (E_2) 页；
2. 这些 (E_2) 页之间的映射；
3. 某些 CW 谱的 Adams (d_2)。

附录还说明三条人工加入的微分：

```text
d5(h0^24 h6) = h0^2 P^6 d0
d6(h0^55 h7) = h0^2 x_{126,60}
d3(v2^16)     = beta^5 g  （tmf）
```

这三条不是 `Adams` 自动计算出的输入，必须在形式化边界中单独标记为“外部已知/手工加入的输入”，不能混入机器生成结果。

附录表格的输出范围如下：

| 表 | 对象和范围 | 输出类型 |
|---|---|---|
| 表 1 | (S^0/ν)，stem 126，(9leq sleq14) | Adams 微分、永久循环、未确定项 |
| 表 2 | (S^0)，stem 122，(sleq25) | 微分、逆微分记录、永久循环、未知候选 |
| 表 3 | (S^0)，stem 123，(sleq25) | 同上 |
| 表 4 | (S^0)，stem 124，(13leq sleq25) | 同上 |
| 表 5 | (S^0)，stem 124，(sleq12) | 同上 |
| 表 6 | (S^0)，stem 125，(20leq sleq25) | 同上 |
| 表 7 | (S^0)，stem 125，(sleq19) | 同上 |
| 表 8 | (S^0)，stem 126，(11leq sleq25) | 同上 |
| 表 9 | (S^0)，stem 126，(sleq10) | 同上 |
| 表 10 | (S^0)，stem 127，(21leq sleq25) | 同上 |
| 表 11 | (S^0)，stem 127，(10leq sleq20) | 同上 |
| 表 12 | (S^0)，stem 127，(sleq9) | 同上 |

表 1–12 的表项格式统一为：

```text
s | Elements | d_r | value
```

`d_r^{-1}` 表示反向读取微分；空白 `d_r` 表示永久循环；`?` 表示未确定值；`possibly` 表示程序/证明只排除了部分候选，不能误读成唯一等式。

## 5. 输入、输出和计算性结论目录

### 5.1 输入层

后续实现至少需要以下输入对象：

| 输入 | 具体内容 | 形式化时的候选类型 |
|---|---|---|
| 谱定义 | 细胞维数、生成元、Sq 作用 | `CWComplex` |
| 环/模关系 | 生成元、关系、基底、双次数 | `E2PageData` |
| 谱间映射 | 生成元像、悬挂次数 | `E2MapData` |
| 余纤维序列 | `X→Y→Z→ΣX` 及三张映射 | `CofiberSequenceData` |
| 已知 (d_2) | 源、目标、双次数 | `Differential` |
| 手工微分 | 上述三条外部微分 | `ExternalDifferential` |
| 传播规则 | Leibniz、自然性、扩张规则、广义两条定理的条件 | `PropagationRule` |
| 查询范围 | stem、过滤、微分长度、最大内部次数 | `ComputationRange` |

### 5.2 输出层

输出可按可信度和用途分成四层：

1. **结构输出**：(E_2) 生成元、关系、基底、乘法和映射。
2. **局部谱序列输出**：(d_r(x)=y)、(d_r^{-1}(x)=y)、永久循环和未确定候选。
3. **扩张输出**：余纤维序列中某个映射诱导的扩张及其过滤跳跃。
4. **证明输出**：候选枚举、矛盾传播、规则名称、依赖记录和人类可读说明。

### 5.3 Kervaire 论文实际使用的结论

后续 Lean 形式化的第一批目标应是以下结论：

1. (x_{126,8,4}+x_{126,8}) 存活到 (E_6)。
2. (h_1h_4x_{109,12}) 是永久循环，且只能由 (d_6(x_{126,8,4}+x_{126,8})) 或 (d_{12}(h_6^2)) 击中。
3. (h_0^2x_{124,8}) 存活到 (E_infty)。
4. stem 125、过滤 25 的 (E_5) 页中只有 (g^4Delta h_1g) 存活。
5. (d_3(x_{126,6})=h_5x_{94,8})，允许附加项 (h_6(Delta e_1+C_0+h_0^6h_5^2))，且不为零。
6. (x_{123,9}+h_0x_{123,8}) 存活到 (E_{12})，并且
   [
   d_2(x_{125,8})=h_1(x_{123,9}+h_0x_{123,8})+h_0^2x_{124,8}.
   ]
7. (h_0^2x_{125,9,2}) 存活到 (E_5)。
8. (h_1x_{121,7}) 存活到 (E_6)。
9. (h_6Md_0) 和 (h_5x_{91,11}) 是永久循环。
10. 在 (S^0/ν) 的 stem 126、(9leq sleq14) 范围内，(h_1h_4x_{109,12}[0]) 不被 (d_r)（(rleq5)）击中。
11. Lin Program 与归纳方法共同排除 stem 125 的 105 个潜在 (h_6^2) 目标中的 101 个；剩余程序相关边界由第 7 节的三个条件和合成谱论证处理。

注意第 5 项和附录表格中带有 `possibly` 的结论应建模为“集合包含/候选约束”，不能直接建模为唯一等式。带 `?` 的项应建模为未知值，不能生成正向证明。

## 6. 后续 Lean 证书接口的最小边界

第一阶段不需要把 49 个谱和两千多万行证明一次性放入 Lean。建议先实现下面的局部接口：

```text
输入：一个谱/映射/余纤维序列、有限范围内的 E2 数据、已知 d2 和外部微分
输出：一个局部微分或永久循环结论，加上证明树证书
检查：双次数匹配、源/目标属于基底、规则条件、候选排除、结论状态
```

对于每条待形式化结论，证书至少应携带：

```text
对象名称、stem、过滤 s、内部次数 t、微分长度 r、源 x、目标 dx、
结论状态、依赖的输入行、reason、规则参数、候选排除记录。
```

这样可以先验证论文真正使用的局部结果，再逐步扩展到全部数据库。

## 7. 边界判断

属于本项目第一阶段的内容：

- `Adams` 的 (E_2) 数据和部分 (d_2) 计算；
- `ss` 的微分/扩张传播和机器证明日志；
- Kervaire 论文附录表 1–12 中被正文引用的条目；
- 三条手工加入的微分及其来源标记；
- 论文中明确由 Lin Program 排除的 101/105 目标。

暂不属于该程序边界的内容：

- Kervaire 论文中的合成谱定义、广义 Leibniz 规则和广义 Mahowald 技巧本身的数学证明；
- 第 7 节最后的合成同伦和 ad hoc 论证；
- Browder、Mahowald–Tangora、Barratt–Jones–Mahowald、Hill–Hopkins–Ravenel 的外部定理；
- 从 (h_6^2) 存活到 Kervaire 不变量流形存在之间的全部拓扑基础。

这些内容是 Lin Program 的上层消费者或外部前提，后续如果要在 Lean 中形式化，需要单独建立接口和可信性说明。
