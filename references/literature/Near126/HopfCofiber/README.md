# Cν 的显式历史输入

[Data.lean](../../../../KIP126/Interface/Challenge/Literature/Near126/HopfCofiber/Data.lean) 只声明 `HopfCofiberFacts`：给定同一个谱序列及
三个明确的类，接受指定 d₃ 和 r = 2,…,5 的入射排除证据。
证据的来源是主论文，对应结论仍须在当前路线中推导；这里没有存在性公理。

固定球谱上的 Cν、底胞腔类以及仍需辨认的顶胞腔 lift 位于
[消费适配](../../../../KIP126/Main/Solution/Literature/Near126/HopfCofiber/Fixed/Data.lean)。
该历史接口不允许另选一个无关谱序列冒充当前路线的 Cν。
