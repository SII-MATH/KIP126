# 当前冻结模型上的 A(M)

入口为 `KIP126.Main.Axiom.Literature.Route`，主类型为 `Inputs D η L`。
它集中当前 §7 证明路线使用的前人结果，全部引用同一个 `Route.Model`。
仅声明输入类型，没有安装全局公理或默认实例，也没有证明这些输入。

- `Classical`、`BX`：经典 θ₅、62-stem、Hopf 类和原始 BX 判据。
- `Synthetic`、`Realization`、`Algebra`：Pstrągowski/BHS 的结果及其实际模型比较。
- `May`、`Moss`、`Toda`：通用工具及低维关系，保留具体应用所需的条件和不定性。
- `Tmf`：经典 Hurewicz 后果及所需低过滤区域。
- `Applicability`：已有 normalized maps/Cν 三角、Moss 塔的来源适用义务。
- `Data`：统一总包；`sources.json`：来源、校验值、声明和消费点。

完整内容、范围和信任边界见 [A(M) 冻结说明](../../../../../docs/A_INPUT_FREEZE.md)。
该文档也说明为何论文新工具、局部单射、C₃/C₄/C₅ 和最终结论不在本包中。
