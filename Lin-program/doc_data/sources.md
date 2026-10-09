# 来源与版本

## 论文

| 标识 | 内容 | 版本 |
|---|---|---|
| `lin-machine-proofs` | [arXiv:2412.10876](https://arxiv.org/abs/2412.10876)，程序、数据格式、机器证明和附录图表 | v2，2025-02-22 |
| `kervaire` | [arXiv:2412.10879](https://arxiv.org/abs/2412.10879)，Kervaire 主定理及程序依赖位置 | v2，2025-02-22 |

## 代码和数据

- 源码：[WayneLin92/SSeqCpp](https://github.com/WayneLin92/SSeqCpp)。论文把它作为 Lin Program 的公开源码；该仓库包含 `Adams`、`ss`、网页绘图和测试目录。
- 机器数据：[Zenodo 14272279](https://doi.org/10.5281/zenodo.14272279)。论文中提到的 `kervaire_database.zip`、`kervaire_csv.rar`、`proofs.db`、`proofs-part1.csv`–`proofs-part22.csv`以及绘图网页均属于该数据发布。
- Kervaire 交互图：[kervaire-49](https://waynelin92.github.io/ss/kervaire-49.html)。

## 版本审计规则

后续实现应固定论文版本、源码 commit、Zenodo 文件校验和、程序参数、输入数据库和输出数据库。若这些内容变化，应新建一份清单而不是覆盖当前清单。
