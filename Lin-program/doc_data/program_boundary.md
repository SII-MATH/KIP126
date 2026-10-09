# Lin Program 程序边界

本文档只说明程序本身负责什么，以及程序输入输出到哪里为止。资料依据 Lin Program 论文 [arXiv:2412.10876](https://arxiv.org/abs/2412.10876)、Kervaire 论文附录 [arXiv:2412.10879](https://arxiv.org/abs/2412.10879) 和公开源码 [SSeqCpp](https://github.com/WayneLin92/SSeqCpp)。

## 1. 程序由两个部分组成

```text
Adams  ──>  E₂ 页、映射、部分 d₂
              │
              ▼
ss     ──>  Adams 微分、扩张、传播证明和图表
```

`Adams` 负责从 Steenrod 代数上的有限数据计算 Ext 和 Adams (E_2) 页。`ss` 读取这些结果，并使用 Leibniz 规则、自然性、扩张谱序列、广义 Leibniz 规则和广义 Mahowald 技巧继续推导。

## 2. `Adams` 的边界

### 输入

- CW 谱的细胞维数；
- Steenrod 代数模生成元；
- 非平凡的 (Sq^{2^k}) 作用；
- 环谱、模谱及其关系；
- 谱之间的映射、生成元像和悬挂次数；
- 计算范围，例如最大内部次数；
- 某些谱的次二阶 Steenrod 运算数据。

自定义对象写入 `Adams.json`。源码 README 给出的核心字段为：

```text
CW_complexes[name].cells
CW_complexes[name].cells_gen
CW_complexes[name].operations
maps[name].from
maps[name].to
maps[name].images
maps[name].sus
```

### 计算功能

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

### 输出

- 最小分解数据库：`*_Adams_res.db`；
- 乘法结构数据库：`*_Adams_res_prod.db`；
- Adams (E_2) 页数据库：`*_AdamsSS.db`；
- 次二阶微分数据库：`*_Adams_d2.db`；
- 谱之间映射数据库：`map_AdamsSS_X__Y.db`；
- 可导出的文本表：生成元、关系、基底和 `d2` 列。

一条基底记录至少包含：索引、单项式、stem、Adams 过滤和 `d2`。`[NULL]` 表示程序尚未确定，不表示零。

## 3. `ss` 的边界

### 输入

`ss` 接受一个类别目录。目录包含：

- `ss.json`；
- 环谱的 `*_AdamsSS.db`；
- 模谱的 `*_AdamsSS.db`；
- `Adams` 产生的谱间映射；
- 由乘法结构得到的映射；
- 余纤维序列及其三条映射。

配置的主要字段为：

```text
rings
modules
maps
maps_v2
cofseqs
dir_plot
```

余纤维序列写成

```text
X --f--> Y --g--> Z --h--> ΣX
```

### 计算功能

```text
./ss reset category_name
./ss add_diff cw_name stem s r x dx category_name
./ss deduce auto category_name num=3
./ss deduce auto category_name flags=zero num=3
./ss plot_ss category_name
./ss plot_cofseq category_name
```

程序可以：

- 传播 Adams 微分；
- 传播或计算扩张谱序列中的扩张；
- 使用 Leibniz 规则和自然性；
- 检查广义 Leibniz 规则和广义 Mahowald 技巧的条件；
- 枚举候选并排除导致矛盾的候选；
- 生成证明日志和交互图。

### 输出

- `log.db`：类别级计算结果和人类可读证明；
- `X_AdamsE2_ss.csv`：Adams 微分、永久循环和未确定项；
- `cofseq_X__Y__Z.csv`：余纤维序列扩张；
- `proofs.db` 或分片证明表；
- Adams 谱序列和余纤维序列的网页图。

机器证明记录的字段为：

```text
id, depth, reason, name, stem, s, t, r, x, dx, info
```

其中 `reason` 可表示演绎、候选尝试、次二阶计算、自然性、次数原因、Leibniz 规则、广义 Leibniz 规则或广义 Mahowald 技巧等。

## 4. 规模边界

论文数据集包含：

- 49 个 CW 谱；
- 180 个谱之间的映射；
- 61 个余纤维序列；
- 机器生成的证明记录超过两千万行。

源码还规定：最大 Adams 过滤为 (4095)，Steenrod 代数最高次数为 (383)，自由模维数上限为 (524288)。

## 5. 明确不属于程序边界的内容

以下内容属于上层数学论证或外部输入：

- 合成谱的定义和基本理论；
- 广义 Leibniz 规则与广义 Mahowald 技巧本身的数学证明；
- Kervaire 论文第 7 节最后的 ad hoc 同伦论证；
- Browder 等人的外部定理；
- 从 (h_6^2) 存活到 Kervaire 不变量流形存在之间的全部拓扑推导。

附录中明确列出的三条手工微分也应单独标记为外部输入：

```text
d5(h0^24 h6) = h0^2 P^6 d0
d6(h0^55 h7) = h0^2 x_{126,60}
d3(v2^16)     = beta^5 g
```

