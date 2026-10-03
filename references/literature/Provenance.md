# 来源与命题管理

[source-inventory.json](source-inventory.json) 管理原始制品和摘要；
[SourceInventory.lean](../../KIP126/Def/References/Literature/SourceInventory.lean) 是对应的 Lean 投影；
[Claims.lean](../../KIP126/Def/References/Literature/Claims.lean) 记录稳定 claim ID、定位、责任及依赖。
通用包装在 [Def/References](../../KIP126/Def/References/README.md)。这些记录不会把资料升级为无条件定理。

当前路线的 A(M) 覆盖、源到模型的比较、内部适配与生产证明由
[challenge2-route-sources.json](../../docs/challenge2-route-sources.json) 逐字段登记。
该台账也记录必要的 Main 内部推论，并以 role 区分它们；Main 的 high125 非零存活不是外部结果。
固定经典背景现在有明确点集实现/识别责任，见 [第0步接口](../../docs/STAGE0_INTERFACES.md)，
不能继续将其描述成无来源的历史假设。

两个索引各自承担不同检查：

```sh
python3 scripts/check_source_inventory.py
python3 scripts/check_route_literature.py --lean-check /tmp/RouteSourcesCheck.lean
lake env lean /tmp/RouteSourcesCheck.lean
```

第一项核对来源状态、文件摘要、Lean/JSON 投影及 Blueprint 定位。
后两项核对路线全部输入字段的角色覆盖、声明存在和实际模块归属，以及选定的原始 CSV 行。
这些检查不能代替阅读原文或证明模型比较。

来源未直接读取时保持准确状态；不得把原论文的引用、有限日志或旧数据缺行当成相应命题的证明。
本文内部推导和计算认证分别保留自己的证明责任，遵循同一个 Challenge2 见证，不能循环传递。
