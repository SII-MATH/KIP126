"use strict";
window.PROOF_BUNDLE = {
  "chapters": [
    {
      "id": "opening",
      "parts": [
        "T00",
        "T00a"
      ],
      "title": "$h_6^2$ 的永久存活",
      "title_html": "\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_6^2\"\u003e\u003c/span\u003e 的永久存活"
    },
    {
      "id": "quotients",
      "parts": [
        "T01a",
        "T01b"
      ],
      "title": "有限 $\\lambda$ 商的过滤",
      "title_html": "有限 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda\"\u003e\u003c/span\u003e 商的过滤"
    },
    {
      "id": "data",
      "parts": [
        "P02a"
      ],
      "title": "计算所需的经典数据",
      "title_html": "计算所需的经典数据"
    },
    {
      "id": "lifting",
      "parts": [
        "P02b"
      ],
      "title": "消去两个低过滤层",
      "title_html": "消去两个低过滤层"
    }
  ],
  "dependencies": [
    {
      "_source_sha256": "9de3096f578868223ed282db44b86f33eb9b4394412286f4bc26b30cb6c162cf",
      "category": "literature",
      "checked_version": "v1",
      "formal_status": {
        "axioms_observed": [
          "propext",
          "sorryAx",
          "Classical.choice",
          "Quot.sound"
        ],
        "classifications": [
          "contains_sorry",
          "depends_on_unfinished_proof",
          "interface_assumption",
          "main_axiom_input_if_using_consumer"
        ],
        "source_direct_sorry": [
          "KIP126.Interface.Solution.standardSphereApplicability",
          "KIP126.Def.Solution.implementation_exists",
          "KIP126.Def.Comparison.StageInterfaces.cobarDerivedExtComparison",
          "KIP126.Steenrod.Milnor.Module.exists_dualCobarComparison",
          "KIP126.StableHomotopy.Implementation.completedSphere_twoComplete",
          "KIP126.StableHomotopy.Implementation.completedSphere_moore_universal"
        ],
        "summary": "语义组合已核对；强收敛、固定implementation、cofree分解/Ext比较等仍依赖含sorry的构造与接口。第二轮没有新增Lean消失定理或重编译；不能将此次语义通过称形式化完成。"
      },
      "full_reason": "当前源码足以逐项对应强收敛部分：IsAdamsTowerStronglyConvergent要求实际塔像过滤的完备性、分离性和E∞到该过滤关联分次的同构；associatedGraded与towerAbutment展开后正是F^sπ_n/F^(s+1)π_n。固定模型经sourceComparison和完成球的两个命题绑定到2完成球。sphereAdamsModel从同一塔定义且微分次数为(r,r−1)。在s,t∈ℕ内，internalEquiv组合MilnorCohomology.comparison和E.comparison；取与E.cobarResolution相容的dualCobarComparison可得到左Steenrod模Ext。该组合没有覆盖塔页已有的负内部整数次数，而used_statement并未只说(2,128)或t≥0。第一轮因此仅部分覆盖，需定向补查；此判断没有要求任意谱X的来源一般性，也没有因sorry本身拒绝语义。 第二轮已补足原先证据缺口，首轮未通过不再是当前结论。完整实例化及七步依据见formal/evidence-check/followup/EXT-001-negative-degree-chain.json：固定c提供全部tensor/cooperation实例；全整数E₁同调坐标将负t化为空词空间，页同调和同一塔页同构给E₂零。右Ext的实际cofree分解逐项仅有非负内部次数，负t的trivialAt无法非零映入任一分解项；extMk_surjective和extMk_zero使所有s的Ext为零，再用同一resolution的右到左等价。正t和0沿用首轮internalEquiv，因此整个整数内部次数已覆盖，未缩小used_statement。",
      "id": "EXT-001",
      "name": "经典 Adams 谱序列与强收敛",
      "next_search": [],
      "rounds": [
        {
          "candidates": [
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C001-convergence-producer",
              "checker_assessment": {
                "coverage": "constituent_only",
                "current_source_sha256_verified": true,
                "reason": "强收敛部分语义相符；不是完整E₂=Ext声明，且源码本体sorry。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Interface/Solution/Foundation.lean",
              "end_line": 14,
              "file_sha256": "7b6e7038b1b2dbebebbeac966548ef21548a01060b92f942bf0c64a001b3f153",
              "fqn": "KIP126.Interface.Solution.standardSphereApplicability",
              "full_type": "KIP126.Classical.Adams.BHSObjectApplicability KIP126.Def.fixedImplementation.foundationInput.countableProducts KIP126.Def.fixedImplementation.foundationInput.hf2.unit (KIP126.StableHomotopy.SphereSpectrum (C := KIP126.Def.fixedImplementation.foundationInput.Spectrum))",
              "implicit_context": [],
              "imports": [
                "KIP126.Interface.Challenge.Challenge2"
              ],
              "key_definitions": [
                "K18-strong-convergence",
                "K19-applicability",
                "K20-tower-filtration",
                "K21-tower-homotopy-image",
                "K22-homotopy-abutment",
                "K23-sphere-source",
                "K24-sphere-two-complete"
              ],
              "kind": "theorem",
              "line": 9,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Interface/Solution/Foundation.lean",
              "preliminary_semantic_reading": "强收敛部分的直接 producer：BHSObjectApplicability.strongly_convergent 在同一固定球的塔上提供 complete、separated、E∞ 与实际塔像过滤关联分次的同构存在性。它不单独陈述 E₂=左模Ext。",
              "proof_status_observation": "声明体直接含 sorry；#print axioms 含 sorryAx。",
              "source_declaration": "theorem standardSphereApplicability : Classical.Adams.BHSObjectApplicability\n    KIP126.Def.fixedImplementation.foundationInput.countableProducts\n    KIP126.Def.fixedImplementation.foundationInput.hf2.unit\n    (StableHomotopy.SphereSpectrum\n      (C := KIP126.Def.fixedImplementation.foundationInput.Spectrum)) := by\n  sorry"
            },
            {
              "actual_print_axioms": null,
              "candidate_id": "C001-convergence-field",
              "checker_assessment": {
                "coverage": "constituent_only",
                "current_source_sha256_verified": true,
                "reason": "与producer同一强收敛命题，投影前提self不可删；属于接口输入。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Interface/Challenge/Challenge2.lean",
              "end_line": 1299,
              "file_sha256": "508d824488df1308061552da92b1fb967edc3ca90e6d46bc49be5192f40b3992",
              "fqn": "KIP126.Challenge2.FoundationInputs.sphereApplicability",
              "full_type": "(self : KIP126.Challenge2.FoundationInputs) → KIP126.Classical.Adams.BHSObjectApplicability KIP126.Def.fixedImplementation.foundationInput.countableProducts KIP126.Def.fixedImplementation.foundationInput.hf2.unit (KIP126.StableHomotopy.SphereSpectrum (C := KIP126.Def.fixedImplementation.foundationInput.Spectrum))",
              "implicit_context": [
                "(self : KIP126.Challenge2.FoundationInputs)"
              ],
              "imports": [
                "KIP126.Def.Kervaire.Geometry.Data",
                "KIP126.Def.Comparison.StageInterfaces",
                "KIP126.Def.ClassicalAdams.Convergence.BHS.Predicates",
                "KIP126.Def.ClassicalAdams.SphereVanishing.Predicates",
                "KIP126.Def.StageInput.StandardSphere.Route.Data",
                "KIP126.Def.Synthetic.EInfty.Presentation.Predicates",
                "KIP126.LinProgram.Generated.Differentials.Table",
                "KIP126.LinProgram.Generated.Staircase.Table",
                "KIP126.LinProgram.Interpretation.State.Data",
                "KIP126.Def.SpectralSequence.Computation.State.Predicates",
                "KIP126.Def.StageInput.StandardSphere.Sequence.Data",
                "KIP126.Def.StageInput.StandardSphere.Classes.Data",
                "KIP126.Def.AdamsE2.LinClasses.Data",
                "KIP126.Def.AdamsE2.LinBasisTable.Predicates",
                "KIP126.Def.SpectralSequence.Computation.Predicates",
                "KIP126.Def.Comparison.ClassicalSynthetic.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Data",
                "KIP126.Def.ClassicalAdams.SphereClasses.Hi.Internal.Data",
                "KIP126.Def.ClassicalAdams.SphereClasses.Products.Data",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.CycleMap.Data",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Data",
                "KIP126.Def.StageInput.Milnor",
                "KIP126.Def.Kervaire.Theta5.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Window.Data",
                "KIP126.Def.Synthetic.EInfty.Shift.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Ambiguity.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Data",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Equivalence.Data",
                "KIP126.Def.ClassicalAdams.Suspension.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Crossing.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Solutions.Data",
                "KIP126.Def.Synthetic.PageExtension.Solutions.Permanent.Data",
                "KIP126.Def.Synthetic.ExtensionSS.Square.Construction.Data",
                "KIP126.Def.ClassicalAdams.Moss.Statement.Predicates",
                "KIP126.Def.ClassicalAdams.Tmf.Model.Data",
                "KIP126.Def.ClassicalAdams.Tmf.Model.Predicates",
                "KIP126.Def.ClassicalAdams.SphereMultiplication.Data",
                "KIP126.Def.Steenrod.MilnorExt.Resolution.Data",
                "KIP126.Def.Synthetic.Bockstein.Hom.Data",
                "KIP126.Def.Synthetic.QuotientFunctor.Data",
                "KIP126.Def.ClassicalAdams.Convergence.Tower.Predicates",
                "KIP126.Def.ClassicalAdams.Completion.Predicates",
                "KIP126.LinProgram.Interpretation.Branch.Predicates",
                "KIP126.Def.Kervaire.Route.Extensions.Data",
                "KIP126.Def.Kervaire.Route.Hopf.Data",
                "KIP126.Def.Kervaire.Route.Conditions.Predicates",
                "KIP126.Def.Kervaire.Route.Massey.Predicates",
                "KIP126.Def.Kervaire.Route.Toda.Predicates",
                "KIP126.Def.Synthetic.Computation.Predicates",
                "KIP126.Def.StableHomotopy.Implementation.Fixed",
                "KIP126.Def.Kervaire.Route.Labels.Tmf.Data",
                "Mathlib.CategoryTheory.Adjunction.Additive",
                "KIP126.Def.Kervaire.Route.Multiplication.Comparison",
                "KIP126.Def.ClassicalAdams.TowerNaturality.Page.Data",
                "KIP126.Def.StableHomotopy.FiniteType.Predicates",
                "Mathlib.CategoryTheory.Monoidal.Mon",
                "KIP126.Def.Kervaire.Route.Triangles.Predicates",
                "KIP126.Def.Comparison.ClassicalSynthetic.RealizationWeights.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.RealizationTower.Route.Data",
                "KIP126.LinProgram.Interpretation.Route.Predicates",
                "KIP126.Def.Kervaire.Route.SourceLanguage",
                "KIP126.Def.Comparison.StageInterfaces.Models",
                "KIP126.Def.StageInput.StandardSphere.Classes.Family"
              ],
              "key_definitions": [
                "K18-strong-convergence",
                "K19-applicability",
                "K29-main-stage-axiom"
              ],
              "kind": "structure_field",
              "line": 1295,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Interface/Challenge/Challenge2.lean",
              "preliminary_semantic_reading": "同一强收敛义务也确实作为 FoundationInputs 的字段存在；必须已有 self，字段并非无条件证明。",
              "proof_status_observation": "接口假设；Main 的 self 来自唯一 challenge2 公理，producer 未完成。",
              "source_declaration": "  sphereApplicability : Classical.Adams.BHSObjectApplicability\n    KIP126.Def.fixedImplementation.foundationInput.countableProducts\n    KIP126.Def.fixedImplementation.foundationInput.hf2.unit\n    (StableHomotopy.SphereSpectrum\n      (C := KIP126.Def.fixedImplementation.foundationInput.Spectrum))"
            },
            {
              "actual_print_axioms": null,
              "candidate_id": "C001-differential-degree",
              "checker_assessment": {
                "coverage": "constituent_only",
                "current_source_sha256_verified": true,
                "reason": "当前构造精确给出初页2和(r,r−1)，与同一实际tower相连；本身不给收敛或Ext。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Def/StageInput/StandardSphere/Sequence/Data.lean",
              "end_line": 16,
              "file_sha256": "3328df391d48a3b6d879165bcc5b7105515858607aefa53e198c38f03f1832b7",
              "fqn": "KIP126.Classical.Adams.sphereAdamsModel",
              "full_type": "KIP126.Classical.Adams.AdamsSSData",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.ClassicalAdams.SSDataModel.Data",
                "KIP126.Def.StageInput.Foundation",
                "KIP126.Def.ClassicalAdams.TowerSSData.Sequence.Data"
              ],
              "key_definitions": [
                "K01-standard-foundation",
                "K25-adams-degrees"
              ],
              "kind": "definition",
              "line": 13,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Def/StageInput/StandardSphere/Sequence/Data.lean",
              "preliminary_semantic_reading": "展开 AdamsSSData 后 firstPage=2 且 ∀r diffDeg r=(r,r−1)，由构造 rfl 给出；sequence 是固定 foundation 的真实球塔。",
              "proof_status_observation": "数据定义中的次数证据 rfl；固定基础构造仍依赖未完成证明。",
              "source_declaration": "noncomputable def sphereAdamsModel : AdamsSSData where\n  sequence := adamsTowerInternalSpectralSequence standardFoundation.hf2.unit SphereSpectrum\n  firstPage := rfl\n  differentialDegree _ := rfl"
            },
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C-bridge-internal-ext",
              "checker_assessment": {
                "coverage": "constituent_only",
                "current_source_sha256_verified": true,
                "reason": "加法桥保持同一H/M且有代表元约束，但只在s,t:ℕ；不能由线性等价推出乘法相容。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Def/Comparison/StageInterfaces.lean",
              "end_line": 504,
              "file_sha256": "9ef16f662af9ee5152afc5c2856f21815b1918f1b76b01e98fc686c49d418870",
              "fqn": "KIP126.Challenge2.CobarDerivedExtComparison.internalEquiv",
              "full_type": "{C : Type u} → [StableHomotopyCategory.{u,v} C] → [HasFunctorialCofiber (C := C)] → {H : Mod2EilenbergMacLane (C := C)} → {M : MilnorCooperations H} → (E : KIP126.Challenge2.CobarDerivedExtComparison H M) → (s t : ℕ) → (adamsTowerInternalSpectralSequence H.unit SphereSpectrum).Page 2 ((s : ℤ),(t : ℤ)) ≃ₗ[ℤ] KIP126.Steenrod.Milnor.Ext.SphereExt s (t : ℤ)",
              "implicit_context": [
                "universe u v",
                "{C : Type u}",
                "[KIP126.StableHomotopy.StableHomotopyCategory.{u,v} C]",
                "[KIP126.StableHomotopy.HasFunctorialCofiber (C := C)]",
                "(H : KIP126.StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))",
                "(M : KIP126.Classical.Adams.MilnorCooperations H)"
              ],
              "imports": [
                "KIP126.Def.SpectralSequence.Basic.Category.Data",
                "KIP126.Def.SpectralSequence.Computation.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Window.Data",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Equivalence.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Data",
                "KIP126.Def.Synthetic.EInfty.Presentation.Predicates",
                "KIP126.Def.Synthetic.EInfty.Shift.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Ambiguity.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Solutions.Data",
                "KIP126.Def.Synthetic.PageExtension.Solutions.Permanent.Data",
                "KIP126.Def.Synthetic.ExtensionSS.Square.Construction.Data",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.Data",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Data",
                "KIP126.Def.Steenrod.MilnorExt.Resolution.Data",
                "KIP126.Def.Synthetic.Bockstein.Hom.Data",
                "KIP126.Def.Synthetic.QuotientFunctor.Data",
                "KIP126.Def.ClassicalAdams.Convergence.Tower.Predicates",
                "KIP126.Def.ClassicalAdams.Completion.Predicates"
              ],
              "key_definitions": [
                "K10-page-cobar-comparison",
                "K11-derived-ext-interface",
                "K15-right-comodule-ext"
              ],
              "kind": "definition",
              "line": 496,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Def/Comparison/StageInterfaces.lean",
              "preliminary_semantic_reading": "把实际塔 E₂ 与 right-comodule derived Ext 相连，保留同一个 H、M 和输入 E。范围为 s,t∈ℕ；只给加法线性等价，目标还不是 left Steenrod-module Ext。",
              "proof_status_observation": "依赖输入 E；实际 #print axioms 另检出 sorryAx，不能把定义当成 E 的存在证明。",
              "source_declaration": "noncomputable def CobarDerivedExtComparison.internalEquiv {C : Type u}\n    [StableHomotopy.StableHomotopyCategory.{u, v} C]\n    [StableHomotopy.HasFunctorialCofiber (C := C)]\n    {H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}\n    {M : MilnorCooperations H} (E : CobarDerivedExtComparison H M) (s t : ℕ) :\n    (adamsTowerInternalSpectralSequence H.unit StableHomotopy.SphereSpectrum).Page 2\n      ((s : ℤ), (t : ℤ)) ≃ₗ[ℤ] Steenrod.Milnor.Ext.SphereExt s (t : ℤ) :=\n  (MilnorCohomology.comparison H M s t).symm.trans\n    ((E.comparison s t).restrictScalars ℤ)"
            },
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C-bridge-ext-exists",
              "checker_assessment": {
                "coverage": "constituent_only",
                "current_source_sha256_verified": true,
                "reason": "提供E的存在性命题，因此不把E当作未声明新增假设；该存在性是sorry而非已实现数据。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Def/Comparison/StageInterfaces/Proofs/Cobar.lean",
              "end_line": 25,
              "file_sha256": "a67cae95e97c749c288a2fd731bba46d84b5cc510b57e25b49d0b147a7bd5cbc",
              "fqn": "KIP126.Def.Comparison.StageInterfaces.cobarDerivedExtComparison",
              "full_type": "∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] (H : Mod2EilenbergMacLane (C := C)) (M : MilnorCooperations H), Nonempty (KIP126.Challenge2.CobarDerivedExtComparison H M)",
              "implicit_context": [
                "universe u v",
                "{C : Type u}",
                "[KIP126.StableHomotopy.StableHomotopyCategory.{u,v} C]",
                "[KIP126.StableHomotopy.HasFunctorialCofiber (C := C)]",
                "(H : KIP126.StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))",
                "(M : KIP126.Classical.Adams.MilnorCooperations H)"
              ],
              "imports": [
                "KIP126.Def.Comparison.StageInterfaces",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.Proofs",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Proofs"
              ],
              "key_definitions": [
                "K11-derived-ext-interface",
                "K17-cobar-resolution"
              ],
              "kind": "theorem",
              "line": 23,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Def/Comparison/StageInterfaces/Proofs/Cobar.lean",
              "preliminary_semantic_reading": "提供前一比较所需 E 的存在性命题；源码为 sorry。",
              "proof_status_observation": "声明体直接含 sorry；#print axioms 含 sorryAx。",
              "source_declaration": "theorem cobarDerivedExtComparison :\n    Nonempty (KIP126.Challenge2.CobarDerivedExtComparison H M) := by\n  sorry"
            },
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C-bridge-right-left",
              "checker_assessment": {
                "coverage": "constituent_only",
                "current_source_sha256_verified": true,
                "reason": "同一E.cobarResolution可实例化该全次数比较；完整代表元条件保持同一模型/整数t。源码sorry。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Def/Steenrod/MilnorModule/Comparison/Proofs.lean",
              "end_line": 18,
              "file_sha256": "a18aeb29b3fca3672337a450a8927970e4e91f01765d2a2a9ad17d1416462f2a",
              "fqn": "KIP126.Steenrod.Milnor.Module.exists_dualCobarComparison",
              "full_type": "∀ (R : KIP126.Steenrod.Milnor.Ext.CobarResolution), ∃ e : ∀ (s : ℕ) (t : ℤ), KIP126.Steenrod.Milnor.Ext.SphereExt s t ≃ₗ[KIP126.Core.Algebra.F2] KIP126.Steenrod.Milnor.Module.SphereExt s t, KIP126.Steenrod.Milnor.Module.PreservesDualCobarRepresentatives R e",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorModule.Comparison.Predicates"
              ],
              "key_definitions": [
                "K12-dual-representatives",
                "K13-left-module-ext",
                "K15-right-comodule-ext",
                "K17-cobar-resolution"
              ],
              "kind": "theorem",
              "line": 15,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Def/Steenrod/MilnorModule/Comparison/Proofs.lean",
              "preliminary_semantic_reading": "从同一 cobarResolution 的右余模 Ext 到左模 Ext，所有次数固定，代表元通过实际对偶指定；可与 internalEquiv 组合，但存在性是 sorry。",
              "proof_status_observation": "声明体直接含 sorry；#print axioms 含 sorryAx。",
              "source_declaration": "theorem exists_dualCobarComparison (R : Ext.CobarResolution) :\n    ∃ e : ∀ (s : ℕ) (t : ℤ), Ext.SphereExt s t ≃ₗ[F2] SphereExt s t,\n      PreservesDualCobarRepresentatives R e := by\n  sorry"
            }
          ],
          "next_search": [
            {
              "priority": 1,
              "required_evidence": "完整类型、所有前提、当前源码位置；若以双方为零补齐，须覆盖所有s:ℕ而非仅s=1，并保持同一fixed H/M/塔。不要把t.toNat=0代替负t。",
              "scope": [
                "KIP126/Def/ClassicalAdams",
                "KIP126/Def/Steenrod",
                "KIP126/Interface"
              ],
              "suggested_patterns": [
                "negative",
                "neg",
                "t \u003c 0",
                "IsZero",
                "Subsingleton",
                "connective",
                "boundedBelow",
                "other_degree"
              ],
              "target": "固定球tower E₂与actual left/right Ext在t\u003c0的比较，或二者消失的匹配声明"
            },
            {
              "priority": 2,
              "required_evidence": "可沿已有定义和声明补证，不新增Lean命题，不缩小used_statement。",
              "target": "如已有全整数内部次数的E₂比较，给出实际实例化链和其与固定球tower的等式"
            }
          ],
          "reason": "已找到固定球塔的强收敛、正确微分次数和非负内部次数的 E₂—Ext 比较；固定命题完整次数范围所需的负内部次数比较或消失证据尚缺，需第二轮检索。",
          "round": 1,
          "search_queries": [
            {
              "argv": [
                "rg",
                "-n",
                "StrongConver|strongConver|IsAdamsTowerStronglyConvergent|associatedGraded",
                "KIP126/Def/ClassicalAdams",
                "KIP126/Interface",
                "KIP126/Main"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q01-convergence.txt",
              "record_id": "q01-convergence",
              "utc": "2026-10-04T15:04:02.364370+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "AdamsOneLine|OneLine|oneLine|one_line|firstLine|FirstLine|first_line|hi_nonzero|hi_ne_zero|hi_basis",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q02-first-line.txt",
              "record_id": "q02-first-line",
              "utc": "2026-10-04T15:04:02.395032+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "standardH6Square|h6Square_ne_zero|hiSquare|h6.*Yoneda|Yoneda.*h6",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q03-square.txt",
              "record_id": "q03-square",
              "utc": "2026-10-04T15:04:02.417011+00:00"
            },
            {
              "argv": [
                "git",
                "status",
                "--short"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q04-git.txt",
              "record_id": "q04-git",
              "utc": "2026-10-04T15:04:02.448418+00:00"
            },
            {
              "argv": [
                "rg",
                "--files",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q05-files.txt",
              "record_id": "q05-files",
              "utc": "2026-10-04T15:04:02.460405+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "AdamsOneLine|oneLine|strongConvergence|sphereApplicability|standard_class",
                "KIP126/Interface/Challenge/Challenge2.lean",
                "KIP126/Def/StageInput",
                "KIP126/Def/Foundation"
              ],
              "exit_code": 2,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q06-structure-context.txt",
              "record_id": "q06-structure-context",
              "utc": "2026-10-04T15:04:02.468829+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "E2.*[Ee]xt|[Ee]xt.*E2|one_line|OneLine|oneLine|finrank",
                "KIP126/Def/ClassicalAdams",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q07-ext-comparison.txt",
              "record_id": "q07-ext-comparison",
              "utc": "2026-10-04T15:04:02.483434+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "CobarDerivedExtComparison|DerivedExt|cobarDerivedExt|Yoneda|yoneda",
                "KIP126/Def",
                "KIP126/Interface",
                "KIP126/Main"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q08-derived-ext.txt",
              "record_id": "q08-derived-ext",
              "utc": "2026-10-04T15:06:16.477773+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "cup.*yoneda|yoneda.*cup|Preserves.*Cup|Cobar.*Yoneda|cobar.*Yoneda",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q09-multiplicativity.txt",
              "record_id": "q09-multiplicativity",
              "utc": "2026-10-04T15:06:16.510271+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "fixedImplementation|implementation_exists|sphereApplicability|SourceComparison",
                "KIP126/Def",
                "KIP126/Interface/Challenge/Challenge2.lean"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q10-fixed-foundation.txt",
              "record_id": "q10-fixed-foundation",
              "utc": "2026-10-04T15:06:16.528169+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "finrank|FiniteDimensional|Basis|oneLine|OneLine|h6Square_ne_zero",
                "KIP126/Def/Steenrod",
                "KIP126/Def/ClassicalAdams",
                "KIP126/Interface/Solution/AdamsOneLine.lean"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q11-basics.txt",
              "record_id": "q11-basics",
              "utc": "2026-10-04T15:06:16.540542+00:00"
            }
          ],
          "search_record": "formal/search-round1.json",
          "search_record_sha256": "b4c9bdddfe6aa8e6566d1a41d6dbc00e15a0a241ca57efc66bdb4fbea3ef5c9d",
          "semantic_status": "not_passed",
          "verdict": "not_passed"
        },
        {
          "candidates": [
            {
              "candidate_id": "R2-C001-word-coordinates",
              "end_line": 38,
              "fqn": "KIP126.Classical.Adams.sphereTowerHomologyWordEquiv",
              "full_type": "∀ (s : ℕ) (n : ℤ), mod2HomologyF2 H R n (adamsTower H.unit SphereSpectrum s) ≃ₗ[ZMod 2] (MilnorWord s (n+s) →₀ ZMod 2)",
              "implicit_context": [
                "universe u v",
                "{C : Type u}",
                "[StableHomotopyCategory.{u,v} C]",
                "[MonoidalPreadditive C]",
                "H : Mod2EilenbergMacLane (C := C)",
                "R : Mod2RingStructure H",
                "K : Mod2CooperationKunneth H R",
                "B : Mod2ReducedMilnorBasis H R",
                "[HasFunctorialCofiber (C := C)]",
                "[(tensorLeft H.HF2).CommShift ℤ]",
                "[(tensorLeft H.HF2).IsTriangulated]"
              ],
              "imports": [
                "KIP126.Def.ClassicalAdams.TowerHomology.MilnorCoordinates.Basic.Data",
                "KIP126.Def.ClassicalAdams.TowerHomology.Kunneth.Proofs"
              ],
              "kind": "definition",
              "line": 25,
              "path": "KIP126/Def/ClassicalAdams/TowerHomology/MilnorCoordinates/Data.lean",
              "preliminary_semantic_reading": "新候选：覆盖所有整数n；取n=t−s，则词次数严格等于整数t。不是t.toNat截断。需要通过adamsPageOneHomologyF2Equiv接到E₁，再由商页得到E₂。",
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/ClassicalAdams/TowerHomology/MilnorCoordinates/Data.lean",
              "source_declaration": "def sphereTowerHomologyWordEquiv : ∀ (s : ℕ) (n : ℤ),\n    mod2HomologyF2 H R n (adamsTower H.unit SphereSpectrum s) ≃ₗ[ZMod 2]\n      (MilnorWord s (n + s) →₀ ZMod 2)\n  | 0, n =\u003e (sphereHomologyEmptyWordEquiv H R n).trans\n      (LinearEquiv.cast (R := ZMod 2) (M := fun t =\u003e MilnorWord 0 t →₀ ZMod 2)\n        (show n = n + (0 : ℕ) by simp))\n  | s + 1, n =\u003e\n    (LinearEquiv.cast (R := ZMod 2)\n      (M := fun i =\u003e mod2HomologyF2 H R i (adamsTower H.unit SphereSpectrum (s + 1)))\n      (show n = (n + 1) - 1 by omega)).trans\n      ((adamsTowerHomologyTensorEquiv H R K SphereSpectrum s (n + 1)).trans\n        (reducedTensorMilnorWordEquiv H R B\n          (fun i =\u003e mod2HomologyF2 H R i (adamsTower H.unit SphereSpectrum s))\n          s (sphereTowerHomologyWordEquiv s) n))",
              "source_sha256": "72167d1b0a3f58b615ef12cfc0850fb43e62b3bbf292cdfea268122505a698d4"
            },
            {
              "candidate_id": "R2-C001-word-nonneg",
              "end_line": 38,
              "fqn": "KIP126.Steenrod.Milnor.milnorWord_degree_nonneg",
              "full_type": "∀ {s : ℕ} {t : ℤ} (d : KIP126.Steenrod.Milnor.MilnorWord s t), 0 ≤ t",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Monomials.Words.Data",
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Monomials.Basis.Proofs"
              ],
              "kind": "theorem",
              "line": 36,
              "path": "KIP126/Def/Steenrod/MilnorCobar/Polynomial/Monomials/Words/Proofs.lean",
              "preliminary_semantic_reading": "与前项组合排除t\u003c0的词；覆盖全部s。定理体完整且无sorry。",
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorCobar/Polynomial/Monomials/Words/Proofs.lean",
              "source_declaration": "theorem milnorWord_degree_nonneg {s : ℕ} {t : ℤ} (d : MilnorWord s t) : 0 ≤ t := by\n  rw [← d.property.1]\n  exact Finset.sum_nonneg fun _ _ =\u003e Nat.cast_nonneg _",
              "source_sha256": "04bdb9a27037b417d03dfff00e20f4d183bc2db428c363e82f9ade0f2ad1103b"
            }
          ],
          "checker_derivation": [
            "formal/evidence-check/followup/EXT-001-negative-degree-chain.json"
          ],
          "execution": "本轮只读当前源码及已有本地Mathlib；无新Lean检查执行。",
          "next_search": [],
          "reason": "第二轮补齐了负内部次数：同一固定塔的E₁及E₂、实际余模Ext在这些次数都为零；结合首轮比较，固定球的全次数E₂识别及强收敛对应通过。",
          "round": 2,
          "search_queries": [
            {
              "argv": [
                "rg",
                "-n",
                "negative|neg|t \u003c 0|t ≤ 0|IsZero|Subsingleton|connective|boundedBelow|other_degree",
                "KIP126/Def/ClassicalAdams",
                "KIP126/Def/Steenrod",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q01-negative-degrees.txt",
              "record_id": "q01-negative-degrees",
              "utc": "2026-10-04T15:18:43.880926+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "SphereExt|internalEquiv|CobarDerivedExtComparison|comparison.*ℤ|Ext.*[Zz]ero|[Zz]ero.*Ext",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q02-full-integer-comparisons.txt",
              "record_id": "q02-full-integer-comparisons",
              "utc": "2026-10-04T15:18:43.926998+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "cup|yoneda|extMk|comp|representatives|multiplicative|PreservesCup|CobarDerivedExtComparison",
                "KIP126/Def/Steenrod/MilnorExt",
                "KIP126/Def/Comparison",
                "KIP126/Def/ClassicalAdams/MilnorCohomology",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q03-cup-ext-bridge.txt",
              "record_id": "q03-cup-ext-bridge",
              "utc": "2026-10-04T15:18:43.937292+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "yoneda|Yoneda|h6|h₆|hiSquare|hiCochain|nonzero|ne_zero",
                "KIP126/Def/Steenrod/MilnorModule",
                "KIP126/Def/Steenrod/MilnorExt"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q04-direct-yoneda-nonzero.txt",
              "record_id": "q04-direct-yoneda-nonzero",
              "utc": "2026-10-04T15:18:43.945212+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "sphere.*(vanish|[Zz]ero|[Ss]ubsingleton)|[Nn]egative.*[Ii]nternal|[Ii]nternal.*[Nn]egative|ext.*(vanish|subsingleton)|Ext.*(vanish|Subsingleton)|Module.SphereExt",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q05-all-vanishing-candidates.txt",
              "record_id": "q05-all-vanishing-candidates",
              "utc": "2026-10-04T15:18:43.984299+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "MilnorWord|wordDegree.*nonneg|isEmpty|IsEmpty|weight.*nonneg|subsingleton.*neg|neg.*subsingleton",
                "KIP126/Def/Steenrod",
                "KIP126/Def/StableHomotopy/Cohomology/Cooperations"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q06-nonnegative-word.txt",
              "record_id": "q06-nonnegative-word",
              "utc": "2026-10-04T15:19:40.076098+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "extMk.*(comp|mul)|comp.*extMk|cup.*extMk|extMk.*cup",
                "KIP126"
              ],
              "exit_code": 1,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q07-extmk-products.txt",
              "record_id": "q07-extmk-products",
              "utc": "2026-10-04T15:19:40.098175+00:00"
            },
            {
              "argv": [
                "rg",
                "--files",
                "KIP126/Def/Steenrod/MilnorExt",
                "KIP126/Def/Steenrod/MilnorModule"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q08-ext-files.txt",
              "record_id": "q08-ext-files",
              "utc": "2026-10-04T15:19:40.106425+00:00"
            }
          ],
          "search_record": "formal/search-round2.json",
          "search_record_sha256": "4d89274f47a653464343e8abb2621f1a6ddaf187aab5d71959b7970faf742a0b",
          "semantic_status": "passed",
          "supplemental_evidence": [
            {
              "end_line": 20,
              "fqn": "KIP126.Steenrod.Milnor.MilnorWord",
              "full_type": "(s : ℕ) → (t : ℤ) → Type",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Monomials.Predicates"
              ],
              "kind": "abbreviation",
              "line": 19,
              "path": "KIP126/Def/Steenrod/MilnorCobar/Polynomial/Monomials/Words/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorCobar/Polynomial/Monomials/Words/Data.lean",
              "source_declaration": "abbrev MilnorWord (s : ℕ) (t : ℤ) :=\n  {d : Fin s → ℕ →₀ ℕ // wordDegree d = t ∧ ∀ i, d i ≠ 0}",
              "source_sha256": "29a95fd5c2cd2e9ef43c61922a290416db849d270aa7d4f0eeed529198d44f40"
            },
            {
              "end_line": 7,
              "fqn": "KIP126.Steenrod.Milnor.MilnorMonomial",
              "full_type": "(n : ℤ) → Type",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Monomials.Words.Equiv.Data"
              ],
              "kind": "abbreviation",
              "line": 7,
              "path": "KIP126/Def/Steenrod/MilnorCobar/Polynomial/Monomials/Full/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorCobar/Polynomial/Monomials/Full/Data.lean",
              "source_declaration": "abbrev MilnorMonomial (n : ℤ) := {d : ℕ →₀ ℕ // (slotWeight d : ℤ) = n}",
              "source_sha256": "83e3d226b62e642a55564e49463102551660c31ef80d5ff1b262fc83de5e87ea"
            },
            {
              "end_line": 25,
              "fqn": "KIP126.Steenrod.Milnor.Ext.Cofree.wordSpace",
              "full_type": "(s : ℕ) → GrVect F2",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorCoalgebra.Data",
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Monomials.Words.Realization.Data",
                "KIP126.Def.Algebra.GradedComodule.Tensor.Data",
                "Mathlib.LinearAlgebra.TensorProduct.Basic"
              ],
              "kind": "definition",
              "line": 24,
              "path": "KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean",
              "source_declaration": "def wordSpace (s : ℕ) : GrVect F2 :=\n  fun n =\u003e ModuleCat.of F2 (MilnorWord s n →₀ F2)",
              "source_sha256": "3e2e98382d77de5363cfef98d81acd5fe53ceb7ff6e62ab98cf30fc0ef262e42"
            },
            {
              "end_line": 30,
              "fqn": "KIP126.Steenrod.Milnor.Ext.Cofree.term",
              "full_type": "(s : ℕ) → RightComodule Coalgebra.dualSteenrod",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorCoalgebra.Data",
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Monomials.Words.Realization.Data",
                "KIP126.Def.Algebra.GradedComodule.Tensor.Data",
                "Mathlib.LinearAlgebra.TensorProduct.Basic"
              ],
              "kind": "definition",
              "line": 29,
              "path": "KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean",
              "source_declaration": "def term (s : ℕ) : RightComodule Coalgebra.dualSteenrod :=\n  (rightTensorComonad Coalgebra.dualSteenrod).cofree.obj (wordSpace s)",
              "source_sha256": "3e2e98382d77de5363cfef98d81acd5fe53ceb7ff6e62ab98cf30fc0ef262e42"
            },
            {
              "end_line": 17,
              "fqn": "KIP126.Steenrod.Milnor.Coalgebra.Carrier",
              "full_type": "(n : ℤ) → Type",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Monomials.Full.Data",
                "Mathlib.LinearAlgebra.Finsupp.LinearCombination"
              ],
              "kind": "abbreviation",
              "line": 17,
              "path": "KIP126/Def/Steenrod/MilnorCoalgebra/Raw/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorCoalgebra/Raw/Data.lean",
              "source_declaration": "abbrev Carrier (n : ℤ) := MilnorMonomial n →₀ F2",
              "source_sha256": "de21ad8a1443719da444d32cdcba44dc20fd3f0afdafdd85cbd64ef4149920ea"
            },
            {
              "end_line": 33,
              "fqn": "KIP126.Steenrod.Milnor.Ext.CobarResolution",
              "full_type": "Type",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorExt.Data",
                "KIP126.Def.Steenrod.MilnorExt.Cofree.Data",
                "Mathlib.CategoryTheory.Abelian.Injective.Ext"
              ],
              "kind": "structure",
              "line": 22,
              "path": "KIP126/Def/Steenrod/MilnorExt/Resolution/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorExt/Resolution/Data.lean",
              "source_declaration": "structure CobarResolution where\n  resolution : InjectiveResolution (trivialAt 0)\n  termIso : ∀ s : ℕ, resolution.cocomplex.X s ≅ Cofree.term s\n  differential : ∀ (s : ℕ) (n : ℤ) (z : (resolution.cocomplex.X s).A n),\n    Cofree.termPolynomial (s + 1) n\n        (((resolution.cocomplex.d s (s + 1) ≫ (termIso (s + 1)).hom).f n).hom z) =\n      Cofree.rawDifferential s\n        (Cofree.termPolynomial s n (((termIso s).hom.f n).hom z))\n  augmentation :\n    Cofree.termPolynomial 0 0\n      (((resolution.ι.f 0 ≫ (termIso 0).hom).f 0).hom\n        (degreeLineGenerator F2 0)) = 1",
              "source_sha256": "aeda529f246c04eb0e52b63e5a6528c3ff16dfae7f3e0a04bcd04c729d0a80a4"
            },
            {
              "end_line": 153,
              "fqn": "KIP126.Foundation.CooperationInput",
              "full_type": "(F : FoundationInput) → [TensorInput F] → (M : MilnorInput F) → Type",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Kervaire.Route.Model.Coherent.Data",
                "KIP126.Def.StableHomotopy.Implementation.Tensor",
                "KIP126.Def.StableHomotopy.Cohomology.Data",
                "KIP126.Def.ClassicalAdams.MilnorCooperations.Data",
                "KIP126.Def.ClassicalAdams.MapFiltration.Predicates",
                "KIP126.Def.Synthetic.Context.Data",
                "KIP126.Def.Synthetic.Localization.Recovery.Data",
                "KIP126.Def.Synthetic.QuotientTower.Predicates",
                "KIP126.Def.Synthetic.Completion.Predicates",
                "KIP126.Def.ClassicalAdams.Completion.Predicates",
                "KIP126.Def.ClassicalAdams.TowerHomology.MilnorCoordinates.Data",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Suspension.Predicates",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Diagonal.Predicates",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Unit.Predicates",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.MilnorBasis.Coproduct.Predicates",
                "KIP126.Def.StableHomotopy.Context.Mapping.Data",
                "KIP126.Def.StableHomotopy.Context.Proofs",
                "KIP126.Def.StableHomotopy.Toda.Predicates",
                "KIP126.Def.HigherAlgebra.Operad.Moduli.Data",
                "KIP126.Def.HigherAlgebra.Operad.Model.Data",
                "KIP126.Def.HigherAlgebra.Operad.Topological.Predicates",
                "KIP126.Def.Topology.WeakContractibility.Predicates",
                "Mathlib.AlgebraicTopology.ModelCategory.Instances",
                "Mathlib.AlgebraicTopology.ModelCategory.IsCofibrant",
                "Mathlib.CategoryTheory.Localization.Predicate",
                "Mathlib.Algebra.Exact.Basic"
              ],
              "kind": "structure",
              "line": 143,
              "path": "KIP126/Def/StableHomotopy/Implementation/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/StableHomotopy/Implementation/Data.lean",
              "source_declaration": "structure CooperationInput (F : FoundationInput) [TensorInput F] (M : MilnorInput F) where\n  ring : Mod2RingStructure F.hf2\n  kunneth : Mod2CooperationKunneth F.hf2 ring\n  basis : Mod2ReducedMilnorBasis F.hf2 ring\n  suspension : Mod2KunnethSuspensionCompatible F.hf2 ring kunneth\n  diagonal : Mod2KunnethDiagonalCompatible F.hf2 ring kunneth\n  unit : Mod2KunnethUnitCompatible F.hf2 ring kunneth\n  coproduct : Mod2MilnorCoproductCompatible F.hf2 ring kunneth basis\n  coordinates_eq : ∀ (s t : ℕ)\n      (x : adamsPage F.hf2.unit (SphereSpectrum (C := F.Spectrum)) 1 (by decide) s t),\n    M.coordinates s t x = sphereFirstPageMilnorEquiv F.hf2 ring kunneth basis s t x",
              "source_sha256": "d68534b7abbf7301472d08d72b63870399c1bc76c3d7c5fe0b921b6193511828"
            },
            {
              "end_line": 131,
              "fqn": "KIP126.Foundation.TensorInput",
              "full_type": "(F : FoundationInput) → Type",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Kervaire.Route.Model.Coherent.Data",
                "KIP126.Def.StableHomotopy.Implementation.Tensor",
                "KIP126.Def.StableHomotopy.Cohomology.Data",
                "KIP126.Def.ClassicalAdams.MilnorCooperations.Data",
                "KIP126.Def.ClassicalAdams.MapFiltration.Predicates",
                "KIP126.Def.Synthetic.Context.Data",
                "KIP126.Def.Synthetic.Localization.Recovery.Data",
                "KIP126.Def.Synthetic.QuotientTower.Predicates",
                "KIP126.Def.Synthetic.Completion.Predicates",
                "KIP126.Def.ClassicalAdams.Completion.Predicates",
                "KIP126.Def.ClassicalAdams.TowerHomology.MilnorCoordinates.Data",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Suspension.Predicates",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Diagonal.Predicates",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Unit.Predicates",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.MilnorBasis.Coproduct.Predicates",
                "KIP126.Def.StableHomotopy.Context.Mapping.Data",
                "KIP126.Def.StableHomotopy.Context.Proofs",
                "KIP126.Def.StableHomotopy.Toda.Predicates",
                "KIP126.Def.HigherAlgebra.Operad.Moduli.Data",
                "KIP126.Def.HigherAlgebra.Operad.Model.Data",
                "KIP126.Def.HigherAlgebra.Operad.Topological.Predicates",
                "KIP126.Def.Topology.WeakContractibility.Predicates",
                "Mathlib.AlgebraicTopology.ModelCategory.Instances",
                "Mathlib.AlgebraicTopology.ModelCategory.IsCofibrant",
                "Mathlib.CategoryTheory.Localization.Predicate",
                "Mathlib.Algebra.Exact.Basic"
              ],
              "kind": "class",
              "line": 116,
              "path": "KIP126/Def/StableHomotopy/Implementation/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/StableHomotopy/Implementation/Data.lean",
              "source_declaration": "class TensorInput (F : FoundationInput) where\n  [triangulated : IsTriangulated F.Spectrum]\n  [monoidalPreadditive : MonoidalPreadditive F.Spectrum]\n  [symmetric : SymmetricCategory F.Spectrum]\n  [closed : MonoidalClosed F.Spectrum]\n  [leftShift : ∀ X : F.Spectrum, (tensorLeft X).CommShift ℤ]\n  [rightShift : ∀ X : F.Spectrum, (tensorRight X).CommShift ℤ]\n  [ihomShift : ∀ X : F.Spectrum, (ihom X).CommShift ℤ]\n  [leftExact : ∀ X : F.Spectrum, (tensorLeft X).IsTriangulated]\n  [rightExact : ∀ X : F.Spectrum, (tensorRight X).IsTriangulated]\n  [ihomExact : ∀ X : F.Spectrum, (ihom X).IsTriangulated]\n  [unitShift : (mod2UnitNatTrans F.hf2).CommShift ℤ]\n  leftShift_eq : ∀ X : F.Spectrum,\n    leftShift X = Functor.CommShift.ofIso (BraidedCategory.tensorLeftIsoTensorRight X).symm ℤ\n  ihom_unit_shift : ∀ X : F.Spectrum, NatTrans.CommShift (ihom.adjunction X).unit ℤ\n  ihom_counit_shift : ∀ X : F.Spectrum, NatTrans.CommShift (ihom.adjunction X).counit ℤ",
              "source_sha256": "d68534b7abbf7301472d08d72b63870399c1bc76c3d7c5fe0b921b6193511828"
            },
            {
              "end_line": 16,
              "fqn": "KIP126.Classical.Adams.SphereVanishingLine",
              "full_type": "(H : Mod2EilenbergMacLane (C := C)) → Prop",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.StableHomotopy.Cohomology.Data",
                "KIP126.Def.ClassicalAdams.Detection.Data"
              ],
              "kind": "definition",
              "line": 14,
              "path": "KIP126/Def/ClassicalAdams/SphereVanishing/Predicates.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/ClassicalAdams/SphereVanishing/Predicates.lean",
              "source_declaration": "def SphereVanishingLine (H : Mod2EilenbergMacLane (C := C)) : Prop :=\n  ∀ s t : ℤ, 0 \u003c t - s → t - s \u003c 2 * s - 3 →\n    Subsingleton ((adamsTowerInternalSpectralSequence H.unit SphereSpectrum).Page 2 (s,t))",
              "source_sha256": "857396fc8f0bd902b26e3ead3c2ff98a5b26ba7cbd548e22f159bf056689ad0f"
            },
            {
              "end_line": 36,
              "fqn": "KIP126.Interface.Solution.adamsOneLine_other_degree",
              "full_type": "∀ (t : ℤ), (∀ j : ℕ, t ≠ ((2^j : ℕ) : ℤ)) → ∀ x : sphereAdamsData.Page 2 (1,t), x = 0",
              "implicit_context": [],
              "imports": [
                "KIP126.Interface.Challenge.Challenge2",
                "KIP126.Def.ClassicalAdams.SphereClasses.Products.Data",
                "KIP126.Def.SpectralSequence.Computation.Predicates",
                "KIP126.Def.StageInput.Milnor",
                "KIP126.Def.StageInput.StandardSphere.Sequence.Data"
              ],
              "kind": "theorem",
              "line": 33,
              "path": "KIP126/Interface/Solution/AdamsOneLine.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Interface/Solution/AdamsOneLine.lean",
              "source_declaration": "theorem adamsOneLine_other_degree (t : ℤ)\n    (ht : ∀ j : ℕ, t ≠ ((2 ^ j : ℕ) : ℤ)) :\n    ∀ x : sphereAdamsData.Page 2 (1, t), x = 0 := by\n  sorry",
              "source_sha256": "ba6145a10a6f98ca0ab61f9a1955da0155f02d60cca08e7c9f142f072ac79154"
            },
            {
              "end_line": 18,
              "fqn": "KIP126.Algebra.GradedComodule.coefficientYoneda_apply",
              "full_type": "∀ (η : Coaugmentation C) (s s' : ℕ) (t u : ℤ) (x : CoefficientExt η s t) (y : CoefficientExt η s' u), coefficientYoneda η s s' t u x y = (coefficientShift η t s' u y).comp x (Nat.add_comm s' s)",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Algebra.GradedComodule.Ext.Multiplication.Data"
              ],
              "kind": "theorem",
              "line": 15,
              "path": "KIP126/Def/Algebra/GradedComodule/Ext/Multiplication/Proofs.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Algebra/GradedComodule/Ext/Multiplication/Proofs.lean",
              "source_declaration": "theorem coefficientYoneda_apply (η : Coaugmentation C) (s s' : ℕ) (t u : ℤ)\n    (x : CoefficientExt η s t) (y : CoefficientExt η s' u) :\n    coefficientYoneda η s s' t u x y =\n      (coefficientShift η t s' u y).comp x (Nat.add_comm s' s) := rfl",
              "source_sha256": "0972f1b57c9a613fadfef86aaa4bb8853e9f5288bbca93a2a414f6f761303a19"
            },
            {
              "end_line": 48,
              "fqn": "KIP126.Algebra.GradedComodule.coefficientYoneda",
              "full_type": "(η : Coaugmentation C) → (s s' : ℕ) → (t u : ℤ) → CoefficientExt η s t →ₗ[K] CoefficientExt η s' u →ₗ[K] CoefficientExt η (s+s') (t+u)",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Algebra.GradedComodule.Ext.Data",
                "KIP126.Def.Algebra.GradedComodule.Shift.TensorLine.Data",
                "KIP126.Def.Algebra.GradedComodule.Shift.Structure.Proofs",
                "Mathlib.Algebra.Homology.DerivedCategory.Ext.Map"
              ],
              "kind": "definition",
              "line": 42,
              "path": "KIP126/Def/Algebra/GradedComodule/Ext/Multiplication/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Algebra/GradedComodule/Ext/Multiplication/Data.lean",
              "source_declaration": "def coefficientYoneda (η : Coaugmentation C) (s s' : ℕ) (t u : ℤ) :\n    CoefficientExt η s t →ₗ[K] CoefficientExt η s' u →ₗ[K]\n      CoefficientExt η (s + s') (t + u) :=\n  (Abelian.Ext.bilinearCompOfLinear K\n    (trivialAt K η (t + u)) (trivialAt K η t) (trivialAt K η 0)\n    s' s (s + s') (Nat.add_comm s' s)).flip.compl₂\n      (coefficientShift η t s' u)",
              "source_sha256": "55e72532deb70cec6fd0c741dbe0d06f0a2afe0f784770eaa07d9e73c017f873"
            },
            {
              "end_line": 40,
              "fqn": "KIP126.Steenrod.Milnor.Ext.Cofree.cupBilinear",
              "full_type": "(s s' : ℕ) → TensorPower s →ₗ[F2] TensorPower s' →ₗ[F2] TensorPower (s+s')",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorCoalgebra.Data",
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Monomials.Words.Realization.Data",
                "KIP126.Def.Algebra.GradedComodule.Tensor.Data",
                "Mathlib.LinearAlgebra.TensorProduct.Basic"
              ],
              "kind": "definition",
              "line": 34,
              "path": "KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean",
              "source_declaration": "def cupBilinear (s s' : ℕ) :\n    TensorPower s →ₗ[F2] TensorPower s' →ₗ[F2] TensorPower (s + s') :=\n  (LinearMap.mul F2 (TensorPower (s + s'))).compl₁₂\n    (MvPolynomial.rename\n      (fun a : Fin s × ℕ =\u003e (a.1.castAdd s', a.2))).toLinearMap\n    (MvPolynomial.rename\n      (fun a : Fin s' × ℕ =\u003e (a.1.natAdd s, a.2))).toLinearMap",
              "source_sha256": "3e2e98382d77de5363cfef98d81acd5fe53ceb7ff6e62ab98cf30fc0ef262e42"
            },
            {
              "end_line": 11,
              "fqn": "KIP126.Steenrod.Milnor.Ext.Cofree.termPolynomial_injective",
              "full_type": "∀ (s : ℕ) (n : ℤ), Function.Injective (termPolynomial s n)",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorExt.Cofree.Data"
              ],
              "kind": "theorem",
              "line": 9,
              "path": "KIP126/Def/Steenrod/MilnorExt/Cofree/Proofs.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorExt/Cofree/Proofs.lean",
              "source_declaration": "theorem termPolynomial_injective (s : ℕ) (n : ℤ) :\n    Function.Injective (termPolynomial s n) := by\n  sorry",
              "source_sha256": "54a0bc7df491c708209417a1ba69c8e3168d47656232a1387c8cef7c4e130fc5"
            }
          ],
          "verdict": "passed"
        }
      ],
      "semantic_status": "passed",
      "short_reason": "第二轮补齐了负内部次数：同一固定塔的E₁及E₂、实际余模Ext在这些次数都为零；结合首轮比较，固定球的全次数E₂识别及强收敛对应通过。",
      "source_statement": "经典 Adams 约定给出 $E_2^{s,t}(X)=\\operatorname{Ext}_A^{s,t}(H^*X,\\mathbb F_2)\\Longrightarrow\\pi_{t-s}X$ 以及 $d_r:(s,t)\\mapsto(s+r,t+r-1)$；论文第2节对 $2$ 完成、连通、有限型谱约定其模 $2$ Adams 谱序列强收敛。强收敛的收敛过滤关联分次为 $E_\\infty$。",
      "sources": [
        {
          "kind": "paper_statement",
          "locator": "第1节，行135–138（经典谱序列、2完成球谱和微分约定）；第2节开头，行253–254（强收敛）",
          "path": "MainPaper/main.tex"
        },
        {
          "kind": "bibliographic_source",
          "locator": "Adams58",
          "path": "MainPaper/main.bib",
          "title": "J. F. Adams, On the structure and applications of the Steenrod algebra (1958)",
          "url": "https://doi.org/10.1007/BF02564578"
        }
      ],
      "specialization": "取 $X=S^0$，即 $2$ 完成球谱；它连通且模 $2$ 上同调在每一次数有限维。$H^*(S^0;\\mathbb F_2)=\\mathbb F_2$，故 $E_2$ 专门化为 $\\operatorname{Ext}_A(\\mathbb F_2,\\mathbb F_2)$。检测目标再取 $s=2,n=126$。",
      "status": "passed",
      "use_sites": [
        {
          "purpose": "指定谱序列和收敛对象",
          "quote": "这个谱序列强收敛于球谱的 $2$ 完成稳定同伦群。",
          "source": "math/T00-v2.md"
        },
        {
          "purpose": "将非零极限类解释为Adams过滤中非零陪集",
          "quote": "强收敛给出",
          "source": "math/T00-v2.md"
        }
      ],
      "used_statement": "对 $2$ 完成球谱 $S^0$，经典模 $2$ Adams 谱序列的 $E_2$ 页为 $\\operatorname{Ext}_A^{s,t}(\\mathbb F_2,\\mathbb F_2)$，微分 $d_r$ 具有双次数 $(r,r-1)$，并强收敛到 $\\pi_{t-s}S^0$；若 $F$ 为 Adams 塔诱导的过滤，则 $E_\\infty^{s,n+s}\\cong F^s\\pi_nS^0/F^{s+1}\\pi_nS^0$。",
      "uses": [
        {
          "chapter_id": "opening",
          "occurrence": 1,
          "part_id": "T00",
          "title": "$h_6^2$ 的永久存活"
        },
        {
          "chapter_id": "opening",
          "occurrence": 2,
          "part_id": "T00",
          "title": "$h_6^2$ 的永久存活"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "9de3096f578868223ed282db44b86f33eb9b4394412286f4bc26b30cb6c162cf",
      "category": "literature",
      "checked_version": "v1",
      "formal_status": {
        "axioms_observed": [
          "propext",
          "sorryAx",
          "Classical.choice",
          "Quot.sound"
        ],
        "classifications": [
          "contains_sorry",
          "depends_on_unfinished_proof",
          "interface_assumption",
          "main_axiom_input_if_using_consumer"
        ],
        "source_direct_sorry": [
          "KIP126.Interface.Solution.adamsOneLine_at_power",
          "KIP126.Def.Solution.implementation_exists",
          "KIP126.Def.Comparison.StageInterfaces.cobarDerivedExtComparison",
          "KIP126.Steenrod.Milnor.Module.exists_dualCobarComparison"
        ],
        "summary": "第一线producer本体含sorry；Ext桥的存在性和固定模型构造也未完成。作为Challenge2字段消费时是接口假设，并受Main.challenge2公理支撑；不属于已完成形式化证明。"
      },
      "full_reason": "adamsOneLine_at_power的完整结论是∀j:ℕ，指定Sphere.Internal.hi非零，且Page 2 (1,2^j)的任意元素为0或该hi。standardFoundation和standardMilnorCooperations来自同一固定implementation。先用同一H/M的cobarDerivedExtComparison选择E；internalEquiv E 1 (2^j)把塔E₂送到右余模derived Ext；再对E.cobarResolution使用exists_dualCobarComparison给出的代表元相容e，送到左Steenrod模derived Ext。这是定义为Abelian.Ext的实际Ext，非重命名的cobar商。组合保持0、非零性、满射，故目标Ext恰有0和g_j两个元素。在该F₂向量空间中，g_j≠0使单元组线性独立，而两个元素性质使其张成，所以维数为1；g_j即唯一非零生成元。comparison_hi及两次代表元约束也把这个元素绑到标准hiCochain，而非凭名称认定。固定used_statement不要求其他次数消失或高页生存，因此不要求这些较强来源内容。选j=6时2^6=64。语义通过不意味着上述存在性或第一线计算已获无sorry形式证明。",
      "id": "EXT-002",
      "name": "Adams 第一线中的标准类",
      "next_search": [],
      "rounds": [
        {
          "candidates": [
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C002-one-line-producer",
              "checker_assessment": {
                "coverage": "supports_combined_match",
                "current_source_sha256_verified": true,
                "reason": "与桥组合覆盖used_statement全部j≥0和标准非零生成元；body sorry单独列证明状态。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Interface/Solution/AdamsOneLine.lean",
              "end_line": 29,
              "file_sha256": "ba6145a10a6f98ca0ab61f9a1955da0155f02d60cca08e7c9f142f072ac79154",
              "fqn": "KIP126.Interface.Solution.adamsOneLine_at_power",
              "full_type": "∀ (j : ℕ), Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j ≠ 0 ∧ ∀ x : sphereAdamsData.Page 2 (1, ((2 ^ j : ℕ) : ℤ)), x = 0 ∨ x = Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j",
              "implicit_context": [],
              "imports": [
                "KIP126.Interface.Challenge.Challenge2",
                "KIP126.Def.ClassicalAdams.SphereClasses.Products.Data",
                "KIP126.Def.SpectralSequence.Computation.Predicates",
                "KIP126.Def.StageInput.Milnor",
                "KIP126.Def.StageInput.StandardSphere.Sequence.Data"
              ],
              "key_definitions": [
                "K06-standard-hi",
                "K08-standard-h6",
                "K10-page-cobar-comparison",
                "K11-derived-ext-interface",
                "K31-comparison-hi"
              ],
              "kind": "theorem",
              "line": 25,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Interface/Solution/AdamsOneLine.lean",
              "preliminary_semantic_reading": "精确覆盖所有自然数 j 的实际 E₂ 第一线：所指定 hi 非零且每个元素为 0 或 hi。经固定模型与 Ext 比较，才可解释为原命题的 1维 F₂ 空间；j=6 给 (1,64)。不使用该接口的其他高页结论。",
              "proof_status_observation": "声明体直接含 sorry；#print axioms 含 sorryAx。",
              "source_declaration": "theorem adamsOneLine_at_power (j : ℕ) :\n    Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j ≠ 0 ∧\n      ∀ x : sphereAdamsData.Page 2 (1, ((2 ^ j : ℕ) : ℤ)),\n        x = 0 ∨ x = Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j := by\n  sorry"
            },
            {
              "actual_print_axioms": null,
              "candidate_id": "C002-one-line-field",
              "checker_assessment": {
                "coverage": "supports_combined_match",
                "current_source_sha256_verified": true,
                "reason": "相同命题的字段，只有已有self才能投影，不能称接口已实现。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Interface/Challenge/Challenge2.lean",
              "end_line": 1085,
              "file_sha256": "508d824488df1308061552da92b1fb967edc3ca90e6d46bc49be5192f40b3992",
              "fqn": "KIP126.Challenge2.AdamsOneLineInterface.adamsOneLine_at_power",
              "full_type": "(self : KIP126.Challenge2.AdamsOneLineInterface) → ∀ (j : ℕ), Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j ≠ 0 ∧ ∀ x : sphereAdamsData.Page 2 (1, ((2 ^ j : ℕ) : ℤ)), x = 0 ∨ x = Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j",
              "implicit_context": [
                "(self : KIP126.Challenge2.AdamsOneLineInterface)"
              ],
              "imports": [
                "KIP126.Def.Kervaire.Geometry.Data",
                "KIP126.Def.Comparison.StageInterfaces",
                "KIP126.Def.ClassicalAdams.Convergence.BHS.Predicates",
                "KIP126.Def.ClassicalAdams.SphereVanishing.Predicates",
                "KIP126.Def.StageInput.StandardSphere.Route.Data",
                "KIP126.Def.Synthetic.EInfty.Presentation.Predicates",
                "KIP126.LinProgram.Generated.Differentials.Table",
                "KIP126.LinProgram.Generated.Staircase.Table",
                "KIP126.LinProgram.Interpretation.State.Data",
                "KIP126.Def.SpectralSequence.Computation.State.Predicates",
                "KIP126.Def.StageInput.StandardSphere.Sequence.Data",
                "KIP126.Def.StageInput.StandardSphere.Classes.Data",
                "KIP126.Def.AdamsE2.LinClasses.Data",
                "KIP126.Def.AdamsE2.LinBasisTable.Predicates",
                "KIP126.Def.SpectralSequence.Computation.Predicates",
                "KIP126.Def.Comparison.ClassicalSynthetic.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Data",
                "KIP126.Def.ClassicalAdams.SphereClasses.Hi.Internal.Data",
                "KIP126.Def.ClassicalAdams.SphereClasses.Products.Data",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.CycleMap.Data",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Data",
                "KIP126.Def.StageInput.Milnor",
                "KIP126.Def.Kervaire.Theta5.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Window.Data",
                "KIP126.Def.Synthetic.EInfty.Shift.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Ambiguity.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Data",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Equivalence.Data",
                "KIP126.Def.ClassicalAdams.Suspension.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Crossing.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Solutions.Data",
                "KIP126.Def.Synthetic.PageExtension.Solutions.Permanent.Data",
                "KIP126.Def.Synthetic.ExtensionSS.Square.Construction.Data",
                "KIP126.Def.ClassicalAdams.Moss.Statement.Predicates",
                "KIP126.Def.ClassicalAdams.Tmf.Model.Data",
                "KIP126.Def.ClassicalAdams.Tmf.Model.Predicates",
                "KIP126.Def.ClassicalAdams.SphereMultiplication.Data",
                "KIP126.Def.Steenrod.MilnorExt.Resolution.Data",
                "KIP126.Def.Synthetic.Bockstein.Hom.Data",
                "KIP126.Def.Synthetic.QuotientFunctor.Data",
                "KIP126.Def.ClassicalAdams.Convergence.Tower.Predicates",
                "KIP126.Def.ClassicalAdams.Completion.Predicates",
                "KIP126.LinProgram.Interpretation.Branch.Predicates",
                "KIP126.Def.Kervaire.Route.Extensions.Data",
                "KIP126.Def.Kervaire.Route.Hopf.Data",
                "KIP126.Def.Kervaire.Route.Conditions.Predicates",
                "KIP126.Def.Kervaire.Route.Massey.Predicates",
                "KIP126.Def.Kervaire.Route.Toda.Predicates",
                "KIP126.Def.Synthetic.Computation.Predicates",
                "KIP126.Def.StableHomotopy.Implementation.Fixed",
                "KIP126.Def.Kervaire.Route.Labels.Tmf.Data",
                "Mathlib.CategoryTheory.Adjunction.Additive",
                "KIP126.Def.Kervaire.Route.Multiplication.Comparison",
                "KIP126.Def.ClassicalAdams.TowerNaturality.Page.Data",
                "KIP126.Def.StableHomotopy.FiniteType.Predicates",
                "Mathlib.CategoryTheory.Monoidal.Mon",
                "KIP126.Def.Kervaire.Route.Triangles.Predicates",
                "KIP126.Def.Comparison.ClassicalSynthetic.RealizationWeights.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.RealizationTower.Route.Data",
                "KIP126.LinProgram.Interpretation.Route.Predicates",
                "KIP126.Def.Kervaire.Route.SourceLanguage",
                "KIP126.Def.Comparison.StageInterfaces.Models",
                "KIP126.Def.StageInput.StandardSphere.Classes.Family"
              ],
              "key_definitions": [
                "K06-standard-hi",
                "K29-main-stage-axiom"
              ],
              "kind": "structure_field",
              "line": 1082,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Interface/Challenge/Challenge2.lean",
              "preliminary_semantic_reading": "同样的全族第一线命题作为接口字段；投影需要 self。不能把该字段计为 producer 已实现。",
              "proof_status_observation": "接口假设；Main 通过 challenge2.literature.adamsOneLine 消费。",
              "source_declaration": "  adamsOneLine_at_power (j : ℕ) :\n      Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j ≠ 0 ∧\n        ∀ x : sphereAdamsData.Page 2 (1, ((2 ^ j : ℕ) : ℤ)),\n          x = 0 ∨ x = Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j"
            },
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C-bridge-internal-ext",
              "checker_assessment": {
                "coverage": "supports_combined_match",
                "current_source_sha256_verified": true,
                "reason": "加法桥保持同一H/M且有代表元约束，但只在s,t:ℕ；不能由线性等价推出乘法相容。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Def/Comparison/StageInterfaces.lean",
              "end_line": 504,
              "file_sha256": "9ef16f662af9ee5152afc5c2856f21815b1918f1b76b01e98fc686c49d418870",
              "fqn": "KIP126.Challenge2.CobarDerivedExtComparison.internalEquiv",
              "full_type": "{C : Type u} → [StableHomotopyCategory.{u,v} C] → [HasFunctorialCofiber (C := C)] → {H : Mod2EilenbergMacLane (C := C)} → {M : MilnorCooperations H} → (E : KIP126.Challenge2.CobarDerivedExtComparison H M) → (s t : ℕ) → (adamsTowerInternalSpectralSequence H.unit SphereSpectrum).Page 2 ((s : ℤ),(t : ℤ)) ≃ₗ[ℤ] KIP126.Steenrod.Milnor.Ext.SphereExt s (t : ℤ)",
              "implicit_context": [
                "universe u v",
                "{C : Type u}",
                "[KIP126.StableHomotopy.StableHomotopyCategory.{u,v} C]",
                "[KIP126.StableHomotopy.HasFunctorialCofiber (C := C)]",
                "(H : KIP126.StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))",
                "(M : KIP126.Classical.Adams.MilnorCooperations H)"
              ],
              "imports": [
                "KIP126.Def.SpectralSequence.Basic.Category.Data",
                "KIP126.Def.SpectralSequence.Computation.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Window.Data",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Equivalence.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Data",
                "KIP126.Def.Synthetic.EInfty.Presentation.Predicates",
                "KIP126.Def.Synthetic.EInfty.Shift.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Ambiguity.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Solutions.Data",
                "KIP126.Def.Synthetic.PageExtension.Solutions.Permanent.Data",
                "KIP126.Def.Synthetic.ExtensionSS.Square.Construction.Data",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.Data",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Data",
                "KIP126.Def.Steenrod.MilnorExt.Resolution.Data",
                "KIP126.Def.Synthetic.Bockstein.Hom.Data",
                "KIP126.Def.Synthetic.QuotientFunctor.Data",
                "KIP126.Def.ClassicalAdams.Convergence.Tower.Predicates",
                "KIP126.Def.ClassicalAdams.Completion.Predicates"
              ],
              "key_definitions": [
                "K10-page-cobar-comparison",
                "K11-derived-ext-interface",
                "K15-right-comodule-ext"
              ],
              "kind": "definition",
              "line": 496,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Def/Comparison/StageInterfaces.lean",
              "preliminary_semantic_reading": "把实际塔 E₂ 与 right-comodule derived Ext 相连，保留同一个 H、M 和输入 E。范围为 s,t∈ℕ；只给加法线性等价，目标还不是 left Steenrod-module Ext。",
              "proof_status_observation": "依赖输入 E；实际 #print axioms 另检出 sorryAx，不能把定义当成 E 的存在证明。",
              "source_declaration": "noncomputable def CobarDerivedExtComparison.internalEquiv {C : Type u}\n    [StableHomotopy.StableHomotopyCategory.{u, v} C]\n    [StableHomotopy.HasFunctorialCofiber (C := C)]\n    {H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}\n    {M : MilnorCooperations H} (E : CobarDerivedExtComparison H M) (s t : ℕ) :\n    (adamsTowerInternalSpectralSequence H.unit StableHomotopy.SphereSpectrum).Page 2\n      ((s : ℤ), (t : ℤ)) ≃ₗ[ℤ] Steenrod.Milnor.Ext.SphereExt s (t : ℤ) :=\n  (MilnorCohomology.comparison H M s t).symm.trans\n    ((E.comparison s t).restrictScalars ℤ)"
            },
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C-bridge-ext-exists",
              "checker_assessment": {
                "coverage": "supports_combined_match",
                "current_source_sha256_verified": true,
                "reason": "提供E的存在性命题，因此不把E当作未声明新增假设；该存在性是sorry而非已实现数据。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Def/Comparison/StageInterfaces/Proofs/Cobar.lean",
              "end_line": 25,
              "file_sha256": "a67cae95e97c749c288a2fd731bba46d84b5cc510b57e25b49d0b147a7bd5cbc",
              "fqn": "KIP126.Def.Comparison.StageInterfaces.cobarDerivedExtComparison",
              "full_type": "∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] (H : Mod2EilenbergMacLane (C := C)) (M : MilnorCooperations H), Nonempty (KIP126.Challenge2.CobarDerivedExtComparison H M)",
              "implicit_context": [
                "universe u v",
                "{C : Type u}",
                "[KIP126.StableHomotopy.StableHomotopyCategory.{u,v} C]",
                "[KIP126.StableHomotopy.HasFunctorialCofiber (C := C)]",
                "(H : KIP126.StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))",
                "(M : KIP126.Classical.Adams.MilnorCooperations H)"
              ],
              "imports": [
                "KIP126.Def.Comparison.StageInterfaces",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.Proofs",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Proofs"
              ],
              "key_definitions": [
                "K11-derived-ext-interface",
                "K17-cobar-resolution"
              ],
              "kind": "theorem",
              "line": 23,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Def/Comparison/StageInterfaces/Proofs/Cobar.lean",
              "preliminary_semantic_reading": "提供前一比较所需 E 的存在性命题；源码为 sorry。",
              "proof_status_observation": "声明体直接含 sorry；#print axioms 含 sorryAx。",
              "source_declaration": "theorem cobarDerivedExtComparison :\n    Nonempty (KIP126.Challenge2.CobarDerivedExtComparison H M) := by\n  sorry"
            },
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C-bridge-right-left",
              "checker_assessment": {
                "coverage": "supports_combined_match",
                "current_source_sha256_verified": true,
                "reason": "同一E.cobarResolution可实例化该全次数比较；完整代表元条件保持同一模型/整数t。源码sorry。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Def/Steenrod/MilnorModule/Comparison/Proofs.lean",
              "end_line": 18,
              "file_sha256": "a18aeb29b3fca3672337a450a8927970e4e91f01765d2a2a9ad17d1416462f2a",
              "fqn": "KIP126.Steenrod.Milnor.Module.exists_dualCobarComparison",
              "full_type": "∀ (R : KIP126.Steenrod.Milnor.Ext.CobarResolution), ∃ e : ∀ (s : ℕ) (t : ℤ), KIP126.Steenrod.Milnor.Ext.SphereExt s t ≃ₗ[KIP126.Core.Algebra.F2] KIP126.Steenrod.Milnor.Module.SphereExt s t, KIP126.Steenrod.Milnor.Module.PreservesDualCobarRepresentatives R e",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorModule.Comparison.Predicates"
              ],
              "key_definitions": [
                "K12-dual-representatives",
                "K13-left-module-ext",
                "K15-right-comodule-ext",
                "K17-cobar-resolution"
              ],
              "kind": "theorem",
              "line": 15,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Def/Steenrod/MilnorModule/Comparison/Proofs.lean",
              "preliminary_semantic_reading": "从同一 cobarResolution 的右余模 Ext 到左模 Ext，所有次数固定，代表元通过实际对偶指定；可与 internalEquiv 组合，但存在性是 sorry。",
              "proof_status_observation": "声明体直接含 sorry；#print axioms 含 sorryAx。",
              "source_declaration": "theorem exists_dualCobarComparison (R : Ext.CobarResolution) :\n    ∃ e : ∀ (s : ℕ) (t : ℤ), Ext.SphereExt s t ≃ₗ[F2] SphereExt s t,\n      PreservesDualCobarRepresentatives R e := by\n  sorry"
            }
          ],
          "next_search": [],
          "reason": "全体 j≥0 的标准类非零且所在 E₂ 群恰有两个元素；沿同一模型的 Ext 比较可得一维 F₂ 空间及唯一非零生成元，j=6 给出次数 (1,64)。",
          "round": 1,
          "search_queries": [
            {
              "argv": [
                "rg",
                "-n",
                "StrongConver|strongConver|IsAdamsTowerStronglyConvergent|associatedGraded",
                "KIP126/Def/ClassicalAdams",
                "KIP126/Interface",
                "KIP126/Main"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q01-convergence.txt",
              "record_id": "q01-convergence",
              "utc": "2026-10-04T15:04:02.364370+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "AdamsOneLine|OneLine|oneLine|one_line|firstLine|FirstLine|first_line|hi_nonzero|hi_ne_zero|hi_basis",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q02-first-line.txt",
              "record_id": "q02-first-line",
              "utc": "2026-10-04T15:04:02.395032+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "standardH6Square|h6Square_ne_zero|hiSquare|h6.*Yoneda|Yoneda.*h6",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q03-square.txt",
              "record_id": "q03-square",
              "utc": "2026-10-04T15:04:02.417011+00:00"
            },
            {
              "argv": [
                "git",
                "status",
                "--short"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q04-git.txt",
              "record_id": "q04-git",
              "utc": "2026-10-04T15:04:02.448418+00:00"
            },
            {
              "argv": [
                "rg",
                "--files",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q05-files.txt",
              "record_id": "q05-files",
              "utc": "2026-10-04T15:04:02.460405+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "AdamsOneLine|oneLine|strongConvergence|sphereApplicability|standard_class",
                "KIP126/Interface/Challenge/Challenge2.lean",
                "KIP126/Def/StageInput",
                "KIP126/Def/Foundation"
              ],
              "exit_code": 2,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q06-structure-context.txt",
              "record_id": "q06-structure-context",
              "utc": "2026-10-04T15:04:02.468829+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "E2.*[Ee]xt|[Ee]xt.*E2|one_line|OneLine|oneLine|finrank",
                "KIP126/Def/ClassicalAdams",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q07-ext-comparison.txt",
              "record_id": "q07-ext-comparison",
              "utc": "2026-10-04T15:04:02.483434+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "CobarDerivedExtComparison|DerivedExt|cobarDerivedExt|Yoneda|yoneda",
                "KIP126/Def",
                "KIP126/Interface",
                "KIP126/Main"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q08-derived-ext.txt",
              "record_id": "q08-derived-ext",
              "utc": "2026-10-04T15:06:16.477773+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "cup.*yoneda|yoneda.*cup|Preserves.*Cup|Cobar.*Yoneda|cobar.*Yoneda",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q09-multiplicativity.txt",
              "record_id": "q09-multiplicativity",
              "utc": "2026-10-04T15:06:16.510271+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "fixedImplementation|implementation_exists|sphereApplicability|SourceComparison",
                "KIP126/Def",
                "KIP126/Interface/Challenge/Challenge2.lean"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q10-fixed-foundation.txt",
              "record_id": "q10-fixed-foundation",
              "utc": "2026-10-04T15:06:16.528169+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "finrank|FiniteDimensional|Basis|oneLine|OneLine|h6Square_ne_zero",
                "KIP126/Def/Steenrod",
                "KIP126/Def/ClassicalAdams",
                "KIP126/Interface/Solution/AdamsOneLine.lean"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q11-basics.txt",
              "record_id": "q11-basics",
              "utc": "2026-10-04T15:06:16.540542+00:00"
            }
          ],
          "search_record": "formal/search-round1.json",
          "search_record_sha256": "b4c9bdddfe6aa8e6566d1a41d6dbc00e15a0a241ca57efc66bdb4fbea3ef5c9d",
          "semantic_status": "passed",
          "verdict": "passed"
        }
      ],
      "semantic_status": "passed",
      "short_reason": "全体 j≥0 的标准类非零且所在 E₂ 群恰有两个元素；沿同一模型的 Ext 比较可得一维 F₂ 空间及唯一非零生成元，j=6 给出次数 (1,64)。",
      "source_statement": "Adams 第一线计算为：当 $t=2^j$ 且 $j\\ge0$ 时，$\\operatorname{Ext}_A^{1,t}(\\mathbb F_2,\\mathbb F_2)=\\mathbb F_2$；其他 $t$ 该群为零。$h_j$ 表示对应非零生成元。",
      "sources": [
        {
          "kind": "paper_statement",
          "locator": "第1节，行140–146（Adams第一线计算及h_j命名）",
          "path": "MainPaper/main.tex"
        },
        {
          "kind": "bibliographic_source",
          "locator": "Adams58",
          "path": "MainPaper/main.bib",
          "title": "J. F. Adams, On the structure and applications of the Steenrod algebra (1958)",
          "url": "https://doi.org/10.1007/BF02564578"
        }
      ],
      "specialization": "采用论文中 $h_j$ 的标准命名；目标取 $j=6$，$2^6=64$。本段不使用这些类的任何高页生存结论。",
      "status": "passed",
      "use_sites": [
        {
          "purpose": "定义标准h₆而非任意过滤1类",
          "quote": "标准的 $h_j$ 是 $\\operatorname{Ext}_A^{1,2^j}(\\mathbb F_2,\\mathbb F_2)$ 的非零生成元。",
          "source": "math/T00-v2.md"
        }
      ],
      "used_statement": "对每个整数 $j\\ge0$，$\\operatorname{Ext}_A^{1,2^j}(\\mathbb F_2,\\mathbb F_2)$ 是一维 $\\mathbb F_2$ 向量空间，其非零生成元记为 $h_j$；特别地 $h_6\\in\\operatorname{Ext}_A^{1,64}(\\mathbb F_2,\\mathbb F_2)$。",
      "uses": [
        {
          "chapter_id": "opening",
          "occurrence": 1,
          "part_id": "T00",
          "title": "$h_6^2$ 的永久存活"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "9de3096f578868223ed282db44b86f33eb9b4394412286f4bc26b30cb6c162cf",
      "category": "computation",
      "checked_version": "v1",
      "formal_status": {
        "axioms_observed_fixed_square": [
          "propext",
          "sorryAx",
          "Classical.choice",
          "Quot.sound"
        ],
        "axioms_observed_generic_cobar": [
          "propext",
          "Classical.choice",
          "Quot.sound"
        ],
        "classifications": [
          "proved_under_listed_premises_for_generic_cobar_nonzero",
          "depends_on_unfinished_proof_for_fixed_model",
          "contains_sorry_in_ext_bridges",
          "interface_assumption_for_square_delivery",
          "unprovided_multiplicative_bridge"
        ],
        "generic_no_sorry_scope": "仅已导入olean中打印的两个generic定理；当前声明体已逐项核对，但不将旧olean输出升级为全部当前依赖已重编译结论。",
        "source_direct_sorry": [
          "KIP126.Def.Solution.implementation_exists",
          "KIP126.Def.Comparison.StageInterfaces.cobarDerivedExtComparison",
          "KIP126.Steenrod.Milnor.Module.exists_dualCobarComparison",
          "KIP126.Steenrod.Milnor.Module.preservesYoneda_of_preservesDualCobarRepresentatives"
        ],
        "summary": "一般H/M条件下的cobar非零性有实际证明体，已导入模块的#print axioms只列基础公理；固定standardH6Square版本依赖sorryAx（固定模型未完成）。现有Ext及乘法比较也含sorry，缺失的第一段桥没有可声明完成的证明。"
      },
      "full_reason": "standardH6Square按定义是hiSquareCochain 6的实际塔E₂类；hiSquareCochain是cobar cup的自乘，hiSquare_eq_cup和comparison_hiSquare确实保持这一代表。Sphere.h6Square_ne_zero通过实际homology quotient的零检测和cobar非边界计算证明其非零，generic内部版本再经同一塔页同构传递；没有用名称或表格字段代替这个判断。给定E，internalEquiv可把非零类送至derived Ext，且dualCobarComparison的乘法定理把右余模Yoneda送到左模Yoneda。但是E.comparison的字段目前只要求线性等价及每个cocycle的extMk代表公式，未提交cobar cup与右余模derived composition相容的完整声明或可逐步检查的已有推导。CobarCupCalculus止于cobar自乘，SphereSquareInterface.standard_class止于Lin像等于塔cobar类。缺少第一段乘法桥时，非零cobar类的Ext像尚未被核定为used_statement中的标准Yoneda平方。这里只登记证据缺失，不断言该数学桥不成立；首轮有候选未过必须继续定向检索。 第二轮定向补查实际coefficientYoneda及coefficientYoneda_apply，确认其是内部移位后的derived composition；Cofree.cupBilinear则只是多项式坐标的拼接，termPolynomial_injective只给坐标单射。新证据没有给出两者经同一E.comparison相容的等式，也没有直接actual left-module h₆ Yoneda平方非零候选。后轮无新桥不抹去首轮失败，故第二轮verdict=not_passed、顶层incomplete，并给第三轮定向反馈；这不是确认数学对应不可能。",
      "id": "EXT-003",
      "name": "标准平方 h₆² 在 Adams E₂ 页非零",
      "next_search": [
        {
          "required_evidence": "追踪cochain morphism、内部移位、lift/diagonal与extMk组合的实际声明；必须使用同一E.cobarResolution。低层Yoneda_apply和cupBilinear已检查，不能原样重交。",
          "target": "固定cofree resolution的cocycle代表乘法/extMk与derived composition相容，或直接h₆自乘的特例桥"
        },
        {
          "required_evidence": "必须是actual derived Yoneda；若仍无新候选，保留真实检索记录，按第三轮规则终态not_passed，不改为not_found。",
          "target": "最后检查actual Module.SphereExt中(1,64)非零生成元Yoneda自乘非零的独立声明或接口假设"
        }
      ],
      "rounds": [
        {
          "candidates": [
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C003-standard-square-nonzero",
              "checker_assessment": {
                "coverage": "constituent_only",
                "current_source_sha256_verified": true,
                "reason": "精确给固定cobar拼接平方非零；不单独识别actual Yoneda平方。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Def/StageInput/StandardSphere/Classes/Proofs.lean",
              "end_line": 9,
              "file_sha256": "bcb958c98ed03d2f09ebfa305c0adbc6803f89d2c391de9357967b249c670e90",
              "fqn": "KIP126.Classical.Adams.standardH6Square_ne_zero",
              "full_type": "KIP126.Classical.Adams.standardH6Square ≠ 0",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.StageInput.StandardSphere.Classes.Data",
                "KIP126.Def.ClassicalAdams.SphereClasses.Hi.Internal.Proofs"
              ],
              "key_definitions": [
                "K07-standard-hi-square",
                "K09-standard-h6-square",
                "K26-cobar-cup-square",
                "K27-comparison-hisquare"
              ],
              "kind": "theorem",
              "line": 8,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Def/StageInput/StandardSphere/Classes/Proofs.lean",
              "preliminary_semantic_reading": "固定 sphereAdamsData 的 (2,128) 中标准 cobar concatenation 类非零。必须检查它通过比较是不是原 used_statement 的 Yoneda 平方，而非只凭名称 square。",
              "proof_status_observation": "本定理体无 sorry；实际 #print axioms 含 sorryAx，固定基础 implementation_exists 尚未完成。",
              "source_declaration": "theorem standardH6Square_ne_zero : standardH6Square ≠ 0 :=\n  Sphere.Internal.hiSquare_six_ne_zero standardFoundation.hf2 standardMilnorCooperations"
            },
            {
              "actual_print_axioms": [
                "propext",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C003-generic-square-nonzero",
              "checker_assessment": {
                "coverage": "constituent_only",
                "current_source_sha256_verified": true,
                "reason": "在显式H/M下由页同构传递cobar非零性，完整证明体存在；固定模型与Yoneda桥须另查。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Def/ClassicalAdams/SphereClasses/Hi/Internal/Proofs.lean",
              "end_line": 53,
              "file_sha256": "37153f026572b20bd69407a16efcacd0353806f71f027dec8ac06915988d3514",
              "fqn": "KIP126.Classical.Adams.Sphere.Internal.hiSquare_six_ne_zero",
              "full_type": "∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] (H : Mod2EilenbergMacLane (C := C)) (M : MilnorCooperations H), Sphere.Internal.hiSquare H M 6 ≠ 0",
              "implicit_context": [
                "universe u v",
                "{C : Type u}",
                "[KIP126.StableHomotopy.StableHomotopyCategory.{u,v} C]",
                "[KIP126.StableHomotopy.HasFunctorialCofiber (C := C)]",
                "(H : KIP126.StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))",
                "(M : KIP126.Classical.Adams.MilnorCooperations H)"
              ],
              "imports": [
                "KIP126.Def.ClassicalAdams.SphereClasses.Hi.Internal.Data",
                "KIP126.Def.ClassicalAdams.SphereClasses.Hi.Proofs",
                "KIP126.Def.ClassicalAdams.SphereClasses.Proofs"
              ],
              "key_definitions": [
                "K05-milnor-coordinates",
                "K07-standard-hi-square"
              ],
              "kind": "theorem",
              "line": 48,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Def/ClassicalAdams/SphereClasses/Hi/Internal/Proofs.lean",
              "preliminary_semantic_reading": "在显式 H、M 前提下证明实际内部 E₂ 的 cobar concatenation 类非零；其 #print axioms 没有 sorryAx，不能据此把固定 H、M 的存在或 Yoneda 对应视为完成。",
              "proof_status_observation": "在列明 H、M 和稳定范畴前提下已证明；实际 axioms 仅 propext/Classical.choice/Quot.sound。",
              "source_declaration": "theorem hiSquare_six_ne_zero : hiSquare H M 6 ≠ 0 := by\n  intro h\n  apply Sphere.h6Square_ne_zero H M\n  exact (hiSquare_pageIso H M 6).symm.trans\n    ((congrArg (adamsTowerSSDataPageIso H.unit SphereSpectrum 2 128 0).hom.hom h).trans\n      (map_zero _))"
            },
            {
              "actual_print_axioms": [
                "propext",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C003-page-square-nonzero",
              "checker_assessment": {
                "coverage": "constituent_only",
                "current_source_sha256_verified": true,
                "reason": "通过实际商的零检测与非边界计算证明cobar类非零，强度仅E₂，不包含高页结论。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Def/ClassicalAdams/SphereClasses/Proofs.lean",
              "end_line": 106,
              "file_sha256": "6479936b2409785ae085d5c5b7a854ade09d633bd8df87522b63bc05b74aa08e",
              "fqn": "KIP126.Classical.Adams.Sphere.h6Square_ne_zero",
              "full_type": "∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] (H : Mod2EilenbergMacLane (C := C)) (M : MilnorCooperations H), Sphere.h6Square H M ≠ 0",
              "implicit_context": [
                "universe u v",
                "{C : Type u}",
                "[KIP126.StableHomotopy.StableHomotopyCategory.{u,v} C]",
                "[KIP126.StableHomotopy.HasFunctorialCofiber (C := C)]",
                "(H : KIP126.StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))",
                "(M : KIP126.Classical.Adams.MilnorCooperations H)"
              ],
              "imports": [
                "KIP126.Def.ClassicalAdams.SphereClasses.Data",
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Detection.Boundary.Proofs",
                "Mathlib.Algebra.Homology.ShortComplex.ModuleCat"
              ],
              "key_definitions": [
                "K05-milnor-coordinates",
                "K09-standard-h6-square"
              ],
              "kind": "theorem",
              "line": 102,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Def/ClassicalAdams/SphereClasses/Proofs.lean",
              "preliminary_semantic_reading": "通过 classOfMilnorCocycle_eq_zero_iff 与 h6SquareCochain_not_boundary 排除成为 d₁ 边界；这证明实际第二页的标准代表，不涉及高页存活。",
              "proof_status_observation": "在列明 H、M 和稳定范畴前提下已证明；实际 axioms 仅 propext/Classical.choice/Quot.sound。",
              "source_declaration": "theorem h6Square_ne_zero : h6Square H M ≠ 0 := by\n  intro h\n  obtain ⟨b, hb⟩ := (classOfMilnorCocycle_eq_zero_iff H M 1 128\n    h6SquareCochain h6SquareCochain_isCycle).1 h\n  exact h6SquareCochain_not_boundary b hb"
            },
            {
              "actual_print_axioms": null,
              "candidate_id": "C003-square-interface",
              "checker_assessment": {
                "coverage": "constituent_only",
                "current_source_sha256_verified": true,
                "reason": "nonzero和standard_class用同一presentation把Lin像识别为标准cobar类；仍未触及cobar→Yoneda桥。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Interface/Challenge/Challenge2.lean",
              "end_line": 1271,
              "file_sha256": "508d824488df1308061552da92b1fb967edc3ca90e6d46bc49be5192f40b3992",
              "fqn": "KIP126.Challenge2.SphereSquareInterface.nonzero",
              "full_type": "∀ {presentation : KIP126.Classical.Adams.LinE2Presentation}, (self : KIP126.Challenge2.SphereSquareInterface presentation) → presentation.comparison 2 128 (by decide) KIP126.LinE2.dataH6Sq ≠ 0",
              "implicit_context": [
                "{presentation : KIP126.Classical.Adams.LinE2Presentation}",
                "(self : KIP126.Challenge2.SphereSquareInterface presentation)"
              ],
              "imports": [
                "KIP126.Def.Kervaire.Geometry.Data",
                "KIP126.Def.Comparison.StageInterfaces",
                "KIP126.Def.ClassicalAdams.Convergence.BHS.Predicates",
                "KIP126.Def.ClassicalAdams.SphereVanishing.Predicates",
                "KIP126.Def.StageInput.StandardSphere.Route.Data",
                "KIP126.Def.Synthetic.EInfty.Presentation.Predicates",
                "KIP126.LinProgram.Generated.Differentials.Table",
                "KIP126.LinProgram.Generated.Staircase.Table",
                "KIP126.LinProgram.Interpretation.State.Data",
                "KIP126.Def.SpectralSequence.Computation.State.Predicates",
                "KIP126.Def.StageInput.StandardSphere.Sequence.Data",
                "KIP126.Def.StageInput.StandardSphere.Classes.Data",
                "KIP126.Def.AdamsE2.LinClasses.Data",
                "KIP126.Def.AdamsE2.LinBasisTable.Predicates",
                "KIP126.Def.SpectralSequence.Computation.Predicates",
                "KIP126.Def.Comparison.ClassicalSynthetic.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Data",
                "KIP126.Def.ClassicalAdams.SphereClasses.Hi.Internal.Data",
                "KIP126.Def.ClassicalAdams.SphereClasses.Products.Data",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.CycleMap.Data",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Data",
                "KIP126.Def.StageInput.Milnor",
                "KIP126.Def.Kervaire.Theta5.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Window.Data",
                "KIP126.Def.Synthetic.EInfty.Shift.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Ambiguity.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Data",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Equivalence.Data",
                "KIP126.Def.ClassicalAdams.Suspension.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Crossing.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Solutions.Data",
                "KIP126.Def.Synthetic.PageExtension.Solutions.Permanent.Data",
                "KIP126.Def.Synthetic.ExtensionSS.Square.Construction.Data",
                "KIP126.Def.ClassicalAdams.Moss.Statement.Predicates",
                "KIP126.Def.ClassicalAdams.Tmf.Model.Data",
                "KIP126.Def.ClassicalAdams.Tmf.Model.Predicates",
                "KIP126.Def.ClassicalAdams.SphereMultiplication.Data",
                "KIP126.Def.Steenrod.MilnorExt.Resolution.Data",
                "KIP126.Def.Synthetic.Bockstein.Hom.Data",
                "KIP126.Def.Synthetic.QuotientFunctor.Data",
                "KIP126.Def.ClassicalAdams.Convergence.Tower.Predicates",
                "KIP126.Def.ClassicalAdams.Completion.Predicates",
                "KIP126.LinProgram.Interpretation.Branch.Predicates",
                "KIP126.Def.Kervaire.Route.Extensions.Data",
                "KIP126.Def.Kervaire.Route.Hopf.Data",
                "KIP126.Def.Kervaire.Route.Conditions.Predicates",
                "KIP126.Def.Kervaire.Route.Massey.Predicates",
                "KIP126.Def.Kervaire.Route.Toda.Predicates",
                "KIP126.Def.Synthetic.Computation.Predicates",
                "KIP126.Def.StableHomotopy.Implementation.Fixed",
                "KIP126.Def.Kervaire.Route.Labels.Tmf.Data",
                "Mathlib.CategoryTheory.Adjunction.Additive",
                "KIP126.Def.Kervaire.Route.Multiplication.Comparison",
                "KIP126.Def.ClassicalAdams.TowerNaturality.Page.Data",
                "KIP126.Def.StableHomotopy.FiniteType.Predicates",
                "Mathlib.CategoryTheory.Monoidal.Mon",
                "KIP126.Def.Kervaire.Route.Triangles.Predicates",
                "KIP126.Def.Comparison.ClassicalSynthetic.RealizationWeights.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.RealizationTower.Route.Data",
                "KIP126.LinProgram.Interpretation.Route.Predicates",
                "KIP126.Def.Kervaire.Route.SourceLanguage",
                "KIP126.Def.Comparison.StageInterfaces.Models",
                "KIP126.Def.StageInput.StandardSphere.Classes.Family"
              ],
              "key_definitions": [
                "K09-standard-h6-square",
                "K29-main-stage-axiom"
              ],
              "kind": "structure_field",
              "line": 1263,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Interface/Challenge/Challenge2.lean",
              "preliminary_semantic_reading": "计算像非零字段；同一记录的 standard_class 将其等同 standardH6Square。记录源码同时保留这三个字段供核实，仍未独立提供 cobar 到 Yoneda 的乘法桥。",
              "proof_status_observation": "接口假设；不是完整 producer 证明。",
              "source_declaration": "  nonzero : presentation.comparison 2 128 (by decide) LinE2.dataH6Sq ≠ 0\n  exhaustive : ∀ x : Classical.Adams.sphereAdamsData.Page 2 (2, 128),\n    x = 0 ∨ x = presentation.comparison 2 128 (by decide) LinE2.dataH6Sq\n  standard_class : presentation.comparison 2 128 (by decide) LinE2.dataH6Sq =\n    Classical.Adams.standardH6Square\n\n/-- C(M): interpreted computation conclusions, all using one fixed presentation.\nThe generated data and local certificates are separate from this model-bound\nmathematical delivery. -/"
            },
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C-bridge-internal-ext",
              "checker_assessment": {
                "coverage": "constituent_only",
                "current_source_sha256_verified": true,
                "reason": "加法桥保持同一H/M且有代表元约束，但只在s,t:ℕ；不能由线性等价推出乘法相容。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Def/Comparison/StageInterfaces.lean",
              "end_line": 504,
              "file_sha256": "9ef16f662af9ee5152afc5c2856f21815b1918f1b76b01e98fc686c49d418870",
              "fqn": "KIP126.Challenge2.CobarDerivedExtComparison.internalEquiv",
              "full_type": "{C : Type u} → [StableHomotopyCategory.{u,v} C] → [HasFunctorialCofiber (C := C)] → {H : Mod2EilenbergMacLane (C := C)} → {M : MilnorCooperations H} → (E : KIP126.Challenge2.CobarDerivedExtComparison H M) → (s t : ℕ) → (adamsTowerInternalSpectralSequence H.unit SphereSpectrum).Page 2 ((s : ℤ),(t : ℤ)) ≃ₗ[ℤ] KIP126.Steenrod.Milnor.Ext.SphereExt s (t : ℤ)",
              "implicit_context": [
                "universe u v",
                "{C : Type u}",
                "[KIP126.StableHomotopy.StableHomotopyCategory.{u,v} C]",
                "[KIP126.StableHomotopy.HasFunctorialCofiber (C := C)]",
                "(H : KIP126.StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))",
                "(M : KIP126.Classical.Adams.MilnorCooperations H)"
              ],
              "imports": [
                "KIP126.Def.SpectralSequence.Basic.Category.Data",
                "KIP126.Def.SpectralSequence.Computation.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Window.Data",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Equivalence.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Data",
                "KIP126.Def.Synthetic.EInfty.Presentation.Predicates",
                "KIP126.Def.Synthetic.EInfty.Shift.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Ambiguity.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Solutions.Data",
                "KIP126.Def.Synthetic.PageExtension.Solutions.Permanent.Data",
                "KIP126.Def.Synthetic.ExtensionSS.Square.Construction.Data",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.Data",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Data",
                "KIP126.Def.Steenrod.MilnorExt.Resolution.Data",
                "KIP126.Def.Synthetic.Bockstein.Hom.Data",
                "KIP126.Def.Synthetic.QuotientFunctor.Data",
                "KIP126.Def.ClassicalAdams.Convergence.Tower.Predicates",
                "KIP126.Def.ClassicalAdams.Completion.Predicates"
              ],
              "key_definitions": [
                "K10-page-cobar-comparison",
                "K11-derived-ext-interface",
                "K15-right-comodule-ext"
              ],
              "kind": "definition",
              "line": 496,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Def/Comparison/StageInterfaces.lean",
              "preliminary_semantic_reading": "把实际塔 E₂ 与 right-comodule derived Ext 相连，保留同一个 H、M 和输入 E。范围为 s,t∈ℕ；只给加法线性等价，目标还不是 left Steenrod-module Ext。",
              "proof_status_observation": "依赖输入 E；实际 #print axioms 另检出 sorryAx，不能把定义当成 E 的存在证明。",
              "source_declaration": "noncomputable def CobarDerivedExtComparison.internalEquiv {C : Type u}\n    [StableHomotopy.StableHomotopyCategory.{u, v} C]\n    [StableHomotopy.HasFunctorialCofiber (C := C)]\n    {H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}\n    {M : MilnorCooperations H} (E : CobarDerivedExtComparison H M) (s t : ℕ) :\n    (adamsTowerInternalSpectralSequence H.unit StableHomotopy.SphereSpectrum).Page 2\n      ((s : ℤ), (t : ℤ)) ≃ₗ[ℤ] Steenrod.Milnor.Ext.SphereExt s (t : ℤ) :=\n  (MilnorCohomology.comparison H M s t).symm.trans\n    ((E.comparison s t).restrictScalars ℤ)"
            },
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C-bridge-ext-exists",
              "checker_assessment": {
                "coverage": "constituent_only",
                "current_source_sha256_verified": true,
                "reason": "提供E的存在性命题，因此不把E当作未声明新增假设；该存在性是sorry而非已实现数据。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Def/Comparison/StageInterfaces/Proofs/Cobar.lean",
              "end_line": 25,
              "file_sha256": "a67cae95e97c749c288a2fd731bba46d84b5cc510b57e25b49d0b147a7bd5cbc",
              "fqn": "KIP126.Def.Comparison.StageInterfaces.cobarDerivedExtComparison",
              "full_type": "∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] (H : Mod2EilenbergMacLane (C := C)) (M : MilnorCooperations H), Nonempty (KIP126.Challenge2.CobarDerivedExtComparison H M)",
              "implicit_context": [
                "universe u v",
                "{C : Type u}",
                "[KIP126.StableHomotopy.StableHomotopyCategory.{u,v} C]",
                "[KIP126.StableHomotopy.HasFunctorialCofiber (C := C)]",
                "(H : KIP126.StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))",
                "(M : KIP126.Classical.Adams.MilnorCooperations H)"
              ],
              "imports": [
                "KIP126.Def.Comparison.StageInterfaces",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.Proofs",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Proofs"
              ],
              "key_definitions": [
                "K11-derived-ext-interface",
                "K17-cobar-resolution"
              ],
              "kind": "theorem",
              "line": 23,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Def/Comparison/StageInterfaces/Proofs/Cobar.lean",
              "preliminary_semantic_reading": "提供前一比较所需 E 的存在性命题；源码为 sorry。",
              "proof_status_observation": "声明体直接含 sorry；#print axioms 含 sorryAx。",
              "source_declaration": "theorem cobarDerivedExtComparison :\n    Nonempty (KIP126.Challenge2.CobarDerivedExtComparison H M) := by\n  sorry"
            },
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C-bridge-right-left",
              "checker_assessment": {
                "coverage": "constituent_only",
                "current_source_sha256_verified": true,
                "reason": "同一E.cobarResolution可实例化该全次数比较；完整代表元条件保持同一模型/整数t。源码sorry。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Def/Steenrod/MilnorModule/Comparison/Proofs.lean",
              "end_line": 18,
              "file_sha256": "a18aeb29b3fca3672337a450a8927970e4e91f01765d2a2a9ad17d1416462f2a",
              "fqn": "KIP126.Steenrod.Milnor.Module.exists_dualCobarComparison",
              "full_type": "∀ (R : KIP126.Steenrod.Milnor.Ext.CobarResolution), ∃ e : ∀ (s : ℕ) (t : ℤ), KIP126.Steenrod.Milnor.Ext.SphereExt s t ≃ₗ[KIP126.Core.Algebra.F2] KIP126.Steenrod.Milnor.Module.SphereExt s t, KIP126.Steenrod.Milnor.Module.PreservesDualCobarRepresentatives R e",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorModule.Comparison.Predicates"
              ],
              "key_definitions": [
                "K12-dual-representatives",
                "K13-left-module-ext",
                "K15-right-comodule-ext",
                "K17-cobar-resolution"
              ],
              "kind": "theorem",
              "line": 15,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Def/Steenrod/MilnorModule/Comparison/Proofs.lean",
              "preliminary_semantic_reading": "从同一 cobarResolution 的右余模 Ext 到左模 Ext，所有次数固定，代表元通过实际对偶指定；可与 internalEquiv 组合，但存在性是 sorry。",
              "proof_status_observation": "声明体直接含 sorry；#print axioms 含 sorryAx。",
              "source_declaration": "theorem exists_dualCobarComparison (R : Ext.CobarResolution) :\n    ∃ e : ∀ (s : ℕ) (t : ℤ), Ext.SphereExt s t ≃ₗ[F2] SphereExt s t,\n      PreservesDualCobarRepresentatives R e := by\n  sorry"
            },
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "C003-yoneda-right-left",
              "checker_assessment": {
                "coverage": "constituent_only",
                "current_source_sha256_verified": true,
                "reason": "精确陈述第二段右Yoneda→左Yoneda，但不提供第一段cobar cup→右Yoneda。源码sorry。"
              },
              "checker_result": null,
              "complete_source_snapshot": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/sources/KIP126/Def/Steenrod/MilnorModule/Comparison/Multiplication/Proofs.lean",
              "end_line": 23,
              "file_sha256": "16fbe197299a13ca02a22048040754a93ef01e4d4c1edcd0cb22459708826fd1",
              "fqn": "KIP126.Steenrod.Milnor.Module.preservesYoneda_of_preservesDualCobarRepresentatives",
              "full_type": "∀ (R : KIP126.Steenrod.Milnor.Ext.CobarResolution) {e : ∀ (s : ℕ) (t : ℤ), KIP126.Steenrod.Milnor.Ext.SphereExt s t ≃ₗ[KIP126.Core.Algebra.F2] KIP126.Steenrod.Milnor.Module.SphereExt s t}, KIP126.Steenrod.Milnor.Module.PreservesDualCobarRepresentatives R e → KIP126.Steenrod.Milnor.Module.PreservesYoneda e",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorModule.Comparison.Multiplication.Predicates"
              ],
              "key_definitions": [
                "K12-dual-representatives",
                "K14-left-module-yoneda",
                "K16-right-comodule-yoneda",
                "K30-preserves-yoneda"
              ],
              "kind": "theorem",
              "line": 20,
              "open_context": [
                "CategoryTheory",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Classical.Adams",
                "KIP126.Core.SpectralSequence"
              ],
              "path": "KIP126/Def/Steenrod/MilnorModule/Comparison/Multiplication/Proofs.lean",
              "preliminary_semantic_reading": "将右余模 Yoneda 乘法比较至左模 Yoneda 乘法，针对同一 representative-preserving e；未在检索中找到 cobar cup 到右余模 Yoneda 的对应公式，交 Checker 审定缺口是否影响当前命题。",
              "proof_status_observation": "声明体直接含 sorry；#print axioms 含 sorryAx。",
              "source_declaration": "theorem preservesYoneda_of_preservesDualCobarRepresentatives (R : Ext.CobarResolution)\n    {e : ∀ (s : ℕ) (t : ℤ), Ext.SphereExt s t ≃ₗ[F2] SphereExt s t}\n    (he : PreservesDualCobarRepresentatives R e) : PreservesYoneda e := by\n  sorry"
            }
          ],
          "next_search": [
            {
              "priority": 1,
              "required_evidence": "给出完整类型及使用同一E、E.cobarResolution的条件；(1,64)×(1,64)→(2,128)的重指标也须保留。只提交右Yoneda→左Yoneda原候选不算补桥。",
              "scope": [
                "KIP126/Def/Steenrod/MilnorExt",
                "KIP126/Def/Comparison",
                "KIP126/Def/ClassicalAdams/MilnorCohomology",
                "KIP126/Interface"
              ],
              "suggested_patterns": [
                "cup",
                "yoneda",
                "extMk",
                "comp",
                "representatives",
                "multiplicative",
                "PreservesCup",
                "CobarDerivedExtComparison"
              ],
              "target": "E.comparison将cobar cup送到实际右余模Ext.yoneda的声明，或只对h₆所需平方的精确桥"
            },
            {
              "priority": 2,
              "required_evidence": "须把h₆绑到第一线唯一非零类，并且所用运算展开为actual derived Yoneda；仅命名h6Square、Lin乘法或cobar cup不够。",
              "target": "直接位于actual left-module SphereExt的标准h₆ Yoneda平方非零定理或接口字段"
            }
          ],
          "reason": "候选证明的是标准 cobar 拼接平方在塔 E₂ 中非零；尚缺把该平方送到实际 Yoneda 平方的乘法桥接，只有加法等价和右、左 Ext 间的 Yoneda 相容性，需第二轮检索。",
          "round": 1,
          "search_queries": [
            {
              "argv": [
                "rg",
                "-n",
                "StrongConver|strongConver|IsAdamsTowerStronglyConvergent|associatedGraded",
                "KIP126/Def/ClassicalAdams",
                "KIP126/Interface",
                "KIP126/Main"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q01-convergence.txt",
              "record_id": "q01-convergence",
              "utc": "2026-10-04T15:04:02.364370+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "AdamsOneLine|OneLine|oneLine|one_line|firstLine|FirstLine|first_line|hi_nonzero|hi_ne_zero|hi_basis",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q02-first-line.txt",
              "record_id": "q02-first-line",
              "utc": "2026-10-04T15:04:02.395032+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "standardH6Square|h6Square_ne_zero|hiSquare|h6.*Yoneda|Yoneda.*h6",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q03-square.txt",
              "record_id": "q03-square",
              "utc": "2026-10-04T15:04:02.417011+00:00"
            },
            {
              "argv": [
                "git",
                "status",
                "--short"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q04-git.txt",
              "record_id": "q04-git",
              "utc": "2026-10-04T15:04:02.448418+00:00"
            },
            {
              "argv": [
                "rg",
                "--files",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q05-files.txt",
              "record_id": "q05-files",
              "utc": "2026-10-04T15:04:02.460405+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "AdamsOneLine|oneLine|strongConvergence|sphereApplicability|standard_class",
                "KIP126/Interface/Challenge/Challenge2.lean",
                "KIP126/Def/StageInput",
                "KIP126/Def/Foundation"
              ],
              "exit_code": 2,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q06-structure-context.txt",
              "record_id": "q06-structure-context",
              "utc": "2026-10-04T15:04:02.468829+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "E2.*[Ee]xt|[Ee]xt.*E2|one_line|OneLine|oneLine|finrank",
                "KIP126/Def/ClassicalAdams",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q07-ext-comparison.txt",
              "record_id": "q07-ext-comparison",
              "utc": "2026-10-04T15:04:02.483434+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "CobarDerivedExtComparison|DerivedExt|cobarDerivedExt|Yoneda|yoneda",
                "KIP126/Def",
                "KIP126/Interface",
                "KIP126/Main"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q08-derived-ext.txt",
              "record_id": "q08-derived-ext",
              "utc": "2026-10-04T15:06:16.477773+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "cup.*yoneda|yoneda.*cup|Preserves.*Cup|Cobar.*Yoneda|cobar.*Yoneda",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q09-multiplicativity.txt",
              "record_id": "q09-multiplicativity",
              "utc": "2026-10-04T15:06:16.510271+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "fixedImplementation|implementation_exists|sphereApplicability|SourceComparison",
                "KIP126/Def",
                "KIP126/Interface/Challenge/Challenge2.lean"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q10-fixed-foundation.txt",
              "record_id": "q10-fixed-foundation",
              "utc": "2026-10-04T15:06:16.528169+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "finrank|FiniteDimensional|Basis|oneLine|OneLine|h6Square_ne_zero",
                "KIP126/Def/Steenrod",
                "KIP126/Def/ClassicalAdams",
                "KIP126/Interface/Solution/AdamsOneLine.lean"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/q11-basics.txt",
              "record_id": "q11-basics",
              "utc": "2026-10-04T15:06:16.540542+00:00"
            }
          ],
          "search_record": "formal/search-round1.json",
          "search_record_sha256": "b4c9bdddfe6aa8e6566d1a41d6dbc00e15a0a241ca57efc66bdb4fbea3ef5c9d",
          "semantic_status": "not_passed",
          "verdict": "not_passed"
        },
        {
          "candidates": [],
          "checker_derivation": [],
          "execution": "本轮只读当前源码及已有本地Mathlib；无新Lean检查执行。",
          "next_search": [
            {
              "required_evidence": "追踪cochain morphism、内部移位、lift/diagonal与extMk组合的实际声明；必须使用同一E.cobarResolution。低层Yoneda_apply和cupBilinear已检查，不能原样重交。",
              "target": "固定cofree resolution的cocycle代表乘法/extMk与derived composition相容，或直接h₆自乘的特例桥"
            },
            {
              "required_evidence": "必须是actual derived Yoneda；若仍无新候选，保留真实检索记录，按第三轮规则终态not_passed，不改为not_found。",
              "target": "最后检查actual Module.SphereExt中(1,64)非零生成元Yoneda自乘非零的独立声明或接口假设"
            }
          ],
          "reason": "第二轮展开实际Yoneda运算后，仍未找到把同一cobar平方送到Yoneda平方的桥；继承首轮有候选未通过，继续第三轮，当前保持核查未完成。",
          "round": 2,
          "search_queries": [
            {
              "argv": [
                "rg",
                "-n",
                "negative|neg|t \u003c 0|t ≤ 0|IsZero|Subsingleton|connective|boundedBelow|other_degree",
                "KIP126/Def/ClassicalAdams",
                "KIP126/Def/Steenrod",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q01-negative-degrees.txt",
              "record_id": "q01-negative-degrees",
              "utc": "2026-10-04T15:18:43.880926+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "SphereExt|internalEquiv|CobarDerivedExtComparison|comparison.*ℤ|Ext.*[Zz]ero|[Zz]ero.*Ext",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q02-full-integer-comparisons.txt",
              "record_id": "q02-full-integer-comparisons",
              "utc": "2026-10-04T15:18:43.926998+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "cup|yoneda|extMk|comp|representatives|multiplicative|PreservesCup|CobarDerivedExtComparison",
                "KIP126/Def/Steenrod/MilnorExt",
                "KIP126/Def/Comparison",
                "KIP126/Def/ClassicalAdams/MilnorCohomology",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q03-cup-ext-bridge.txt",
              "record_id": "q03-cup-ext-bridge",
              "utc": "2026-10-04T15:18:43.937292+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "yoneda|Yoneda|h6|h₆|hiSquare|hiCochain|nonzero|ne_zero",
                "KIP126/Def/Steenrod/MilnorModule",
                "KIP126/Def/Steenrod/MilnorExt"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q04-direct-yoneda-nonzero.txt",
              "record_id": "q04-direct-yoneda-nonzero",
              "utc": "2026-10-04T15:18:43.945212+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "sphere.*(vanish|[Zz]ero|[Ss]ubsingleton)|[Nn]egative.*[Ii]nternal|[Ii]nternal.*[Nn]egative|ext.*(vanish|subsingleton)|Ext.*(vanish|Subsingleton)|Module.SphereExt",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q05-all-vanishing-candidates.txt",
              "record_id": "q05-all-vanishing-candidates",
              "utc": "2026-10-04T15:18:43.984299+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "MilnorWord|wordDegree.*nonneg|isEmpty|IsEmpty|weight.*nonneg|subsingleton.*neg|neg.*subsingleton",
                "KIP126/Def/Steenrod",
                "KIP126/Def/StableHomotopy/Cohomology/Cooperations"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q06-nonnegative-word.txt",
              "record_id": "q06-nonnegative-word",
              "utc": "2026-10-04T15:19:40.076098+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "extMk.*(comp|mul)|comp.*extMk|cup.*extMk|extMk.*cup",
                "KIP126"
              ],
              "exit_code": 1,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q07-extmk-products.txt",
              "record_id": "q07-extmk-products",
              "utc": "2026-10-04T15:19:40.098175+00:00"
            },
            {
              "argv": [
                "rg",
                "--files",
                "KIP126/Def/Steenrod/MilnorExt",
                "KIP126/Def/Steenrod/MilnorModule"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/round2/q08-ext-files.txt",
              "record_id": "q08-ext-files",
              "utc": "2026-10-04T15:19:40.106425+00:00"
            }
          ],
          "search_record": "formal/search-round2.json",
          "search_record_sha256": "4d89274f47a653464343e8abb2621f1a6ddaf187aab5d71959b7970faf742a0b",
          "semantic_status": "not_passed",
          "supplemental_evidence": [
            {
              "end_line": 20,
              "fqn": "KIP126.Steenrod.Milnor.MilnorWord",
              "full_type": "(s : ℕ) → (t : ℤ) → Type",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Monomials.Predicates"
              ],
              "kind": "abbreviation",
              "line": 19,
              "path": "KIP126/Def/Steenrod/MilnorCobar/Polynomial/Monomials/Words/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorCobar/Polynomial/Monomials/Words/Data.lean",
              "source_declaration": "abbrev MilnorWord (s : ℕ) (t : ℤ) :=\n  {d : Fin s → ℕ →₀ ℕ // wordDegree d = t ∧ ∀ i, d i ≠ 0}",
              "source_sha256": "29a95fd5c2cd2e9ef43c61922a290416db849d270aa7d4f0eeed529198d44f40"
            },
            {
              "end_line": 7,
              "fqn": "KIP126.Steenrod.Milnor.MilnorMonomial",
              "full_type": "(n : ℤ) → Type",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Monomials.Words.Equiv.Data"
              ],
              "kind": "abbreviation",
              "line": 7,
              "path": "KIP126/Def/Steenrod/MilnorCobar/Polynomial/Monomials/Full/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorCobar/Polynomial/Monomials/Full/Data.lean",
              "source_declaration": "abbrev MilnorMonomial (n : ℤ) := {d : ℕ →₀ ℕ // (slotWeight d : ℤ) = n}",
              "source_sha256": "83e3d226b62e642a55564e49463102551660c31ef80d5ff1b262fc83de5e87ea"
            },
            {
              "end_line": 25,
              "fqn": "KIP126.Steenrod.Milnor.Ext.Cofree.wordSpace",
              "full_type": "(s : ℕ) → GrVect F2",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorCoalgebra.Data",
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Monomials.Words.Realization.Data",
                "KIP126.Def.Algebra.GradedComodule.Tensor.Data",
                "Mathlib.LinearAlgebra.TensorProduct.Basic"
              ],
              "kind": "definition",
              "line": 24,
              "path": "KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean",
              "source_declaration": "def wordSpace (s : ℕ) : GrVect F2 :=\n  fun n =\u003e ModuleCat.of F2 (MilnorWord s n →₀ F2)",
              "source_sha256": "3e2e98382d77de5363cfef98d81acd5fe53ceb7ff6e62ab98cf30fc0ef262e42"
            },
            {
              "end_line": 30,
              "fqn": "KIP126.Steenrod.Milnor.Ext.Cofree.term",
              "full_type": "(s : ℕ) → RightComodule Coalgebra.dualSteenrod",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorCoalgebra.Data",
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Monomials.Words.Realization.Data",
                "KIP126.Def.Algebra.GradedComodule.Tensor.Data",
                "Mathlib.LinearAlgebra.TensorProduct.Basic"
              ],
              "kind": "definition",
              "line": 29,
              "path": "KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean",
              "source_declaration": "def term (s : ℕ) : RightComodule Coalgebra.dualSteenrod :=\n  (rightTensorComonad Coalgebra.dualSteenrod).cofree.obj (wordSpace s)",
              "source_sha256": "3e2e98382d77de5363cfef98d81acd5fe53ceb7ff6e62ab98cf30fc0ef262e42"
            },
            {
              "end_line": 17,
              "fqn": "KIP126.Steenrod.Milnor.Coalgebra.Carrier",
              "full_type": "(n : ℤ) → Type",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Monomials.Full.Data",
                "Mathlib.LinearAlgebra.Finsupp.LinearCombination"
              ],
              "kind": "abbreviation",
              "line": 17,
              "path": "KIP126/Def/Steenrod/MilnorCoalgebra/Raw/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorCoalgebra/Raw/Data.lean",
              "source_declaration": "abbrev Carrier (n : ℤ) := MilnorMonomial n →₀ F2",
              "source_sha256": "de21ad8a1443719da444d32cdcba44dc20fd3f0afdafdd85cbd64ef4149920ea"
            },
            {
              "end_line": 33,
              "fqn": "KIP126.Steenrod.Milnor.Ext.CobarResolution",
              "full_type": "Type",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorExt.Data",
                "KIP126.Def.Steenrod.MilnorExt.Cofree.Data",
                "Mathlib.CategoryTheory.Abelian.Injective.Ext"
              ],
              "kind": "structure",
              "line": 22,
              "path": "KIP126/Def/Steenrod/MilnorExt/Resolution/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorExt/Resolution/Data.lean",
              "source_declaration": "structure CobarResolution where\n  resolution : InjectiveResolution (trivialAt 0)\n  termIso : ∀ s : ℕ, resolution.cocomplex.X s ≅ Cofree.term s\n  differential : ∀ (s : ℕ) (n : ℤ) (z : (resolution.cocomplex.X s).A n),\n    Cofree.termPolynomial (s + 1) n\n        (((resolution.cocomplex.d s (s + 1) ≫ (termIso (s + 1)).hom).f n).hom z) =\n      Cofree.rawDifferential s\n        (Cofree.termPolynomial s n (((termIso s).hom.f n).hom z))\n  augmentation :\n    Cofree.termPolynomial 0 0\n      (((resolution.ι.f 0 ≫ (termIso 0).hom).f 0).hom\n        (degreeLineGenerator F2 0)) = 1",
              "source_sha256": "aeda529f246c04eb0e52b63e5a6528c3ff16dfae7f3e0a04bcd04c729d0a80a4"
            },
            {
              "end_line": 153,
              "fqn": "KIP126.Foundation.CooperationInput",
              "full_type": "(F : FoundationInput) → [TensorInput F] → (M : MilnorInput F) → Type",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Kervaire.Route.Model.Coherent.Data",
                "KIP126.Def.StableHomotopy.Implementation.Tensor",
                "KIP126.Def.StableHomotopy.Cohomology.Data",
                "KIP126.Def.ClassicalAdams.MilnorCooperations.Data",
                "KIP126.Def.ClassicalAdams.MapFiltration.Predicates",
                "KIP126.Def.Synthetic.Context.Data",
                "KIP126.Def.Synthetic.Localization.Recovery.Data",
                "KIP126.Def.Synthetic.QuotientTower.Predicates",
                "KIP126.Def.Synthetic.Completion.Predicates",
                "KIP126.Def.ClassicalAdams.Completion.Predicates",
                "KIP126.Def.ClassicalAdams.TowerHomology.MilnorCoordinates.Data",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Suspension.Predicates",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Diagonal.Predicates",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Unit.Predicates",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.MilnorBasis.Coproduct.Predicates",
                "KIP126.Def.StableHomotopy.Context.Mapping.Data",
                "KIP126.Def.StableHomotopy.Context.Proofs",
                "KIP126.Def.StableHomotopy.Toda.Predicates",
                "KIP126.Def.HigherAlgebra.Operad.Moduli.Data",
                "KIP126.Def.HigherAlgebra.Operad.Model.Data",
                "KIP126.Def.HigherAlgebra.Operad.Topological.Predicates",
                "KIP126.Def.Topology.WeakContractibility.Predicates",
                "Mathlib.AlgebraicTopology.ModelCategory.Instances",
                "Mathlib.AlgebraicTopology.ModelCategory.IsCofibrant",
                "Mathlib.CategoryTheory.Localization.Predicate",
                "Mathlib.Algebra.Exact.Basic"
              ],
              "kind": "structure",
              "line": 143,
              "path": "KIP126/Def/StableHomotopy/Implementation/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/StableHomotopy/Implementation/Data.lean",
              "source_declaration": "structure CooperationInput (F : FoundationInput) [TensorInput F] (M : MilnorInput F) where\n  ring : Mod2RingStructure F.hf2\n  kunneth : Mod2CooperationKunneth F.hf2 ring\n  basis : Mod2ReducedMilnorBasis F.hf2 ring\n  suspension : Mod2KunnethSuspensionCompatible F.hf2 ring kunneth\n  diagonal : Mod2KunnethDiagonalCompatible F.hf2 ring kunneth\n  unit : Mod2KunnethUnitCompatible F.hf2 ring kunneth\n  coproduct : Mod2MilnorCoproductCompatible F.hf2 ring kunneth basis\n  coordinates_eq : ∀ (s t : ℕ)\n      (x : adamsPage F.hf2.unit (SphereSpectrum (C := F.Spectrum)) 1 (by decide) s t),\n    M.coordinates s t x = sphereFirstPageMilnorEquiv F.hf2 ring kunneth basis s t x",
              "source_sha256": "d68534b7abbf7301472d08d72b63870399c1bc76c3d7c5fe0b921b6193511828"
            },
            {
              "end_line": 131,
              "fqn": "KIP126.Foundation.TensorInput",
              "full_type": "(F : FoundationInput) → Type",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Kervaire.Route.Model.Coherent.Data",
                "KIP126.Def.StableHomotopy.Implementation.Tensor",
                "KIP126.Def.StableHomotopy.Cohomology.Data",
                "KIP126.Def.ClassicalAdams.MilnorCooperations.Data",
                "KIP126.Def.ClassicalAdams.MapFiltration.Predicates",
                "KIP126.Def.Synthetic.Context.Data",
                "KIP126.Def.Synthetic.Localization.Recovery.Data",
                "KIP126.Def.Synthetic.QuotientTower.Predicates",
                "KIP126.Def.Synthetic.Completion.Predicates",
                "KIP126.Def.ClassicalAdams.Completion.Predicates",
                "KIP126.Def.ClassicalAdams.TowerHomology.MilnorCoordinates.Data",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Suspension.Predicates",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Diagonal.Predicates",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.Kunneth.Unit.Predicates",
                "KIP126.Def.StableHomotopy.Cohomology.Cooperations.MilnorBasis.Coproduct.Predicates",
                "KIP126.Def.StableHomotopy.Context.Mapping.Data",
                "KIP126.Def.StableHomotopy.Context.Proofs",
                "KIP126.Def.StableHomotopy.Toda.Predicates",
                "KIP126.Def.HigherAlgebra.Operad.Moduli.Data",
                "KIP126.Def.HigherAlgebra.Operad.Model.Data",
                "KIP126.Def.HigherAlgebra.Operad.Topological.Predicates",
                "KIP126.Def.Topology.WeakContractibility.Predicates",
                "Mathlib.AlgebraicTopology.ModelCategory.Instances",
                "Mathlib.AlgebraicTopology.ModelCategory.IsCofibrant",
                "Mathlib.CategoryTheory.Localization.Predicate",
                "Mathlib.Algebra.Exact.Basic"
              ],
              "kind": "class",
              "line": 116,
              "path": "KIP126/Def/StableHomotopy/Implementation/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/StableHomotopy/Implementation/Data.lean",
              "source_declaration": "class TensorInput (F : FoundationInput) where\n  [triangulated : IsTriangulated F.Spectrum]\n  [monoidalPreadditive : MonoidalPreadditive F.Spectrum]\n  [symmetric : SymmetricCategory F.Spectrum]\n  [closed : MonoidalClosed F.Spectrum]\n  [leftShift : ∀ X : F.Spectrum, (tensorLeft X).CommShift ℤ]\n  [rightShift : ∀ X : F.Spectrum, (tensorRight X).CommShift ℤ]\n  [ihomShift : ∀ X : F.Spectrum, (ihom X).CommShift ℤ]\n  [leftExact : ∀ X : F.Spectrum, (tensorLeft X).IsTriangulated]\n  [rightExact : ∀ X : F.Spectrum, (tensorRight X).IsTriangulated]\n  [ihomExact : ∀ X : F.Spectrum, (ihom X).IsTriangulated]\n  [unitShift : (mod2UnitNatTrans F.hf2).CommShift ℤ]\n  leftShift_eq : ∀ X : F.Spectrum,\n    leftShift X = Functor.CommShift.ofIso (BraidedCategory.tensorLeftIsoTensorRight X).symm ℤ\n  ihom_unit_shift : ∀ X : F.Spectrum, NatTrans.CommShift (ihom.adjunction X).unit ℤ\n  ihom_counit_shift : ∀ X : F.Spectrum, NatTrans.CommShift (ihom.adjunction X).counit ℤ",
              "source_sha256": "d68534b7abbf7301472d08d72b63870399c1bc76c3d7c5fe0b921b6193511828"
            },
            {
              "end_line": 16,
              "fqn": "KIP126.Classical.Adams.SphereVanishingLine",
              "full_type": "(H : Mod2EilenbergMacLane (C := C)) → Prop",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.StableHomotopy.Cohomology.Data",
                "KIP126.Def.ClassicalAdams.Detection.Data"
              ],
              "kind": "definition",
              "line": 14,
              "path": "KIP126/Def/ClassicalAdams/SphereVanishing/Predicates.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/ClassicalAdams/SphereVanishing/Predicates.lean",
              "source_declaration": "def SphereVanishingLine (H : Mod2EilenbergMacLane (C := C)) : Prop :=\n  ∀ s t : ℤ, 0 \u003c t - s → t - s \u003c 2 * s - 3 →\n    Subsingleton ((adamsTowerInternalSpectralSequence H.unit SphereSpectrum).Page 2 (s,t))",
              "source_sha256": "857396fc8f0bd902b26e3ead3c2ff98a5b26ba7cbd548e22f159bf056689ad0f"
            },
            {
              "end_line": 36,
              "fqn": "KIP126.Interface.Solution.adamsOneLine_other_degree",
              "full_type": "∀ (t : ℤ), (∀ j : ℕ, t ≠ ((2^j : ℕ) : ℤ)) → ∀ x : sphereAdamsData.Page 2 (1,t), x = 0",
              "implicit_context": [],
              "imports": [
                "KIP126.Interface.Challenge.Challenge2",
                "KIP126.Def.ClassicalAdams.SphereClasses.Products.Data",
                "KIP126.Def.SpectralSequence.Computation.Predicates",
                "KIP126.Def.StageInput.Milnor",
                "KIP126.Def.StageInput.StandardSphere.Sequence.Data"
              ],
              "kind": "theorem",
              "line": 33,
              "path": "KIP126/Interface/Solution/AdamsOneLine.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Interface/Solution/AdamsOneLine.lean",
              "source_declaration": "theorem adamsOneLine_other_degree (t : ℤ)\n    (ht : ∀ j : ℕ, t ≠ ((2 ^ j : ℕ) : ℤ)) :\n    ∀ x : sphereAdamsData.Page 2 (1, t), x = 0 := by\n  sorry",
              "source_sha256": "ba6145a10a6f98ca0ab61f9a1955da0155f02d60cca08e7c9f142f072ac79154"
            },
            {
              "end_line": 18,
              "fqn": "KIP126.Algebra.GradedComodule.coefficientYoneda_apply",
              "full_type": "∀ (η : Coaugmentation C) (s s' : ℕ) (t u : ℤ) (x : CoefficientExt η s t) (y : CoefficientExt η s' u), coefficientYoneda η s s' t u x y = (coefficientShift η t s' u y).comp x (Nat.add_comm s' s)",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Algebra.GradedComodule.Ext.Multiplication.Data"
              ],
              "kind": "theorem",
              "line": 15,
              "path": "KIP126/Def/Algebra/GradedComodule/Ext/Multiplication/Proofs.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Algebra/GradedComodule/Ext/Multiplication/Proofs.lean",
              "source_declaration": "theorem coefficientYoneda_apply (η : Coaugmentation C) (s s' : ℕ) (t u : ℤ)\n    (x : CoefficientExt η s t) (y : CoefficientExt η s' u) :\n    coefficientYoneda η s s' t u x y =\n      (coefficientShift η t s' u y).comp x (Nat.add_comm s' s) := rfl",
              "source_sha256": "0972f1b57c9a613fadfef86aaa4bb8853e9f5288bbca93a2a414f6f761303a19"
            },
            {
              "end_line": 48,
              "fqn": "KIP126.Algebra.GradedComodule.coefficientYoneda",
              "full_type": "(η : Coaugmentation C) → (s s' : ℕ) → (t u : ℤ) → CoefficientExt η s t →ₗ[K] CoefficientExt η s' u →ₗ[K] CoefficientExt η (s+s') (t+u)",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Algebra.GradedComodule.Ext.Data",
                "KIP126.Def.Algebra.GradedComodule.Shift.TensorLine.Data",
                "KIP126.Def.Algebra.GradedComodule.Shift.Structure.Proofs",
                "Mathlib.Algebra.Homology.DerivedCategory.Ext.Map"
              ],
              "kind": "definition",
              "line": 42,
              "path": "KIP126/Def/Algebra/GradedComodule/Ext/Multiplication/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Algebra/GradedComodule/Ext/Multiplication/Data.lean",
              "source_declaration": "def coefficientYoneda (η : Coaugmentation C) (s s' : ℕ) (t u : ℤ) :\n    CoefficientExt η s t →ₗ[K] CoefficientExt η s' u →ₗ[K]\n      CoefficientExt η (s + s') (t + u) :=\n  (Abelian.Ext.bilinearCompOfLinear K\n    (trivialAt K η (t + u)) (trivialAt K η t) (trivialAt K η 0)\n    s' s (s + s') (Nat.add_comm s' s)).flip.compl₂\n      (coefficientShift η t s' u)",
              "source_sha256": "55e72532deb70cec6fd0c741dbe0d06f0a2afe0f784770eaa07d9e73c017f873"
            },
            {
              "end_line": 40,
              "fqn": "KIP126.Steenrod.Milnor.Ext.Cofree.cupBilinear",
              "full_type": "(s s' : ℕ) → TensorPower s →ₗ[F2] TensorPower s' →ₗ[F2] TensorPower (s+s')",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorCoalgebra.Data",
                "KIP126.Def.Steenrod.MilnorCobar.Polynomial.Monomials.Words.Realization.Data",
                "KIP126.Def.Algebra.GradedComodule.Tensor.Data",
                "Mathlib.LinearAlgebra.TensorProduct.Basic"
              ],
              "kind": "definition",
              "line": 34,
              "path": "KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorExt/Cofree/Data.lean",
              "source_declaration": "def cupBilinear (s s' : ℕ) :\n    TensorPower s →ₗ[F2] TensorPower s' →ₗ[F2] TensorPower (s + s') :=\n  (LinearMap.mul F2 (TensorPower (s + s'))).compl₁₂\n    (MvPolynomial.rename\n      (fun a : Fin s × ℕ =\u003e (a.1.castAdd s', a.2))).toLinearMap\n    (MvPolynomial.rename\n      (fun a : Fin s' × ℕ =\u003e (a.1.natAdd s, a.2))).toLinearMap",
              "source_sha256": "3e2e98382d77de5363cfef98d81acd5fe53ceb7ff6e62ab98cf30fc0ef262e42"
            },
            {
              "end_line": 11,
              "fqn": "KIP126.Steenrod.Milnor.Ext.Cofree.termPolynomial_injective",
              "full_type": "∀ (s : ℕ) (n : ℤ), Function.Injective (termPolynomial s n)",
              "implicit_context": [],
              "imports": [
                "KIP126.Def.Steenrod.MilnorExt.Cofree.Data"
              ],
              "kind": "theorem",
              "line": 9,
              "path": "KIP126/Def/Steenrod/MilnorExt/Cofree/Proofs.lean",
              "preliminary_semantic_reading": null,
              "snapshot": "formal/evidence-search/round2/sources/KIP126/Def/Steenrod/MilnorExt/Cofree/Proofs.lean",
              "source_declaration": "theorem termPolynomial_injective (s : ℕ) (n : ℤ) :\n    Function.Injective (termPolynomial s n) := by\n  sorry",
              "source_sha256": "54a0bc7df491c708209417a1ba69c8e3168d47656232a1387c8cef7c4e130fc5"
            }
          ],
          "verdict": "not_passed"
        }
      ],
      "semantic_status": "incomplete",
      "short_reason": "第二轮展开实际Yoneda运算后，仍未找到把同一cobar平方送到Yoneda平方的桥；继承首轮有候选未通过，继续第三轮，当前保持核查未完成。",
      "source_statement": "论文介绍 Adams 第二线由 $h_ih_j$ 组成并有相邻关系 $h_ih_{i+1}=0$；附录 stem 为 $126$ 的 Adams $E_2$ 表在过滤 $2$ 列出非零类 $h_6^2$。这里只取该表的 $E_2$ 非零性，不取它所标记的潜在高页微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "第1节，行149（Adams第二线）；附录Table:S126.10，行3166（stem126、过滤2的h₆²行）",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "附录中 stem 为 $126$、Adams 过滤 $s=2$，内部次数为 $126+2=128$，对应目标中的标准 Yoneda 平方。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "固定目标的初始非零类，不由h₆非零推出平方非零",
          "quote": "这个平方在 $E_2$ 中非零是 Adams $2$ 线的一个计算事实。",
          "source": "math/T00-v2.md"
        }
      ],
      "used_statement": "标准 Yoneda 平方 $h_6^2$ 在 $\\operatorname{Ext}_A^{2,128}(\\mathbb F_2,\\mathbb F_2)$ 中非零。",
      "uses": [
        {
          "chapter_id": "opening",
          "occurrence": 1,
          "part_id": "T00",
          "title": "$h_6^2$ 的永久存活"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "ac4307f7b1833ff1227e51cecf158c46a493323305afdcbe3e9ed737a8374060",
      "category": "literature",
      "checked_version": "v1",
      "formal_status": {
        "axioms_observed": [
          "propext",
          "sorryAx",
          "Classical.choice",
          "Quot.sound"
        ],
        "classifications": [
          "interface_assumption",
          "contains_sorry_in_existence_producer",
          "depends_on_unfinished_fixed_foundation"
        ],
        "source_direct_sorry": [
          "KIP126.Interface.Solution.Literature.Route.source_background_exists",
          "KIP126.Def.Solution.implementation_exists"
        ],
        "summary": "对应内容主要为明确接口输入；source_background_exists的证明体含sorry，固定基础构造也未完成。字段存在不等于接口已经实现。"
      },
      "full_reason": "source_background_exists的类型只断言存在一个StandardRouteInput和相关文献输入。展开可得到同一Syn的稳定结构、AlgebraData.syntheticSymmetric、NuFunctorData和双移位；不能只从SyntheticCategory名字认定对称性。Smn(a,b)定义为biShift(a,b)作用于单位，NuFunctorData的unitIso/suspensionIso及biShift_comp/compat可用于球谱的次数翻译。关键未覆盖的是λ来源：lam只是biShift(0,−1)→Id的自然变换字段，boundaryLandingIso只识别源靶对象；已提交声明没有把这个nattrans等同ΣνS⁻¹→ν(ΣS⁻¹)的典范比较。source_background_exists注释不能补上该公式。另，所选ν的定义域是与HF₂完成源等价的固定C，固定used_statement写Sp→Syn；需说明该本处模型与该函子范围的准确对应，而不能仅凭命名。当前是部分覆盖及桥接证据不足，不宣称候选与理论矛盾。",
      "id": "EXT-004",
      "name": "模2合成谱及典范参数",
      "next_search": [
        {
          "required_evidence": "给出完整类型、同一ν/lam和所有前提；不要用只有源靶对象的boundaryLandingIso重复候选。",
          "target": "同一NuFunctorData/SyntheticCategory.lam与典范悬挂比较ΣνX→νΣX的公式，特别X=S⁻¹；以及Smn(a,b)与Σ^(a−b)νS^b的同构"
        },
        {
          "required_evidence": "检索实际结构字段/构造/模型比较；引用注释不充当语义证据。",
          "target": "source_background_exists所选模型/ν与固定used_statement中Sp及Syn_HF₂的范围绑定"
        }
      ],
      "rounds": [
        {
          "candidates": [
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "source-background",
              "checker_current_source_sha256_verified": true,
              "checker_result": null,
              "compiled_inspection": "formal/evidence-search/t01a/lean-inspect.txt",
              "complete_source_snapshot": "formal/evidence-search/t01a/sources/KIP126/Interface/Solution/Literature/Route/SourceExistence.lean",
              "end_line": 41,
              "file_sha256": "8b3af8d180dab78088d52cb80fdde0e406560785287924c9ed3ca7d5189d02be",
              "fqn": "KIP126.Interface.Solution.Literature.Route.source_background_exists",
              "full_type": "∃ route : KIP126.Classical.Adams.StandardRouteInput, ∃ bindings : KIP126.Challenge2.ModelBindings route, Nonempty (KIP126.Challenge2.LiteratureInterface route bindings)",
              "implicit_context": [],
              "imports": [
                "KIP126.Interface.Challenge.Challenge2"
              ],
              "key_definitions": [
                "route-input",
                "model-data",
                "model",
                "bindings",
                "algebra-data",
                "source-statements"
              ],
              "kind": "theorem",
              "line": 37,
              "open_context": [
                "CategoryTheory",
                "KIP126.Classical.Adams",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Synthetic.Context",
                "KIP126.Synthetic.SpectralSequence",
                "KIP126.Classical.Adams.PageRepresentatives",
                "KIP126.Kervaire.Route",
                "KIP126.Literature.Route"
              ],
              "path": "KIP126/Interface/Solution/Literature/Route/SourceExistence.lean",
              "preliminary_semantic_reading": "存在性包把同一 synthetic category、ν、λ、合成族和 source inputs 一起交付；须逐字段核查所固定外部命题是否全在包中，不能从注释声称的 Pstrągowski construction 自动推出额外公式。",
              "proof_status_observation": "源码直接 sorry；并非既成实现。",
              "source_declaration": "theorem source_background_exists :\n    ∃ route : Classical.Adams.StandardRouteInput,\n      ∃ bindings : KIP126.Challenge2.ModelBindings route,\n        Nonempty (KIP126.Challenge2.LiteratureInterface route bindings) := by\n  sorry"
            },
            {
              "actual_print_axioms": null,
              "candidate_id": "synthetic-lam",
              "checker_current_source_sha256_verified": true,
              "checker_result": null,
              "compiled_inspection": "formal/evidence-search/t01a/lean-inspect.txt",
              "complete_source_snapshot": "formal/evidence-search/t01a/sources/KIP126/Def/Synthetic/Context/Data.lean",
              "end_line": 38,
              "file_sha256": "4a2590b3d52888a498b3e03fb79953bcd88870d7da2302ef6650d59650d064a4",
              "fqn": "KIP126.Synthetic.Context.SyntheticCategory.lam",
              "full_type": "∀ {Syn : Type u} [self : KIP126.Synthetic.Context.SyntheticCategory.{u,v} Syn], KIP126.Synthetic.Context.SyntheticCategory.biShift (0,-1) ⟶ 𝟭 Syn",
              "implicit_context": [
                "universe u v",
                "{Syn : Type u}",
                "[self : SyntheticCategory.{u,v} Syn]"
              ],
              "imports": [
                "KIP126.Def.StableHomotopy.Context.Data"
              ],
              "key_definitions": [
                "synthetic-context",
                "nu-data",
                "sphere",
                "sphere-unit",
                "lambda-powers"
              ],
              "kind": "class_field",
              "line": 38,
              "open_context": [
                "CategoryTheory",
                "KIP126.Classical.Adams",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Synthetic.Context",
                "KIP126.Synthetic.SpectralSequence",
                "KIP126.Classical.Adams.PageRepresentatives",
                "KIP126.Kervaire.Route",
                "KIP126.Literature.Route"
              ],
              "path": "KIP126/Def/Synthetic/Context/Data.lean",
              "preliminary_semantic_reading": "提供 (0,−1) 到恒等函子的自然变换，球处给正确双次数。完整源码未在此字段要求它等于 ΣνS⁻¹→νΣS⁻¹ 的典范比较。",
              "proof_status_observation": "接口输入；不把投影当成实现。",
              "source_declaration": "  lam : biShift (0, -1) ⟶ 𝟭 Syn"
            },
            {
              "actual_print_axioms": null,
              "candidate_id": "synthetic-symmetry",
              "checker_current_source_sha256_verified": true,
              "checker_result": null,
              "compiled_inspection": "formal/evidence-search/t01a/lean-inspect-symmetry.txt",
              "complete_source_snapshot": "formal/evidence-search/t01a/sources/KIP126/Def/Kervaire/Route/SourceLanguage.lean",
              "end_line": 942,
              "file_sha256": "153dacc46f510c46d7f4b4d3a7285158854780fd791882025a95b8325af41e3d",
              "fqn": "KIP126.Literature.Route.AlgebraData.syntheticSymmetric",
              "full_type": "∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] {Syn : Type w} [SyntheticCategory.{w,v} Syn] [HasFunctorialCofiber (C := Syn)] {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} {D : KIP126.Kervaire.Route.Model H M Syn}, KIP126.Literature.Route.AlgebraData D → SymmetricCategory Syn",
              "implicit_context": [
                "universe u v w",
                "{C : Type u}",
                "[StableHomotopyCategory.{u,v} C]",
                "[HasFunctorialCofiber (C := C)]",
                "{Syn : Type w}",
                "[SyntheticCategory.{w,v} Syn]",
                "[HasFunctorialCofiber (C := Syn)]",
                "H : Mod2EilenbergMacLane (C := C)",
                "M : MilnorCooperations H",
                "N : NuFunctorData C Syn",
                "F : SyntheticAdamsFamily Syn",
                "D : KIP126.Kervaire.Route.Model H M Syn"
              ],
              "imports": [
                "KIP126.Def.Comparison.StageInterfaces",
                "KIP126.Def.ClassicalAdams.Convergence.BHS.Predicates",
                "KIP126.Def.ClassicalAdams.SphereVanishing.Predicates",
                "KIP126.Def.Synthetic.EInfty.Presentation.Predicates",
                "KIP126.Def.SpectralSequence.Computation.State.Predicates",
                "KIP126.Def.SpectralSequence.Computation.Predicates",
                "KIP126.Def.Comparison.ClassicalSynthetic.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Data",
                "KIP126.Def.ClassicalAdams.SphereClasses.Hi.Internal.Data",
                "KIP126.Def.ClassicalAdams.SphereClasses.Products.Data",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.CycleMap.Data",
                "KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Data",
                "KIP126.Def.Kervaire.Theta5.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Window.Data",
                "KIP126.Def.Synthetic.EInfty.Shift.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Ambiguity.Predicates",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Data",
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Equivalence.Data",
                "KIP126.Def.ClassicalAdams.Suspension.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Crossing.Predicates",
                "KIP126.Def.Synthetic.PageExtension.Solutions.Data",
                "KIP126.Def.Synthetic.PageExtension.Solutions.Permanent.Data",
                "KIP126.Def.Synthetic.ExtensionSS.Square.Construction.Data",
                "KIP126.Def.ClassicalAdams.Moss.Statement.Predicates",
                "KIP126.Def.ClassicalAdams.Tmf.Model.Data",
                "KIP126.Def.ClassicalAdams.Tmf.Model.Predicates",
                "KIP126.Def.ClassicalAdams.SphereMultiplication.Data",
                "KIP126.Def.Steenrod.MilnorExt.Resolution.Data",
                "KIP126.Def.Synthetic.Bockstein.Hom.Data",
                "KIP126.Def.Synthetic.QuotientFunctor.Data",
                "KIP126.Def.ClassicalAdams.Convergence.Tower.Predicates",
                "KIP126.Def.ClassicalAdams.Completion.Predicates",
                "KIP126.Def.Kervaire.Route.Extensions.Data",
                "KIP126.Def.Kervaire.Route.Hopf.Data",
                "KIP126.Def.Kervaire.Route.Conditions.Predicates",
                "KIP126.Def.Kervaire.Route.Massey.Predicates",
                "KIP126.Def.Kervaire.Route.Toda.Predicates",
                "KIP126.Def.Synthetic.Computation.Predicates",
                "KIP126.Def.Kervaire.Route.Labels.Tmf.Data",
                "Mathlib.CategoryTheory.Adjunction.Additive",
                "KIP126.Def.Kervaire.Route.Multiplication.Comparison",
                "KIP126.Def.ClassicalAdams.TowerNaturality.Page.Data",
                "KIP126.Def.StableHomotopy.FiniteType.Predicates",
                "Mathlib.CategoryTheory.Monoidal.Mon",
                "KIP126.Def.Kervaire.Route.Triangles.Predicates",
                "KIP126.Def.Comparison.ClassicalSynthetic.RealizationWeights.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.RealizationTower.Route.Data",
                "KIP126.Def.StableHomotopy.Implementation.Data"
              ],
              "key_definitions": [
                "algebra-data",
                "bindings"
              ],
              "kind": "structure_field",
              "line": 942,
              "open_context": [
                "CategoryTheory",
                "KIP126.Classical.Adams",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Synthetic.Context",
                "KIP126.Synthetic.SpectralSequence",
                "KIP126.Classical.Adams.PageRepresentatives",
                "KIP126.Kervaire.Route",
                "KIP126.Literature.Route"
              ],
              "path": "KIP126/Def/Kervaire/Route/SourceLanguage.lean",
              "preliminary_semantic_reading": "对称幺半结构是 AlgebraData 的实际字段，不能仅从 SyntheticCategory（仅幺半）名称推断对称性。",
              "proof_status_observation": "接口输入；不把投影当成实现。",
              "source_declaration": "  syntheticSymmetric : SymmetricCategory Syn"
            }
          ],
          "next_search": [
            {
              "required_evidence": "给出完整类型、同一ν/lam和所有前提；不要用只有源靶对象的boundaryLandingIso重复候选。",
              "target": "同一NuFunctorData/SyntheticCategory.lam与典范悬挂比较ΣνX→νΣX的公式，特别X=S⁻¹；以及Smn(a,b)与Σ^(a−b)νS^b的同构"
            },
            {
              "required_evidence": "检索实际结构字段/构造/模型比较；引用注释不充当语义证据。",
              "target": "source_background_exists所选模型/ν与固定used_statement中Sp及Syn_HF₂的范围绑定"
            }
          ],
          "reason": "候选给出稳定对称幺半模型、ν、双移位和次数正确的λ；尚未把该λ识别为指定的典范悬挂比较映射，完整模型及函子范围也需补证。",
          "round": 1,
          "search_queries": [
            {
              "argv": [
                "rg",
                "-n",
                "SyntheticCategory|NuFunctor|LambdaComparison|lambdaComparison|canonicalLambda|lambda.*(susp|comparison)|sphere.*formula|bigradedSphere",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q01-synthetic-foundation.txt",
              "record_id": "q01-synthetic-foundation",
              "utc": "2026-10-04T15:14:46.771579+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "[Pp]olynomial|free.*lambda|lambda.*free|FirstPage|firstPage|e1Iso|E1Iso|E2Iso|e2Iso|synth.*ASS",
                "KIP126/Def/Comparison",
                "KIP126/Def/Synthetic",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q02-polynomial-pages.txt",
              "record_id": "q02-polynomial-pages",
              "utc": "2026-10-04T15:14:46.793370+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "SyntheticEInfty|Quotient.*EInfty|quotient.*[Ee]Infty|Finite.*[Ee]Infty|EInfty.*Finite|BHS.*[Ff]inite",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q03-einfty.txt",
              "record_id": "q03-einfty",
              "utc": "2026-10-04T15:14:46.823831+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "nilpotent_complete|IsENilpotentComplete|StronglyConvergent|strongly_convergent|[Ff]inite.*[Cc]onver|[Qq]uotient.*[Cc]onver|Hausdorff|Separated",
                "KIP126/Def/Synthetic",
                "KIP126/Def/ClassicalAdams/Completion",
                "KIP126/Interface",
                "KIP126/Def/Kervaire/Route"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q04-completion.txt",
              "record_id": "q04-completion",
              "utc": "2026-10-04T15:14:46.846945+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "lam|lambda|suspension",
                "KIP126/Def/Synthetic/Context",
                "KIP126/Def/Synthetic/Sphere",
                "KIP126/Def/StableHomotopy/Implementation/Data.lean",
                "KIP126/Def/Kervaire/Route/Model"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q05-canonical-lambda.txt",
              "record_id": "q05-canonical-lambda",
              "utc": "2026-10-04T15:15:36.367150+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "Polynomial|Finsupp|free.*lambda|lambda.*free|E₁|E1|first.page|firstPage|d₁",
                "KIP126/Def/Synthetic",
                "KIP126/Def/Comparison",
                "KIP126/Def/Kervaire/Route",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q06-e1-fullscope.txt",
              "record_id": "q06-e1-fullscope",
              "utc": "2026-10-04T15:15:36.382047+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "[Ss]trong.*[Cc]onver|[Cc]ompletionWitness|IsAdamsTowerStronglyConvergent|HomotopySeparated|TowerConvergence",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q07-convergence-fullscope.txt",
              "record_id": "q07-convergence-fullscope",
              "utc": "2026-10-04T15:15:36.406261+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "SymmetricCategory Syn|BraidedCategory Syn|ClosedSymmetricTensorTriangulated|lam.*=|= .*lam",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q08-symmetry.txt",
              "record_id": "q08-symmetry",
              "utc": "2026-10-04T15:15:36.426413+00:00"
            }
          ],
          "search_record": "formal/search-T01a-round1.json",
          "search_record_sha256": "29f85fa786d44e391a26a4de40e83e798175332e58d3dbfdaaa46f8d1604f363",
          "semantic_status": "not_passed",
          "verdict": "not_passed"
        }
      ],
      "semantic_status": "incomplete",
      "short_reason": "候选给出稳定对称幺半模型、ν、双移位和次数正确的λ；尚未把该λ识别为指定的典范悬挂比较映射，完整模型及函子范围也需补证。",
      "source_statement": "Pstrągowski 对 Adams 型同调理论 $E$ 构造稳定、可呈现的对称幺半范畴 $\\mathrm{Syn}_E$ 及 lax symmetric monoidal 函子 $\\nu_E$；BHS 回顾双分次球谱和 $\\tau\\in\\pi_{0,-1}$ 的定义。对 $E=H\\mathbb F_p$，$\\nu_E$ 是对称幺半的。",
      "sources": [
        {
          "kind": "primary_source",
          "locator": "行754–781，合成范畴及S^{a,b}、λ定义",
          "path": "MainPaper/main.tex"
        },
        {
          "kind": "primary_source",
          "locator": "Construction [Pstrągowski]及Remark rmk:strong-monoidal",
          "path": "Source/BHS/source/SynRevIntro.tex"
        },
        {
          "kind": "primary_source",
          "locator": "开头两项Definition；引Pstrągowski Definitions4.6,4.9,4.27",
          "path": "Source/BHS/source/SynRevBigraded.tex"
        }
      ],
      "specialization": "取 $E=H\\mathbb F_2$（Adams 型的例子），$\\tau$ 改记 $\\lambda$；本文平移 $\\Sigma$ 取 $(1,0)$，$\\nu$ 用于函子。$S^0$ 按论文 $2$ 完成约定。只使用该范畴、球谱及参数的存在。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "建立Q_q与双次数所用的范畴基础",
          "quote": "合成谱所在的范畴是稳定对称幺半范畴，具有双分次球谱与典范映射",
          "source": "math/T01a-v1.md"
        }
      ],
      "used_statement": "存在 $H\\mathbb F_2$ 合成谱的稳定对称幺半范畴及函子 $\\nu:\\mathrm{Sp}\\to\\mathrm{Syn}_{H\\mathbb F_2}$；双分次球谱为 $S^{a,b}=\\Sigma^{a-b}\\nu S^b$，典范比较映射 $\\Sigma\\nu S^{-1}\\to\\nu(\\Sigma S^{-1})$ 定义 $\\lambda\\in\\pi_{0,-1}S^{0,0}$。",
      "uses": [
        {
          "chapter_id": "quotients",
          "occurrence": 1,
          "part_id": "T01a",
          "title": "有限 $\\lambda$ 商的过滤"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "ac4307f7b1833ff1227e51cecf158c46a493323305afdcbe3e9ed737a8374060",
      "category": "literature",
      "checked_version": "v1",
      "formal_status": {
        "axioms_observed": [
          "propext",
          "sorryAx",
          "Classical.choice",
          "Quot.sound"
        ],
        "classifications": [
          "interface_assumption",
          "contains_sorry_in_existence_producer",
          "depends_on_unfinished_fixed_foundation"
        ],
        "source_direct_sorry": [
          "KIP126.Interface.Solution.Literature.Route.source_background_exists",
          "KIP126.Def.Solution.implementation_exists"
        ],
        "summary": "对应内容主要为明确接口输入；source_background_exists的证明体含sorry，固定基础构造也未完成。字段存在不等于接口已经实现。"
      },
      "full_reason": "ModelData.sphereE2/nuE2给经典E₂(s,t)到合成E₂(s,t,t−k)的等价，k:ℕ覆盖全部非负λ幂；ComparisonCompatible.nu_lambda把k增加1与实际lam映射连接，sphere_nu通过同一unitIso匹配ν球和合成单位。SyntheticSourceInputs.e2_weight_vanishing展开为w\u003et时零，所以E₂支撑并未遗漏。尽管这些与固定命题的E₂部分对应，SyntheticAdamsFamily明定firstPage=2，TowerPresentation所绑定的internal SSData也从E₂开始。其forward/inverse和comm_d不等于一份经典E₁⊗F₂[λ]到合成E₁的比较，亦未给d₁为经典d₁的λ线性延拓。固定命题还明确要求识别来自合成Adams塔并与参数幂及每层余纤维相容；当前E₂字段与E₂ λ相容性不能替代这些第一层条件。不是因缺少任意谱X的一般性而拒绝：这里已只查固定球。",
      "id": "EXT-005",
      "name": "合成 Adams 塔的自由多项式第一页",
      "next_search": [
        {
          "required_evidence": "完整E₁定义、逐层cofiber模型、经典类(s,t,t)放置、实际λ幂和d₁交换图；E₂的nuE2/nu_lambda已覆盖勿原样重交。",
          "target": "固定HF₂球的合成塔E₁多项式比较和d₁相容性"
        },
        {
          "required_evidence": "须明确实例化固定H、球、ν、lam，并从类型看出所有塔层余纤维相容；不新增声明或删去fixed statement条件。",
          "target": "能够替代单个E₁公式的一般塔比较定理"
        }
      ],
      "rounds": [
        {
          "candidates": [
            {
              "actual_print_axioms": null,
              "candidate_id": "sphere-E2",
              "checker_current_source_sha256_verified": true,
              "checker_result": null,
              "compiled_inspection": "formal/evidence-search/t01a/lean-inspect.txt",
              "complete_source_snapshot": "formal/evidence-search/t01a/sources/KIP126/Def/Kervaire/Route/Model/Data.lean",
              "end_line": 76,
              "file_sha256": "13cbf96f0bb5d183d471887929bbda829c8e5d8dfc95ae8880821f9fecce4b77",
              "fqn": "KIP126.Kervaire.Route.ModelData.sphereE2",
              "full_type": "∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] {Syn : Type w} [SyntheticCategory.{w,v} Syn] [HasFunctorialCofiber (C := Syn)] {H : Mod2EilenbergMacLane (C := C)}, (D : KIP126.Kervaire.Route.ModelData H Syn) → ∀ (s t : ℤ) (k : ℕ), E2 H SphereSpectrum s t ≃ₗ[ℤ] D.family.sphere.E₂ (s,t,t-k)",
              "implicit_context": [
                "universe u v w",
                "{C : Type u}",
                "[StableHomotopyCategory.{u,v} C]",
                "[HasFunctorialCofiber (C := C)]",
                "{Syn : Type w}",
                "[SyntheticCategory.{w,v} Syn]",
                "[HasFunctorialCofiber (C := Syn)]",
                "H : Mod2EilenbergMacLane (C := C)",
                "M : MilnorCooperations H",
                "N : NuFunctorData C Syn",
                "F : SyntheticAdamsFamily Syn",
                "D : KIP126.Kervaire.Route.Model H M Syn"
              ],
              "imports": [
                "KIP126.Def.Kervaire.Route.Labels.Data",
                "KIP126.Def.Kervaire.Route.Objects.Data",
                "KIP126.Def.ClassicalAdams.Detection.Convergence.Data",
                "KIP126.Def.Synthetic.Detection.Predicates",
                "KIP126.Def.Synthetic.AdamsSequence.Maps.Data",
                "KIP126.Def.Synthetic.Sphere.Actions.Data",
                "KIP126.Def.Synthetic.Context.Coherence.Predicates",
                "KIP126.Def.Synthetic.Localization.Recovery.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Restricted.Data",
                "KIP126.Def.Synthetic.QuotientTower.Predicates",
                "KIP126.Def.Synthetic.NormalizedMap.Data",
                "KIP126.Def.ClassicalAdams.Suspension.Predicates",
                "Mathlib.CategoryTheory.Triangulated.Triangulated"
              ],
              "key_definitions": [
                "model-data",
                "family",
                "lambda-degree",
                "tower-presentation"
              ],
              "kind": "structure_field",
              "line": 75,
              "open_context": [
                "CategoryTheory",
                "KIP126.Classical.Adams",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Synthetic.Context",
                "KIP126.Synthetic.SpectralSequence",
                "KIP126.Classical.Adams.PageRepresentatives",
                "KIP126.Kervaire.Route",
                "KIP126.Literature.Route"
              ],
              "path": "KIP126/Def/Kervaire/Route/Model/Data.lean",
              "preliminary_semantic_reading": "仅覆盖 E₂ 中每个非负 λ 次幂的分量，次数准确。未包含 E₁ 自由多项式结构或 d₁ 线性延拓；不能把 E₂ 字段当作全命题。",
              "proof_status_observation": "接口输入；不把投影当成实现。",
              "source_declaration": "  sphereE2 : ∀ (s t : ℤ) (k : ℕ),\n    E2 H SphereSpectrum s t ≃ₗ[ℤ] (family.sphere).E₂ (s, t, t - k)"
            },
            {
              "actual_print_axioms": null,
              "candidate_id": "nu-lambda",
              "checker_current_source_sha256_verified": true,
              "checker_result": null,
              "compiled_inspection": "formal/evidence-search/t01a/lean-inspect.txt",
              "complete_source_snapshot": "formal/evidence-search/t01a/sources/KIP126/Def/Kervaire/Route/Model/Predicates.lean",
              "end_line": 53,
              "file_sha256": "d8d332b508200b37a5b6a58fed567d7d268df31ea1995681c006de325308f4db",
              "fqn": "KIP126.Kervaire.Route.ComparisonCompatible.nu_lambda",
              "full_type": "(h : KIP126.Kervaire.Route.ComparisonCompatible D) → ∀ (X : ClassicalObject) (s t : ℤ) (k : ℕ) (x : E2 H (X.obj D.auxiliary) s t), HEq (familyPageMap D.family (SyntheticCategory.lam.app (D.nu.functor.obj (X.obj D.auxiliary))) 2 (s,t,t-1-k) (D.nuE2 X (-1) s t k x)) (D.nuE2 X 0 s t (k+1) x)",
              "implicit_context": [
                "universe u v w",
                "{C : Type u}",
                "[StableHomotopyCategory.{u,v} C]",
                "[HasFunctorialCofiber (C := C)]",
                "{Syn : Type w}",
                "[SyntheticCategory.{w,v} Syn]",
                "[HasFunctorialCofiber (C := Syn)]",
                "H : Mod2EilenbergMacLane (C := C)",
                "M : MilnorCooperations H",
                "N : NuFunctorData C Syn",
                "F : SyntheticAdamsFamily Syn",
                "D : KIP126.Kervaire.Route.Model H M Syn"
              ],
              "imports": [
                "KIP126.Def.Kervaire.Route.Model.Data",
                "KIP126.Def.Synthetic.AdamsSequence.TowerComparison.Data",
                "KIP126.Def.Synthetic.QuotientRestrictions.Data",
                "KIP126.Def.Synthetic.ExtensionSS.Data"
              ],
              "key_definitions": [
                "model-data",
                "model-comparison"
              ],
              "kind": "structure_field",
              "line": 50,
              "open_context": [
                "CategoryTheory",
                "KIP126.Classical.Adams",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Synthetic.Context",
                "KIP126.Synthetic.SpectralSequence",
                "KIP126.Classical.Adams.PageRepresentatives",
                "KIP126.Kervaire.Route",
                "KIP126.Literature.Route"
              ],
              "path": "KIP126/Def/Kervaire/Route/Model/Predicates.lean",
              "preliminary_semantic_reading": "补充 E₂ 分量与实际 λ 映射的相容性；仍没有 E₁ 张量、d₁、逐层余纤维的自由多项式同构。",
              "proof_status_observation": "接口输入；不把投影当成实现。",
              "source_declaration": "  nu_lambda : ∀ (X : ClassicalObject) (s t : ℤ) (k : ℕ)\n      (x : E2 H (X.obj D.auxiliary) s t),\n    HEq (familyPageMap D.family (SyntheticCategory.lam.app (D.nu.functor.obj (X.obj D.auxiliary)))\n      2 (s, t, t - 1 - k) (D.nuE2 X (-1) s t k x)) (D.nuE2 X 0 s t (k + 1) x)"
            }
          ],
          "next_search": [
            {
              "required_evidence": "完整E₁定义、逐层cofiber模型、经典类(s,t,t)放置、实际λ幂和d₁交换图；E₂的nuE2/nu_lambda已覆盖勿原样重交。",
              "target": "固定HF₂球的合成塔E₁多项式比较和d₁相容性"
            },
            {
              "required_evidence": "须明确实例化固定H、球、ν、lam，并从类型看出所有塔层余纤维相容；不新增声明或删去fixed statement条件。",
              "target": "能够替代单个E₁公式的一般塔比较定理"
            }
          ],
          "reason": "已匹配E₂各非负参数幂的分量、权重范围和λ作用；缺少E₁自由多项式比较、d₁线性延拓及与塔逐层余纤维相容的声明。",
          "round": 1,
          "search_queries": [
            {
              "argv": [
                "rg",
                "-n",
                "SyntheticCategory|NuFunctor|LambdaComparison|lambdaComparison|canonicalLambda|lambda.*(susp|comparison)|sphere.*formula|bigradedSphere",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q01-synthetic-foundation.txt",
              "record_id": "q01-synthetic-foundation",
              "utc": "2026-10-04T15:14:46.771579+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "[Pp]olynomial|free.*lambda|lambda.*free|FirstPage|firstPage|e1Iso|E1Iso|E2Iso|e2Iso|synth.*ASS",
                "KIP126/Def/Comparison",
                "KIP126/Def/Synthetic",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q02-polynomial-pages.txt",
              "record_id": "q02-polynomial-pages",
              "utc": "2026-10-04T15:14:46.793370+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "SyntheticEInfty|Quotient.*EInfty|quotient.*[Ee]Infty|Finite.*[Ee]Infty|EInfty.*Finite|BHS.*[Ff]inite",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q03-einfty.txt",
              "record_id": "q03-einfty",
              "utc": "2026-10-04T15:14:46.823831+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "nilpotent_complete|IsENilpotentComplete|StronglyConvergent|strongly_convergent|[Ff]inite.*[Cc]onver|[Qq]uotient.*[Cc]onver|Hausdorff|Separated",
                "KIP126/Def/Synthetic",
                "KIP126/Def/ClassicalAdams/Completion",
                "KIP126/Interface",
                "KIP126/Def/Kervaire/Route"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q04-completion.txt",
              "record_id": "q04-completion",
              "utc": "2026-10-04T15:14:46.846945+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "lam|lambda|suspension",
                "KIP126/Def/Synthetic/Context",
                "KIP126/Def/Synthetic/Sphere",
                "KIP126/Def/StableHomotopy/Implementation/Data.lean",
                "KIP126/Def/Kervaire/Route/Model"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q05-canonical-lambda.txt",
              "record_id": "q05-canonical-lambda",
              "utc": "2026-10-04T15:15:36.367150+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "Polynomial|Finsupp|free.*lambda|lambda.*free|E₁|E1|first.page|firstPage|d₁",
                "KIP126/Def/Synthetic",
                "KIP126/Def/Comparison",
                "KIP126/Def/Kervaire/Route",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q06-e1-fullscope.txt",
              "record_id": "q06-e1-fullscope",
              "utc": "2026-10-04T15:15:36.382047+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "[Ss]trong.*[Cc]onver|[Cc]ompletionWitness|IsAdamsTowerStronglyConvergent|HomotopySeparated|TowerConvergence",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q07-convergence-fullscope.txt",
              "record_id": "q07-convergence-fullscope",
              "utc": "2026-10-04T15:15:36.406261+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "SymmetricCategory Syn|BraidedCategory Syn|ClosedSymmetricTensorTriangulated|lam.*=|= .*lam",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q08-symmetry.txt",
              "record_id": "q08-symmetry",
              "utc": "2026-10-04T15:15:36.426413+00:00"
            }
          ],
          "search_record": "formal/search-T01a-round1.json",
          "search_record_sha256": "29f85fa786d44e391a26a4de40e83e798175332e58d3dbfdaaa46f8d1604f363",
          "semantic_status": "not_passed",
          "verdict": "not_passed"
        }
      ],
      "semantic_status": "incomplete",
      "short_reason": "已匹配E₂各非负参数幂的分量、权重范围和λ作用；缺少E₁自由多项式比较、d₁线性延拓及与塔逐层余纤维相容的声明。",
      "source_statement": "BHS Theorem A.8(1)(2)：$E_1^{s,k,v}\\cong E_1^{s,k}\\otimes\\mathbb Z[\\tau]$ 及 $E_2$ 同式，经典类放在 $(s,k,s)$；这是从合成 Adams 塔构造得到。$\\tau$ 降低 $v$ 一次，该同构识别 $d_1$ 和 $\\tau$ 线性结构。",
      "sources": [
        {
          "kind": "primary_source",
          "locator": "行4135–4152，Theorem A.8(1)(2)及证明",
          "path": "Source/BHS/paper.txt"
        },
        {
          "kind": "primary_source",
          "locator": "行15–84，合成Adams塔构造和thm:synth-ASS",
          "path": "Source/BHS/source/SynRevAdams.tex"
        },
        {
          "kind": "primary_source",
          "locator": "行799–810，本文三次数翻译",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "取 $E=H\\mathbb F_2$、$X=S^0_2{}^\\wedge$；经典第一页是 $\\mathbb F_2$ 向量空间，故可写为 $\\mathbb F_2[\\lambda]$ 延拓。换元 $k=t-s$、$v=w-k$，把经典 $v=s$ 变成 $w=t$。有限商 $E_1,E_2$ 公式由正文的单射和余纤维长正合列推导。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "计算有限商E₂和两个余纤维图的映射作用",
          "quote": "合成 Adams 塔的第一页是经典 Adams 第一页的自由 $\\mathbb F_2[\\lambda]$ 延拓，其中经典元素的合成权重为 $t$；乘以 $\\lambda$ 保持 Adams 过滤，权重减一。第二页有相同的多项式延拓描述。",
          "source": "math/T01a-v1.md"
        }
      ],
      "used_statement": "对 $H\\mathbb F_2$ 与球谱，合成 Adams 谱序列的 $E_1$ 页是经典 Adams $E_1$ 页张量 $\\mathbb F_2[\\lambda]$，经典 $(s,t)$ 元素放在合成 $(s,t,t)$，$\\lambda$ 的三次数为 $(0,0,-1)$，$d_1$ 为经典 $d_1$ 的 $\\lambda$ 线性延拓，$E_2$ 亦为经典 $E_2$ 张量 $\\mathbb F_2[\\lambda]$。该识别来自合成 Adams 塔，与参数幂作用和逐层余纤维相容。",
      "uses": [
        {
          "chapter_id": "quotients",
          "occurrence": 1,
          "part_id": "T01a",
          "title": "有限 $\\lambda$ 商的过滤"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "ac4307f7b1833ff1227e51cecf158c46a493323305afdcbe3e9ed737a8374060",
      "category": "literature",
      "checked_version": "v1",
      "formal_status": {
        "adapter_axioms_observed": [
          "propext",
          "Classical.choice",
          "Quot.sound"
        ],
        "axioms_observed": [
          "propext",
          "sorryAx",
          "Classical.choice",
          "Quot.sound"
        ],
        "classifications": [
          "interface_assumption",
          "contains_sorry_in_existence_producer",
          "depends_on_unfinished_fixed_foundation"
        ],
        "source_direct_sorry": [
          "KIP126.Interface.Solution.Literature.Route.source_background_exists",
          "KIP126.Def.Solution.implementation_exists"
        ],
        "summary": "finite是对已有P字段分q=1/q≥2的已证明适配，导入产物只依赖基础公理；P及相关模型存在性仍是含sorry的文献接口producer，不是E∞公式已无条件证明。"
      },
      "full_reason": "SyntheticEInftyPresentation.finite对q=1使用specialFiber，对q≥2使用quotient，因此没有把正参数范围漏成q≥2。取X为同一固定经典SphereSpectrum、p=(s,t)后，finiteEInftyModel在0≤t−w\u003cq时就是CycleQuotient H X (q−t+w) (1+t−w) p，窗外是PUnit零模块。cycles/boundaries定义为同一实际经典E₂的子模，带(level−1)索引换算；在此窗内两个下标≥1，未触发负数toNat截断。NestedQuotient.Space是Z除以B在Z中的逆像；boundaries_le_cycles表明本处确为Z/B而非一个未证明包含的商。接口存在性来自source_background_exists→同一LiteratureInterface.route.synthetic.eInfty.presentation；family另由该同一model.towerPresentation绑定实际νHF₂塔。finite初始对象为νS⁰/λ^q：N.unitIso识别νS⁰和S^(0,0)，lam自然性及lambdaPow使其q次幂方块交换，D.quotientFunctoriality.map_id/map_comp令XModLambdaN.map的同构正逆相容，再由同一F.functor传到谱序列，因此是所需Q_q。此通过是在仓库采用的显式合成语境中核定该外部公式作为接口命题；不额外宣称EXT004所要求的典范λ构造已完成，不以本项反证或修复那项缺口。该命题不要求完备或Hausdorff；本项也不从E∞公式推出它们。",
      "id": "EXT-006",
      "name": "有限参数商的合成 Adams 极限页",
      "next_search": [],
      "rounds": [
        {
          "candidates": [
            {
              "actual_print_axioms": [
                "propext",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "finite-EInfinity",
              "checker_current_source_sha256_verified": true,
              "checker_result": null,
              "compiled_inspection": "formal/evidence-search/t01a/lean-inspect.txt",
              "complete_source_snapshot": "formal/evidence-search/t01a/sources/KIP126/Def/Synthetic/EInfty/Presentation/Data.lean",
              "end_line": 46,
              "file_sha256": "a99431fe54d8a56e334f038a1bb6755617f33021ffef3ed3e97c9f6072d25b67",
              "fqn": "KIP126.Synthetic.SpectralSequence.SyntheticEInftyPresentation.finite",
              "full_type": "∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] {Syn : Type w} [SyntheticCategory.{w,v} Syn] [HasFunctorialCofiber (C := Syn)] {H : Mod2EilenbergMacLane (C := C)} {N : NuFunctorData C Syn} {F : SyntheticAdamsFamily Syn}, (P : SyntheticEInftyPresentation H N F) → (X : C) → (q : ℕ) → (hq : 0 \u003c q) → (p : ℤ × ℤ) → (w : ℤ) → ((F.nuQuotient N X q).sequence.ssData (p.1,p.2,w)).eInfty ≃ₗ[ℤ] finiteEInftyModel H X q p w",
              "implicit_context": [
                "universe u v w",
                "{C : Type u}",
                "[StableHomotopyCategory.{u,v} C]",
                "[HasFunctorialCofiber (C := C)]",
                "{Syn : Type w}",
                "[SyntheticCategory.{w,v} Syn]",
                "[HasFunctorialCofiber (C := Syn)]",
                "H : Mod2EilenbergMacLane (C := C)",
                "M : MilnorCooperations H",
                "N : NuFunctorData C Syn",
                "F : SyntheticAdamsFamily Syn",
                "D : KIP126.Kervaire.Route.Model H M Syn"
              ],
              "imports": [
                "KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Window.Data",
                "KIP126.Def.Synthetic.EInfty.Shift.Data"
              ],
              "key_definitions": [
                "finite-presentation",
                "finite-formula",
                "finite-model",
                "cycle-quotient",
                "cycles",
                "boundaries",
                "nu-quotient"
              ],
              "kind": "definition",
              "line": 39,
              "open_context": [
                "CategoryTheory",
                "KIP126.Classical.Adams",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Synthetic.Context",
                "KIP126.Synthetic.SpectralSequence",
                "KIP126.Classical.Adams.PageRepresentatives",
                "KIP126.Kervaire.Route",
                "KIP126.Literature.Route"
              ],
              "path": "KIP126/Def/Synthetic/EInfty/Presentation/Data.lean",
              "preliminary_semantic_reading": "精确合并 q≥2 的 quotient 字段与 q=1 的 specialFiber 字段；finiteEInftyModel 展开给 0≤t−w\u003cq 的 Z_(q−t+w)/B_(1+t−w)，其余严格零模块。仅 E∞，无自动强收敛。",
              "proof_status_observation": "条件定义使用输入P；实际 #print axioms 含 sorryAx，不能把此定义视为无未完成依赖的完整证明。",
              "source_declaration": "noncomputable def finite (P : SyntheticEInftyPresentation H N F)\n    (X : C) (q : ℕ) (hq : 0 \u003c q) (p : ℤ × ℤ) (w : ℤ) :\n    ((F.nuQuotient N X q).sequence.ssData (p.1, p.2, w)).eInfty ≃ₗ[ℤ]\n      finiteEInftyModel H X q p w := by\n  by_cases hq1 : q = 1\n  · subst q\n    exact P.specialFiber X p w\n  · exact P.quotient X q (by omega) p w"
            },
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "source-background",
              "checker_current_source_sha256_verified": true,
              "checker_result": null,
              "compiled_inspection": "formal/evidence-search/t01a/lean-inspect.txt",
              "complete_source_snapshot": "formal/evidence-search/t01a/sources/KIP126/Interface/Solution/Literature/Route/SourceExistence.lean",
              "end_line": 41,
              "file_sha256": "8b3af8d180dab78088d52cb80fdde0e406560785287924c9ed3ca7d5189d02be",
              "fqn": "KIP126.Interface.Solution.Literature.Route.source_background_exists",
              "full_type": "∃ route : KIP126.Classical.Adams.StandardRouteInput, ∃ bindings : KIP126.Challenge2.ModelBindings route, Nonempty (KIP126.Challenge2.LiteratureInterface route bindings)",
              "implicit_context": [],
              "imports": [
                "KIP126.Interface.Challenge.Challenge2"
              ],
              "key_definitions": [
                "route-input",
                "model-data",
                "model",
                "bindings",
                "algebra-data",
                "source-statements"
              ],
              "kind": "theorem",
              "line": 37,
              "open_context": [
                "CategoryTheory",
                "KIP126.Classical.Adams",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Synthetic.Context",
                "KIP126.Synthetic.SpectralSequence",
                "KIP126.Classical.Adams.PageRepresentatives",
                "KIP126.Kervaire.Route",
                "KIP126.Literature.Route"
              ],
              "path": "KIP126/Interface/Solution/Literature/Route/SourceExistence.lean",
              "preliminary_semantic_reading": "存在性包把同一 synthetic category、ν、λ、合成族和 source inputs 一起交付；须逐字段核查所固定外部命题是否全在包中，不能从注释声称的 Pstrągowski construction 自动推出额外公式。",
              "proof_status_observation": "源码直接 sorry；并非既成实现。",
              "source_declaration": "theorem source_background_exists :\n    ∃ route : Classical.Adams.StandardRouteInput,\n      ∃ bindings : KIP126.Challenge2.ModelBindings route,\n        Nonempty (KIP126.Challenge2.LiteratureInterface route bindings) := by\n  sorry"
            }
          ],
          "next_search": [],
          "reason": "同一合成模型的有限商E∞接口涵盖全部q≥1，并准确给出支持窗内的两个下标及窗外零值；它只陈述极限页公式，不混入强收敛。",
          "round": 1,
          "search_queries": [
            {
              "argv": [
                "rg",
                "-n",
                "SyntheticCategory|NuFunctor|LambdaComparison|lambdaComparison|canonicalLambda|lambda.*(susp|comparison)|sphere.*formula|bigradedSphere",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q01-synthetic-foundation.txt",
              "record_id": "q01-synthetic-foundation",
              "utc": "2026-10-04T15:14:46.771579+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "[Pp]olynomial|free.*lambda|lambda.*free|FirstPage|firstPage|e1Iso|E1Iso|E2Iso|e2Iso|synth.*ASS",
                "KIP126/Def/Comparison",
                "KIP126/Def/Synthetic",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q02-polynomial-pages.txt",
              "record_id": "q02-polynomial-pages",
              "utc": "2026-10-04T15:14:46.793370+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "SyntheticEInfty|Quotient.*EInfty|quotient.*[Ee]Infty|Finite.*[Ee]Infty|EInfty.*Finite|BHS.*[Ff]inite",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q03-einfty.txt",
              "record_id": "q03-einfty",
              "utc": "2026-10-04T15:14:46.823831+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "nilpotent_complete|IsENilpotentComplete|StronglyConvergent|strongly_convergent|[Ff]inite.*[Cc]onver|[Qq]uotient.*[Cc]onver|Hausdorff|Separated",
                "KIP126/Def/Synthetic",
                "KIP126/Def/ClassicalAdams/Completion",
                "KIP126/Interface",
                "KIP126/Def/Kervaire/Route"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q04-completion.txt",
              "record_id": "q04-completion",
              "utc": "2026-10-04T15:14:46.846945+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "lam|lambda|suspension",
                "KIP126/Def/Synthetic/Context",
                "KIP126/Def/Synthetic/Sphere",
                "KIP126/Def/StableHomotopy/Implementation/Data.lean",
                "KIP126/Def/Kervaire/Route/Model"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q05-canonical-lambda.txt",
              "record_id": "q05-canonical-lambda",
              "utc": "2026-10-04T15:15:36.367150+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "Polynomial|Finsupp|free.*lambda|lambda.*free|E₁|E1|first.page|firstPage|d₁",
                "KIP126/Def/Synthetic",
                "KIP126/Def/Comparison",
                "KIP126/Def/Kervaire/Route",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q06-e1-fullscope.txt",
              "record_id": "q06-e1-fullscope",
              "utc": "2026-10-04T15:15:36.382047+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "[Ss]trong.*[Cc]onver|[Cc]ompletionWitness|IsAdamsTowerStronglyConvergent|HomotopySeparated|TowerConvergence",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q07-convergence-fullscope.txt",
              "record_id": "q07-convergence-fullscope",
              "utc": "2026-10-04T15:15:36.406261+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "SymmetricCategory Syn|BraidedCategory Syn|ClosedSymmetricTensorTriangulated|lam.*=|= .*lam",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q08-symmetry.txt",
              "record_id": "q08-symmetry",
              "utc": "2026-10-04T15:15:36.426413+00:00"
            }
          ],
          "search_record": "formal/search-T01a-round1.json",
          "search_record_sha256": "29f85fa786d44e391a26a4de40e83e798175332e58d3dbfdaaa46f8d1604f363",
          "semantic_status": "passed",
          "verdict": "passed"
        }
      ],
      "semantic_status": "passed",
      "short_reason": "同一合成模型的有限商E∞接口涵盖全部q≥1，并准确给出支持窗内的两个下标及窗外零值；它只陈述极限页公式，不混入强收敛。",
      "source_statement": "BHS Corollary A.11 给 Adams 型 $E$ 与经典谱 $X$ 的 $C\\tau^q\\otimes\\nu X$：在 $(s,k,v)$ 次数，$s\\ge v\u003es-q$ 时，${}^qE_\\infty^{s,k,v}\\cong Z_{q-s+v}^{s,k}/B_{s-v+1}^{s,k}$；$v\u003es$ 或 $v\\le s-q$ 时各页为零。公式由合成 Adams 塔得到并是自然同构。",
      "sources": [
        {
          "kind": "primary_source",
          "locator": "行4184–4201，Corollary A.11及其证明",
          "path": "Source/BHS/paper.txt"
        },
        {
          "kind": "primary_source",
          "locator": "行122–132，cor:synth-ctau-ASS",
          "path": "Source/BHS/source/SynRevAdams.tex"
        },
        {
          "kind": "primary_source",
          "locator": "行849–879，有限商极限页公式及映射",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "取 $E=H\\mathbb F_2$、$X=S^0_2{}^\\wedge$，$\\tau=\\lambda$，$k=t-s$，$v=w-k$，所以 $s-v=t-w$。固定同伦双次数 $(n,w)$ 时取 $k=n,t=n+s$。正文逐项推导支持范围和下标。",
      "status": "passed",
      "use_sites": [
        {
          "purpose": "取得准确极限页公式；正文自行完成次数翻译与映射计算",
          "quote": "Burklund–Hahn–Senger 对有限商的计算给出：在他们的次数约定下，当 $s\\ge v\u003es-q$ 时，极限页为",
          "source": "math/T01a-v1.md"
        }
      ],
      "used_statement": "对每个 $q\\ge1$，$Q_q=S^{0,0}/\\lambda^q$ 的合成 Adams 极限页满足：若 $0\\le t-w\u003cq$，则 $E_\\infty^{s,t,w}(Q_q)\\cong Z_{q-t+w}^{s,t}/B_{1+t-w}^{s,t}$；否则为零。此处仅为极限页公式，关联分次识别另依赖强收敛。",
      "uses": [
        {
          "chapter_id": "quotients",
          "occurrence": 1,
          "part_id": "T01a",
          "title": "有限 $\\lambda$ 商的过滤"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "ac4307f7b1833ff1227e51cecf158c46a493323305afdcbe3e9ed737a8374060",
      "category": "literature",
      "checked_version": "v1",
      "formal_status": {
        "axioms_observed": [
          "propext",
          "sorryAx",
          "Classical.choice",
          "Quot.sound"
        ],
        "classifications": [
          "interface_assumption",
          "contains_sorry_in_existence_producer",
          "depends_on_unfinished_fixed_foundation"
        ],
        "source_direct_sorry": [
          "KIP126.Interface.Solution.standardSphereApplicability",
          "KIP126.Def.Solution.implementation_exists"
        ],
        "summary": "standardSphereApplicability本体含sorry，nilpotent_complete是该明确命题的接口投影；已导入打印含sorryAx。"
      },
      "full_reason": "standardSphereApplicability无额外实质性假设，结论以fixedImplementation.foundationInput的countableProducts、hf2.unit与SphereSpectrum为参数。投影nilpotent_complete并展开IsENilpotentComplete得到(adamsResidualSequence unit X).IsAcyclic；该inverse sequence逐层就是实际adamsTower及adamsTowerStep。IsAcyclic展开为实际Milnor 1−shift映射为同构，表示残余塔同伦极限为零，这是Adams分辨恢复原X的幂零完成语义，而不是仅一个关联分次等式。固定源完成球的SourceComparison以及完成球的Moore反射陈述已在EXT001对应中逐项确认。used_statement只用这个2完成球，不要求仓库覆盖所有有下界p完成谱；源码已有直接球专门化，故不要求重做来源定理所有一般性。producer含sorry、基础构造未完成与本项语义通过分开记录。",
      "id": "EXT-007",
      "name": "有下界的2完成球谱满足 Adams 幂零完成条件",
      "next_search": [],
      "rounds": [
        {
          "candidates": [
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "sphere-applicability",
              "checker_current_source_sha256_verified": true,
              "checker_result": null,
              "compiled_inspection": "formal/evidence-search/t01a/lean-inspect.txt",
              "complete_source_snapshot": "formal/evidence-search/t01a/sources/KIP126/Interface/Solution/Foundation.lean",
              "end_line": 14,
              "file_sha256": "7b6e7038b1b2dbebebbeac966548ef21548a01060b92f942bf0c64a001b3f153",
              "fqn": "KIP126.Interface.Solution.standardSphereApplicability",
              "full_type": "KIP126.Classical.Adams.BHSObjectApplicability KIP126.Def.fixedImplementation.foundationInput.countableProducts KIP126.Def.fixedImplementation.foundationInput.hf2.unit (KIP126.StableHomotopy.SphereSpectrum (C := KIP126.Def.fixedImplementation.foundationInput.Spectrum))",
              "implicit_context": [],
              "imports": [
                "KIP126.Interface.Challenge.Challenge2"
              ],
              "key_definitions": [
                "bhs-applicability",
                "nilpotent-complete",
                "residual-tower",
                "acyclic",
                "source-comparison",
                "two-complete-sphere"
              ],
              "kind": "theorem",
              "line": 9,
              "open_context": [
                "CategoryTheory",
                "KIP126.Classical.Adams",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Synthetic.Context",
                "KIP126.Synthetic.SpectralSequence",
                "KIP126.Classical.Adams.PageRepresentatives",
                "KIP126.Kervaire.Route",
                "KIP126.Literature.Route"
              ],
              "path": "KIP126/Interface/Solution/Foundation.lean",
              "preliminary_semantic_reading": "同一 fixed sphere 的 BHSObjectApplicability 包含 nilpotent_complete，展开为实际残余 Adams 塔同伦极限消失；不是只给谱序列关联分次。",
              "proof_status_observation": "源码直接 sorry；与T00同一候选，现用于不同固定命题 EXT-007。",
              "source_declaration": "theorem standardSphereApplicability : Classical.Adams.BHSObjectApplicability\n    KIP126.Def.fixedImplementation.foundationInput.countableProducts\n    KIP126.Def.fixedImplementation.foundationInput.hf2.unit\n    (StableHomotopy.SphereSpectrum\n      (C := KIP126.Def.fixedImplementation.foundationInput.Spectrum)) := by\n  sorry"
            },
            {
              "actual_print_axioms": null,
              "candidate_id": "nilpotent-field",
              "checker_current_source_sha256_verified": true,
              "checker_result": null,
              "compiled_inspection": "formal/evidence-search/t01a/lean-inspect.txt",
              "complete_source_snapshot": "formal/evidence-search/t01a/sources/KIP126/Def/ClassicalAdams/Convergence/BHS/Predicates.lean",
              "end_line": 23,
              "file_sha256": "8727806cda96176c5a3723984f434583df184fd782f4295ff3d5ea248aa9735f",
              "fqn": "KIP126.Classical.Adams.BHSObjectApplicability.nilpotent_complete",
              "full_type": "∀ {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)] {H : C} {products : CategoryTheory.Limits.HasProductsOfShape ℕ C} {unit : 𝟙_ C ⟶ H} {X : C}, BHSObjectApplicability products unit X → (letI := products; IsENilpotentComplete unit X)",
              "implicit_context": [
                "universe u v w",
                "{C : Type u}",
                "[StableHomotopyCategory.{u,v} C]",
                "[HasFunctorialCofiber (C := C)]",
                "{Syn : Type w}",
                "[SyntheticCategory.{w,v} Syn]",
                "[HasFunctorialCofiber (C := Syn)]",
                "H : Mod2EilenbergMacLane (C := C)",
                "M : MilnorCooperations H",
                "N : NuFunctorData C Syn",
                "F : SyntheticAdamsFamily Syn",
                "D : KIP126.Kervaire.Route.Model H M Syn"
              ],
              "imports": [
                "KIP126.Def.ClassicalAdams.Completion.Predicates",
                "KIP126.Def.ClassicalAdams.Convergence.Tower.Predicates"
              ],
              "key_definitions": [
                "bhs-applicability",
                "nilpotent-complete",
                "residual-tower",
                "acyclic"
              ],
              "kind": "structure_field",
              "line": 23,
              "open_context": [
                "CategoryTheory",
                "KIP126.Classical.Adams",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Synthetic.Context",
                "KIP126.Synthetic.SpectralSequence",
                "KIP126.Classical.Adams.PageRepresentatives",
                "KIP126.Kervaire.Route",
                "KIP126.Literature.Route"
              ],
              "path": "KIP126/Def/ClassicalAdams/Convergence/BHS/Predicates.lean",
              "preliminary_semantic_reading": "只需把 standardSphereApplicability 投到此字段，保留同一 products、unit 和 sphere；字段本身不是无需前提的定理。",
              "proof_status_observation": "接口输入；不把投影当成实现。",
              "source_declaration": "  nilpotent_complete : letI := products; IsENilpotentComplete unit X"
            }
          ],
          "next_search": [],
          "reason": "固定完成球的BHS适用性命题含所需幂零完成字段；展开后是同一HF₂单位的残余Adams塔同伦极限消失，恰对应分辨收敛到球本身。",
          "round": 1,
          "search_queries": [
            {
              "argv": [
                "rg",
                "-n",
                "SyntheticCategory|NuFunctor|LambdaComparison|lambdaComparison|canonicalLambda|lambda.*(susp|comparison)|sphere.*formula|bigradedSphere",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q01-synthetic-foundation.txt",
              "record_id": "q01-synthetic-foundation",
              "utc": "2026-10-04T15:14:46.771579+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "[Pp]olynomial|free.*lambda|lambda.*free|FirstPage|firstPage|e1Iso|E1Iso|E2Iso|e2Iso|synth.*ASS",
                "KIP126/Def/Comparison",
                "KIP126/Def/Synthetic",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q02-polynomial-pages.txt",
              "record_id": "q02-polynomial-pages",
              "utc": "2026-10-04T15:14:46.793370+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "SyntheticEInfty|Quotient.*EInfty|quotient.*[Ee]Infty|Finite.*[Ee]Infty|EInfty.*Finite|BHS.*[Ff]inite",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q03-einfty.txt",
              "record_id": "q03-einfty",
              "utc": "2026-10-04T15:14:46.823831+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "nilpotent_complete|IsENilpotentComplete|StronglyConvergent|strongly_convergent|[Ff]inite.*[Cc]onver|[Qq]uotient.*[Cc]onver|Hausdorff|Separated",
                "KIP126/Def/Synthetic",
                "KIP126/Def/ClassicalAdams/Completion",
                "KIP126/Interface",
                "KIP126/Def/Kervaire/Route"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q04-completion.txt",
              "record_id": "q04-completion",
              "utc": "2026-10-04T15:14:46.846945+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "lam|lambda|suspension",
                "KIP126/Def/Synthetic/Context",
                "KIP126/Def/Synthetic/Sphere",
                "KIP126/Def/StableHomotopy/Implementation/Data.lean",
                "KIP126/Def/Kervaire/Route/Model"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q05-canonical-lambda.txt",
              "record_id": "q05-canonical-lambda",
              "utc": "2026-10-04T15:15:36.367150+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "Polynomial|Finsupp|free.*lambda|lambda.*free|E₁|E1|first.page|firstPage|d₁",
                "KIP126/Def/Synthetic",
                "KIP126/Def/Comparison",
                "KIP126/Def/Kervaire/Route",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q06-e1-fullscope.txt",
              "record_id": "q06-e1-fullscope",
              "utc": "2026-10-04T15:15:36.382047+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "[Ss]trong.*[Cc]onver|[Cc]ompletionWitness|IsAdamsTowerStronglyConvergent|HomotopySeparated|TowerConvergence",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q07-convergence-fullscope.txt",
              "record_id": "q07-convergence-fullscope",
              "utc": "2026-10-04T15:15:36.406261+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "SymmetricCategory Syn|BraidedCategory Syn|ClosedSymmetricTensorTriangulated|lam.*=|= .*lam",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q08-symmetry.txt",
              "record_id": "q08-symmetry",
              "utc": "2026-10-04T15:15:36.426413+00:00"
            }
          ],
          "search_record": "formal/search-T01a-round1.json",
          "search_record_sha256": "29f85fa786d44e391a26a4de40e83e798175332e58d3dbfdaaa46f8d1604f363",
          "semantic_status": "passed",
          "verdict": "passed"
        }
      ],
      "semantic_status": "passed",
      "short_reason": "固定完成球的BHS适用性命题含所需幂零完成字段；展开后是同一HF₂单位的残余Adams塔同伦极限消失，恰对应分辨收敛到球本身。",
      "source_statement": "任意有下界的 $p$ 完成谱都是 $H\\mathbb F_p$ 幂零完成的。BHS Definition 9.16 后的例子引用 Bousfield Theorem 6.6。",
      "sources": [
        {
          "kind": "primary_source",
          "locator": "dfn:E-complete后的第二个例子，引用BousfieldLocalization Theorem6.6",
          "path": "Source/BHS/source/SynRevBigraded.tex"
        },
        {
          "kind": "primary_source",
          "locator": "行1929起，Definition 9.16后：Any bounded below, p-complete spectrum X is HFp-nilpotent complete",
          "path": "Source/BHS/paper.txt"
        }
      ],
      "specialization": "取 $p=2$ 且 $X=S^0_2{}^\\wedge$。球谱连通，因此有下界，并且按定义已经 $2$ 完成，满足该结果的两个条件。",
      "status": "passed",
      "use_sites": [
        {
          "purpose": "核实有限商强收敛结果的幂零完成假设",
          "quote": "$2$ 完成球谱有下界，因而是 $H\\mathbb F_2$-幂零完成的谱；这表示它的模 $2$ Adams 分辨收敛到它自身。",
          "source": "math/T01a-v1.md"
        }
      ],
      "used_statement": "$2$ 完成球谱 $S^0$ 是 $H\\mathbb F_2$ 幂零完成的，即它的模 $2$ Adams 分辨收敛到 $S^0$。",
      "uses": [
        {
          "chapter_id": "quotients",
          "occurrence": 1,
          "part_id": "T01a",
          "title": "有限 $\\lambda$ 商的过滤"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "ac4307f7b1833ff1227e51cecf158c46a493323305afdcbe3e9ed737a8374060",
      "category": "literature",
      "checked_version": "v1",
      "formal_status": {
        "axioms_observed": [
          "propext",
          "sorryAx",
          "Classical.choice",
          "Quot.sound"
        ],
        "classifications": [
          "interface_assumption",
          "contains_sorry_in_existence_producer",
          "depends_on_unfinished_fixed_foundation"
        ],
        "source_direct_sorry": [
          "KIP126.Interface.Solution.Literature.Route.source_background_exists",
          "KIP126.Def.Solution.implementation_exists"
        ],
        "summary": "对应内容主要为明确接口输入；source_background_exists的证明体含sorry，固定基础构造也未完成。字段存在不等于接口已经实现。"
      },
      "full_reason": "先区分范围：本条used_statement本身写出“对HF₂幂零完成且经典Adams强收敛的谱X，每个有限参数商……强收敛”，末句再说明本文用球；specialization也是球。因此一般X并非从source_statement额外强加的范围，也不能仅因实际应用在球就无记录地删掉固定命题首句。另一方面，本轮明确单独检查球实例，不把范围差异说成球结论不成立。ModelData.convergence和Model.homotopySeparated量化SyntheticObject；该语法包括sphere、ν(ClassicalObject)、任意双移位和所有λ商，因此确实包含球的全部q≥1有限商。TowerConvergence展开只含真实towerFiltration的E∞≅gr，homotopySeparated另给同一过滤的Hausdorff性，convergence_natural和convergence_canonical固定自然性及实际代表。就球实例而言，结合EXT006的有限窗可说明完整性：固定同伦次数(m,w)，在s≥w+q−m时E∞(s,m+s,w)=0，故F^s/F^(s+1)=0，尾端过滤相等；若N为不小于该界的自然数，F^N中元素属于所有F^s，分离性迫使其为零，故该次数的过滤最终为零，商逆系统最终恒等于同伦群，因而其典范完成映射为同构。这个语义推导没有声称TowerConvergence字段自身包含complete，也没有从有限E∞支撑单独推断分离性。仍未覆盖的是一般X：ClassicalObject只有sphere、nuCofiber、detector及其移位，不能把任意满足BHSObjectApplicability的X编码进去；已提交候选没有由该条件推出νX/λ^q的TowerConvergence/Hausdorff的全X声明。由于固定记录保留这一般条件句，本轮判部分覆盖、未完成，反馈只请求这一准确条件链，不要求所有synthetic对象、任意E或不满足前提的X。",
      "id": "EXT-008",
      "name": "有限参数商的合成 Adams 强收敛",
      "next_search": [
        {
          "required_evidence": "范围正是固定used_statement的一般条件句；须在同一N/F/lam中提供gr识别和Hausdorff，并给完整性或由有限公式+分离性到最终零过滤的现有链。不要扩大为所有synthetic谱或不满足前提的X。",
          "target": "BHSObjectApplicability products H.unit X推出每个q≥1的νX/λ^q实际Adams过滤强收敛的一般X声明"
        },
        {
          "required_evidence": "不能仅重复SelectedObject闭包字段；说明球实例已覆盖和一般条件句未覆盖的差别，不改固定记录。",
          "target": "若存在替代模型接口接受任意经典X且与同一route族一致，提交其比较"
        }
      ],
      "rounds": [
        {
          "candidates": [
            {
              "actual_print_axioms": null,
              "candidate_id": "route-convergence",
              "checker_current_source_sha256_verified": true,
              "checker_result": null,
              "compiled_inspection": "formal/evidence-search/t01a/lean-inspect.txt",
              "complete_source_snapshot": "formal/evidence-search/t01a/sources/KIP126/Def/Kervaire/Route/Model/Data.lean",
              "end_line": 58,
              "file_sha256": "13cbf96f0bb5d183d471887929bbda829c8e5d8dfc95ae8880821f9fecce4b77",
              "fqn": "KIP126.Kervaire.Route.ModelData.convergence",
              "full_type": "(D : KIP126.Kervaire.Route.ModelData H Syn) → ∀ X : SyntheticObject, TowerConvergence (nuCoefficientUnit H.unit D.nu) D.family (X.obj D.nu D.auxiliary)",
              "implicit_context": [
                "universe u v w",
                "{C : Type u}",
                "[StableHomotopyCategory.{u,v} C]",
                "[HasFunctorialCofiber (C := C)]",
                "{Syn : Type w}",
                "[SyntheticCategory.{w,v} Syn]",
                "[HasFunctorialCofiber (C := Syn)]",
                "H : Mod2EilenbergMacLane (C := C)",
                "M : MilnorCooperations H",
                "N : NuFunctorData C Syn",
                "F : SyntheticAdamsFamily Syn",
                "D : KIP126.Kervaire.Route.Model H M Syn"
              ],
              "imports": [
                "KIP126.Def.Kervaire.Route.Labels.Data",
                "KIP126.Def.Kervaire.Route.Objects.Data",
                "KIP126.Def.ClassicalAdams.Detection.Convergence.Data",
                "KIP126.Def.Synthetic.Detection.Predicates",
                "KIP126.Def.Synthetic.AdamsSequence.Maps.Data",
                "KIP126.Def.Synthetic.Sphere.Actions.Data",
                "KIP126.Def.Synthetic.Context.Coherence.Predicates",
                "KIP126.Def.Synthetic.Localization.Recovery.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Data",
                "KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Restricted.Data",
                "KIP126.Def.Synthetic.QuotientTower.Predicates",
                "KIP126.Def.Synthetic.NormalizedMap.Data",
                "KIP126.Def.ClassicalAdams.Suspension.Predicates",
                "Mathlib.CategoryTheory.Triangulated.Triangulated"
              ],
              "key_definitions": [
                "model-data",
                "tower-convergence",
                "tower-filtration",
                "nu-quotient"
              ],
              "kind": "structure_field",
              "line": 57,
              "open_context": [
                "CategoryTheory",
                "KIP126.Classical.Adams",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Synthetic.Context",
                "KIP126.Synthetic.SpectralSequence",
                "KIP126.Classical.Adams.PageRepresentatives",
                "KIP126.Kervaire.Route",
                "KIP126.Literature.Route"
              ],
              "path": "KIP126/Def/Kervaire/Route/Model/Data.lean",
              "preliminary_semantic_reading": "所选对象闭包（含球及所有有限 λ 商）有实际 towerFiltration 的 E∞/关联分次同构。TowerConvergence 只含 identification，不含过滤完备性。",
              "proof_status_observation": "接口输入；不把投影当成实现。",
              "source_declaration": "  convergence : ∀ X : SyntheticObject,\n    TowerConvergence (nuCoefficientUnit H.unit nu) family (X.obj nu auxiliary)"
            },
            {
              "actual_print_axioms": null,
              "candidate_id": "route-separated",
              "checker_current_source_sha256_verified": true,
              "checker_result": null,
              "compiled_inspection": "formal/evidence-search/t01a/lean-inspect.txt",
              "complete_source_snapshot": "formal/evidence-search/t01a/sources/KIP126/Def/Kervaire/Route/Model/Coherent/Data.lean",
              "end_line": 25,
              "file_sha256": "4f6141b53b5e53017dde414146a912158d6784b1b11d42086b334e8e3b3829a7",
              "fqn": "KIP126.Kervaire.Route.Model.homotopySeparated",
              "full_type": "(D : KIP126.Kervaire.Route.Model H M Syn) → KIP126.Kervaire.Route.HomotopySeparated D.toModelData",
              "implicit_context": [
                "universe u v w",
                "{C : Type u}",
                "[StableHomotopyCategory.{u,v} C]",
                "[HasFunctorialCofiber (C := C)]",
                "{Syn : Type w}",
                "[SyntheticCategory.{w,v} Syn]",
                "[HasFunctorialCofiber (C := Syn)]",
                "H : Mod2EilenbergMacLane (C := C)",
                "M : MilnorCooperations H",
                "N : NuFunctorData C Syn",
                "F : SyntheticAdamsFamily Syn",
                "D : KIP126.Kervaire.Route.Model H M Syn"
              ],
              "imports": [
                "KIP126.Def.Synthetic.AdamsFiltration.Convergence.Canonical.Predicates",
                "KIP126.Def.Kervaire.Route.Model.Predicates"
              ],
              "key_definitions": [
                "model",
                "model-data",
                "separated",
                "tower-filtration"
              ],
              "kind": "structure_field",
              "line": 25,
              "open_context": [
                "CategoryTheory",
                "KIP126.Classical.Adams",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Synthetic.Context",
                "KIP126.Synthetic.SpectralSequence",
                "KIP126.Classical.Adams.PageRepresentatives",
                "KIP126.Kervaire.Route",
                "KIP126.Literature.Route"
              ],
              "path": "KIP126/Def/Kervaire/Route/Model/Coherent/Data.lean",
              "preliminary_semantic_reading": "另一个字段提供所选对象双分次同伦过滤的 Hausdorff 性；须与同一 ModelData.convergence 配套。固定命题还要求完整性及任意符合条件的 X，这两个字段没有直接给出。",
              "proof_status_observation": "接口输入；不把投影当成实现。",
              "source_declaration": "  homotopySeparated : HomotopySeparated toModelData"
            },
            {
              "actual_print_axioms": [
                "propext",
                "sorryAx",
                "Classical.choice",
                "Quot.sound"
              ],
              "candidate_id": "source-background",
              "checker_current_source_sha256_verified": true,
              "checker_result": null,
              "compiled_inspection": "formal/evidence-search/t01a/lean-inspect.txt",
              "complete_source_snapshot": "formal/evidence-search/t01a/sources/KIP126/Interface/Solution/Literature/Route/SourceExistence.lean",
              "end_line": 41,
              "file_sha256": "8b3af8d180dab78088d52cb80fdde0e406560785287924c9ed3ca7d5189d02be",
              "fqn": "KIP126.Interface.Solution.Literature.Route.source_background_exists",
              "full_type": "∃ route : KIP126.Classical.Adams.StandardRouteInput, ∃ bindings : KIP126.Challenge2.ModelBindings route, Nonempty (KIP126.Challenge2.LiteratureInterface route bindings)",
              "implicit_context": [],
              "imports": [
                "KIP126.Interface.Challenge.Challenge2"
              ],
              "key_definitions": [
                "route-input",
                "model-data",
                "model",
                "bindings",
                "algebra-data",
                "source-statements"
              ],
              "kind": "theorem",
              "line": 37,
              "open_context": [
                "CategoryTheory",
                "KIP126.Classical.Adams",
                "KIP126.StableHomotopy",
                "KIP126.StableHomotopy.Cohomology",
                "KIP126.Synthetic.Context",
                "KIP126.Synthetic.SpectralSequence",
                "KIP126.Classical.Adams.PageRepresentatives",
                "KIP126.Kervaire.Route",
                "KIP126.Literature.Route"
              ],
              "path": "KIP126/Interface/Solution/Literature/Route/SourceExistence.lean",
              "preliminary_semantic_reading": "存在性包把同一 synthetic category、ν、λ、合成族和 source inputs 一起交付；须逐字段核查所固定外部命题是否全在包中，不能从注释声称的 Pstrągowski construction 自动推出额外公式。",
              "proof_status_observation": "源码直接 sorry；并非既成实现。",
              "source_declaration": "theorem source_background_exists :\n    ∃ route : Classical.Adams.StandardRouteInput,\n      ∃ bindings : KIP126.Challenge2.ModelBindings route,\n        Nonempty (KIP126.Challenge2.LiteratureInterface route bindings) := by\n  sorry"
            }
          ],
          "next_search": [
            {
              "required_evidence": "范围正是固定used_statement的一般条件句；须在同一N/F/lam中提供gr识别和Hausdorff，并给完整性或由有限公式+分离性到最终零过滤的现有链。不要扩大为所有synthetic谱或不满足前提的X。",
              "target": "BHSObjectApplicability products H.unit X推出每个q≥1的νX/λ^q实际Adams过滤强收敛的一般X声明"
            },
            {
              "required_evidence": "不能仅重复SelectedObject闭包字段；说明球实例已覆盖和一般条件句未覆盖的差别，不改固定记录。",
              "target": "若存在替代模型接口接受任意经典X且与同一route族一致，提交其比较"
            }
          ],
          "reason": "所选对象闭包中已有真实塔的关联分次识别和分离性，球的有限商也在其中；尚未覆盖固定记录保留的一般条件X陈述，需补足其强收敛条件链。",
          "round": 1,
          "search_queries": [
            {
              "argv": [
                "rg",
                "-n",
                "SyntheticCategory|NuFunctor|LambdaComparison|lambdaComparison|canonicalLambda|lambda.*(susp|comparison)|sphere.*formula|bigradedSphere",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q01-synthetic-foundation.txt",
              "record_id": "q01-synthetic-foundation",
              "utc": "2026-10-04T15:14:46.771579+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "[Pp]olynomial|free.*lambda|lambda.*free|FirstPage|firstPage|e1Iso|E1Iso|E2Iso|e2Iso|synth.*ASS",
                "KIP126/Def/Comparison",
                "KIP126/Def/Synthetic",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q02-polynomial-pages.txt",
              "record_id": "q02-polynomial-pages",
              "utc": "2026-10-04T15:14:46.793370+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "SyntheticEInfty|Quotient.*EInfty|quotient.*[Ee]Infty|Finite.*[Ee]Infty|EInfty.*Finite|BHS.*[Ff]inite",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q03-einfty.txt",
              "record_id": "q03-einfty",
              "utc": "2026-10-04T15:14:46.823831+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "nilpotent_complete|IsENilpotentComplete|StronglyConvergent|strongly_convergent|[Ff]inite.*[Cc]onver|[Qq]uotient.*[Cc]onver|Hausdorff|Separated",
                "KIP126/Def/Synthetic",
                "KIP126/Def/ClassicalAdams/Completion",
                "KIP126/Interface",
                "KIP126/Def/Kervaire/Route"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q04-completion.txt",
              "record_id": "q04-completion",
              "utc": "2026-10-04T15:14:46.846945+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "lam|lambda|suspension",
                "KIP126/Def/Synthetic/Context",
                "KIP126/Def/Synthetic/Sphere",
                "KIP126/Def/StableHomotopy/Implementation/Data.lean",
                "KIP126/Def/Kervaire/Route/Model"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q05-canonical-lambda.txt",
              "record_id": "q05-canonical-lambda",
              "utc": "2026-10-04T15:15:36.367150+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "Polynomial|Finsupp|free.*lambda|lambda.*free|E₁|E1|first.page|firstPage|d₁",
                "KIP126/Def/Synthetic",
                "KIP126/Def/Comparison",
                "KIP126/Def/Kervaire/Route",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q06-e1-fullscope.txt",
              "record_id": "q06-e1-fullscope",
              "utc": "2026-10-04T15:15:36.382047+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "[Ss]trong.*[Cc]onver|[Cc]ompletionWitness|IsAdamsTowerStronglyConvergent|HomotopySeparated|TowerConvergence",
                "KIP126"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q07-convergence-fullscope.txt",
              "record_id": "q07-convergence-fullscope",
              "utc": "2026-10-04T15:15:36.406261+00:00"
            },
            {
              "argv": [
                "rg",
                "-n",
                "SymmetricCategory Syn|BraidedCategory Syn|ClosedSymmetricTensorTriangulated|lam.*=|= .*lam",
                "KIP126/Def",
                "KIP126/Interface"
              ],
              "exit_code": 0,
              "output": "docs/audits/h6-square-proof-explorer/segmented-20261004-1456/formal/evidence-search/t01a/q08-symmetry.txt",
              "record_id": "q08-symmetry",
              "utc": "2026-10-04T15:15:36.426413+00:00"
            }
          ],
          "search_record": "formal/search-T01a-round1.json",
          "search_record_sha256": "29f85fa786d44e391a26a4de40e83e798175332e58d3dbfdaaa46f8d1604f363",
          "semantic_status": "not_passed",
          "verdict": "not_passed"
        }
      ],
      "semantic_status": "incomplete",
      "short_reason": "所选对象闭包中已有真实塔的关联分次识别和分离性，球的有限商也在其中；尚未覆盖固定记录保留的一般条件X陈述，需补足其强收敛条件链。",
      "source_statement": "BHS Lemma A.14 证明 $C\\tau^q\\otimes\\nu X$ 是 $\\nu E$ 幂零完成的；Theorem 9.19(1)/A.1(1) 的证明开头，在 $X$ 为 $E$ 幂零完成并具有经典强收敛的假设下，由 A.11 明确断言有限商的合成 Adams 谱序列强收敛。强收敛定义包含完整、Hausdorff 和 $E_\\infty\\cong\\operatorname{gr}_F$。",
      "sources": [
        {
          "kind": "primary_source",
          "locator": "行4215–4223（Lemma A.14），行4282–4287（Theorem9.19(1)证明中的有限商强收敛）",
          "path": "Source/BHS/paper.txt"
        },
        {
          "kind": "primary_source",
          "locator": "行153–162、225–226",
          "path": "Source/BHS/source/SynRevAdams.tex"
        },
        {
          "kind": "primary_source",
          "locator": "dfn:strong-conv：完整、Hausdorff及关联分次识别",
          "path": "Source/BHS/source/SynRevBigraded.tex"
        }
      ],
      "specialization": "取 $E=H\\mathbb F_2$、$X=S^0_2{}^\\wedge$。幂零完成由 EXT-007，经典强收敛由 T00-v2 中 EXT-001。参数 $\\tau$ 改名 $\\lambda$。正文使用强收敛的完整结论，并不从有限 $E_\\infty$ 支撑单独推断分离性。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "把有限商极限页识别为同伦群过滤层，并得到过滤分离性",
          "quote": "这里使用有限商强收敛这一结果的完整结论，包括过滤的分离性和与关联分次的识别。",
          "source": "math/T01a-v1.md"
        }
      ],
      "used_statement": "对 $H\\mathbb F_2$ 幂零完成且经典 Adams 谱序列强收敛的谱 $X$，每个有限参数商 $\\nu X/\\lambda^q$ 的合成 Adams 谱序列强收敛。其 Adams 过滤完整且 Hausdorff，极限页自然识别为关联分次。本文用于 $X=S^0_2{}^\\wedge$、$q\\ge1$。",
      "uses": [
        {
          "chapter_id": "quotients",
          "occurrence": 1,
          "part_id": "T01a",
          "title": "有限 $\\lambda$ 商的过滤"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-001",
      "name": "初始类 ξ 的生存范围和无入射",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "论文 Fact x_123_9(1)给出 $x_{123,9}+h_0x_{123,8}$ 生存到 $E_{12}$ 且不被任何经典微分击中；附录将其可能的首个出射标为 $d_{12}$、目标未知。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "行2375–2383，Fact x_123_9(1)；Table:S123过滤9",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "取 stem $123$、过滤 $9$、内部次数 $132$ 的指定和类；只固定 $d_2$ 至 $d_{11}$ 为零及无入射，不假定 $d_{12}$ 为零。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "初始类 ξ 的生存范围和无入射",
          "quote": "$\\xi$ 在 $E_{12}$ 页非零，并且不会被任何经典 Adams 微分击中。",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "在 $2$ 完成球谱的经典模 $2$ Adams 谱序列中，$\\xi=x_{123,9}+h_0x_{123,8}\\in\\operatorname{Ext}_A^{9,132}(\\mathbb F_2,\\mathbb F_2)$ 在 $E_{12}$ 页非零，且不会被任何经典 Adams 微分击中。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-002",
      "name": "类 a₀ 的经典非零生存",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "论文 Fact theta5sqAF(3)陈述 $h_0^2x_{124,8}$ 生存到 $E_\\infty$；Table:S124.12过滤10将其标为 Permanent。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Fact theta5sqAF(3)，行2150–2167；Table:S124.12过滤10，行2975–2979",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "取 stem $124$、过滤 $10$、内部次数 $134$。这里固定的生存含非零性；不选择任何合成或经典同伦代表元。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "类 a₀ 的经典非零生存",
          "quote": "$a_0$ 给出非零经典 $E_\\infty$ 类。",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "在 $2$ 完成球谱的经典模 $2$ Adams 谱序列中，$a_0=h_0^2x_{124,8}\\in\\operatorname{Ext}_A^{10,134}(\\mathbb F_2,\\mathbb F_2)$ 给出非零 $E_\\infty$ 类。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-003",
      "name": "连接 ξ 与 a₀ 的 d₂",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "论文 Fact x_123_9(2)给出经典非零微分 $d_2(x_{125,8})=h_1(x_{123,9}+h_0x_{123,8})+h_0^2x_{124,8}$。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "行2381–2384；Table:S125.19过滤8，行3067–3068",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "源为 $(s,t)=(8,133)$，靶为 $(10,134)$；$h_1\\xi$ 与 $a_0$ 均在该靶群中。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "连接 ξ 与 a₀ 的 d₂",
          "quote": "初始两类还满足非零微分 $d_2(x_{125,8})=h_1\\xi+a_0\\ne0$。",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "在 $2$ 完成球谱的经典模 $2$ Adams 谱序列中，$d_2(x_{125,8})=h_1(x_{123,9}+h_0x_{123,8})+h_0^2x_{124,8}\\ne0$；源为 $(s,t)=(8,133)$，靶为 $(10,134)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-004",
      "name": "stem 124 过滤 11 的完整基",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "论文附录在 stem $124$、过滤 $11$ 的 Elements 栏列出这 $5$ 个计算基元素；表前说明该附录呈现经典 Adams 谱序列的程序计算结果。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.12过滤11，行2970–2974；附录说明行2783–2800",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "固定 $(s,t)=(11,135)$；本输入明确包含完整性，不以只列若干类替代整个空间。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "stem 124 过滤 11 的完整基",
          "quote": "在 $\\operatorname{Ext}_A^{11,135}$ 中，下列 $5$ 个元素构成完整基。",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "$\\operatorname{Ext}_A^{11,135}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $h_0x_{124,10,2}+h_0^3x_{124,8},\\quad h_0^3x_{124,8},\\quad x_{124,11,3},\\quad x_{124,11,2}+x_{124,11},\\quad x_{124,11}$；这些元素线性无关并张成整个群。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        },
        {
          "chapter_id": "lifting",
          "occurrence": 2,
          "part_id": "P02b",
          "title": "消去两个低过滤层"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-005",
      "name": "过滤 11：第 1 个基元素的入射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $h_0x_{124,10,2}+h_0^3x_{124,8}$ 的一行标为 $d_2^{-1}$，value 为 $x_{125,9,2}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.12过滤11，行2970–2974",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "把 $d_2^{-1}$ 解读为被击中的方向，而非出射；本处等式只在 $E_2$ 页及其相应边界商中理解。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 11 基行的 入射 d2：h_0x_{124,10,2}+h_0^3x_{124,8}",
          "quote": "| $h_0x_{124,10,2}+h_0^3x_{124,8}$ | 入射 $d_2$，来源 $x_{125,9,2}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_2(x_{125,9,2})=h_0x_{124,10,2}+h_0^3x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(9,134)$，靶双次数为 $(11,135)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        },
        {
          "chapter_id": "lifting",
          "occurrence": 2,
          "part_id": "P02b",
          "title": "消去两个低过滤层"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-006",
      "name": "过滤 11：第 2 个基元素的入射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $h_0^3x_{124,8}$ 的一行标为 $d_2^{-1}$，value 为 $h_0x_{125,8}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.12过滤11，行2970–2974",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "把 $d_2^{-1}$ 解读为被击中的方向，而非出射；本处等式只在 $E_2$ 页及其相应边界商中理解。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 11 基行的 入射 d2：h_0^3x_{124,8}",
          "quote": "| $h_0^3x_{124,8}$ | 入射 $d_2$，来源 $h_0x_{125,8}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_2(h_0x_{125,8})=h_0^3x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(9,134)$，靶双次数为 $(11,135)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        },
        {
          "chapter_id": "lifting",
          "occurrence": 2,
          "part_id": "P02b",
          "title": "消去两个低过滤层"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-007",
      "name": "过滤 11：第 3 个基元素的入射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $x_{124,11,3}$ 的一行标为 $d_3^{-1}$，value 为 $x_{125,8,2}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.12过滤11，行2970–2974",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "把 $d_3^{-1}$ 解读为被击中的方向，而非出射；本处等式只在 $E_3$ 页及其相应边界商中理解。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 11 基行的 入射 d3：x_{124,11,3}",
          "quote": "| $x_{124,11,3}$ | 入射 $d_3$，来源 $x_{125,8,2}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_3(x_{125,8,2})=x_{124,11,3}\\ne0$ 在 $E_3$ 页成立；源双次数为 $(8,133)$，靶双次数为 $(11,135)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        },
        {
          "chapter_id": "lifting",
          "occurrence": 2,
          "part_id": "P02b",
          "title": "消去两个低过滤层"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-008",
      "name": "过滤 11：第 4 个基元素的出射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $x_{124,11,2}+x_{124,11}$ 的一行标为 $d_4$，value 为 $x_{123,15}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.12过滤11，行2970–2974",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "该类是非零出射方向；它在 $E_4$ 页非零，不能把它当作此前的入射边界。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 11 基行的 出射 d4：x_{124,11,2}+x_{124,11}",
          "quote": "| $x_{124,11,2}+x_{124,11}$ | 出射 $d_4$，目标 $x_{123,15}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_4(x_{124,11,2}+x_{124,11})=x_{123,15}\\ne0$ 在 $E_4$ 页成立；源双次数为 $(11,135)$，靶双次数为 $(15,138)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        },
        {
          "chapter_id": "lifting",
          "occurrence": 2,
          "part_id": "P02b",
          "title": "消去两个低过滤层"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-009",
      "name": "过滤 11：第 5 个基元素的出射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $x_{124,11}$ 的一行标为 $d_2$，value 为 $h_0^2x_{123,11}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.12过滤11，行2970–2974",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "该类是非零出射方向；它在 $E_2$ 页非零，不能把它当作此前的入射边界。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 11 基行的 出射 d2：x_{124,11}",
          "quote": "| $x_{124,11}$ | 出射 $d_2$，目标 $h_0^2x_{123,11}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_2(x_{124,11})=h_0^2x_{123,11}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(11,135)$，靶双次数为 $(13,136)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        },
        {
          "chapter_id": "lifting",
          "occurrence": 2,
          "part_id": "P02b",
          "title": "消去两个低过滤层"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-010",
      "name": "stem 124 过滤 12 的完整基",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "论文附录在 stem $124$、过滤 $12$ 的 Elements 栏列出这 $5$ 个计算基元素；表前说明该附录呈现经典 Adams 谱序列的程序计算结果。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.12过滤12，行2965–2969；附录说明行2783–2800",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "固定 $(s,t)=(12,136)$；本输入明确包含完整性，不以只列若干类替代整个空间。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "stem 124 过滤 12 的完整基",
          "quote": "在 $\\operatorname{Ext}_A^{12,136}$ 中，下列 $5$ 个元素构成完整基。",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "$\\operatorname{Ext}_A^{12,136}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $h_0x_{124,11,2}+h_0x_{124,11},\\quad h_0^2x_{124,10,2}+h_0^4x_{124,8},\\quad h_0^4x_{124,8},\\quad h_1x_{123,11,2},\\quad h_0x_{124,11}$；这些元素线性无关并张成整个群。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        },
        {
          "chapter_id": "lifting",
          "occurrence": 2,
          "part_id": "P02b",
          "title": "消去两个低过滤层"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-011",
      "name": "过滤 12：第 1 个基元素的入射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $h_0x_{124,11,2}+h_0x_{124,11}$ 的一行标为 $d_2^{-1}$，value 为 $x_{125,10}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.12过滤12，行2965–2969",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "把 $d_2^{-1}$ 解读为被击中的方向，而非出射；本处等式只在 $E_2$ 页及其相应边界商中理解。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 12 基行的 入射 d2：h_0x_{124,11,2}+h_0x_{124,11}",
          "quote": "| $h_0x_{124,11,2}+h_0x_{124,11}$ | 入射 $d_2$，来源 $x_{125,10}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_2(x_{125,10})=h_0x_{124,11,2}+h_0x_{124,11}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(10,135)$，靶双次数为 $(12,136)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        },
        {
          "chapter_id": "lifting",
          "occurrence": 2,
          "part_id": "P02b",
          "title": "消去两个低过滤层"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-012",
      "name": "过滤 12：第 2 个基元素的入射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $h_0^2x_{124,10,2}+h_0^4x_{124,8}$ 的一行标为 $d_2^{-1}$，value 为 $h_0x_{125,9,2}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.12过滤12，行2965–2969",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "把 $d_2^{-1}$ 解读为被击中的方向，而非出射；本处等式只在 $E_2$ 页及其相应边界商中理解。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 12 基行的 入射 d2：h_0^2x_{124,10,2}+h_0^4x_{124,8}",
          "quote": "| $h_0^2x_{124,10,2}+h_0^4x_{124,8}$ | 入射 $d_2$，来源 $h_0x_{125,9,2}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_2(h_0x_{125,9,2})=h_0^2x_{124,10,2}+h_0^4x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(10,135)$，靶双次数为 $(12,136)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        },
        {
          "chapter_id": "lifting",
          "occurrence": 2,
          "part_id": "P02b",
          "title": "消去两个低过滤层"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-013",
      "name": "过滤 12：第 3 个基元素的入射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $h_0^4x_{124,8}$ 的一行标为 $d_2^{-1}$，value 为 $h_0^2x_{125,8}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.12过滤12，行2965–2969",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "把 $d_2^{-1}$ 解读为被击中的方向，而非出射；本处等式只在 $E_2$ 页及其相应边界商中理解。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 12 基行的 入射 d2：h_0^4x_{124,8}",
          "quote": "| $h_0^4x_{124,8}$ | 入射 $d_2$，来源 $h_0^2x_{125,8}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_2(h_0^2x_{125,8})=h_0^4x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(10,135)$，靶双次数为 $(12,136)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        },
        {
          "chapter_id": "lifting",
          "occurrence": 2,
          "part_id": "P02b",
          "title": "消去两个低过滤层"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-014",
      "name": "过滤 12：第 4 个基元素的入射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $h_1x_{123,11,2}$ 的一行标为 $d_3^{-1}$，value 为 $x_{125,9}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.12过滤12，行2965–2969",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "把 $d_3^{-1}$ 解读为被击中的方向，而非出射；本处等式只在 $E_3$ 页及其相应边界商中理解。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 12 基行的 入射 d3：h_1x_{123,11,2}",
          "quote": "| $h_1x_{123,11,2}$ | 入射 $d_3$，来源 $x_{125,9}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_3(x_{125,9})=h_1x_{123,11,2}\\ne0$ 在 $E_3$ 页成立；源双次数为 $(9,134)$，靶双次数为 $(12,136)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        },
        {
          "chapter_id": "lifting",
          "occurrence": 2,
          "part_id": "P02b",
          "title": "消去两个低过滤层"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-015",
      "name": "过滤 12：第 5 个基元素的出射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $h_0x_{124,11}$ 的一行标为 $d_2$，value 为 $h_0^3x_{123,11}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.12过滤12，行2965–2969",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "该类是非零出射方向；它在 $E_2$ 页非零，不能把它当作此前的入射边界。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 12 基行的 出射 d2：h_0x_{124,11}",
          "quote": "| $h_0x_{124,11}$ | 出射 $d_2$，目标 $h_0^3x_{123,11}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_2(h_0x_{124,11})=h_0^3x_{123,11}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(12,136)$，靶双次数为 $(14,137)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        },
        {
          "chapter_id": "lifting",
          "occurrence": 2,
          "part_id": "P02b",
          "title": "消去两个低过滤层"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-016",
      "name": "stem 124 过滤 13 的完整基",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "论文附录在 stem $124$、过滤 $13$ 的 Elements 栏列出这 $4$ 个计算基元素；表前说明该附录呈现经典 Adams 谱序列的程序计算结果。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤13，行2951–2954；附录说明行2783–2800",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "固定 $(s,t)=(13,137)$；本输入明确包含完整性，不以只列若干类替代整个空间。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "stem 124 过滤 13 的完整基",
          "quote": "在 $\\operatorname{Ext}_A^{13,137}$ 中，下列 $4$ 个元素构成完整基。",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "$\\operatorname{Ext}_A^{13,137}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $h_0^5x_{124,8},\\quad [H_1](\\Delta e_1+C_0+h_0^6h_5^2),\\quad e_0\\Delta h_6g,\\quad h_4x_{109,12}$；这些元素线性无关并张成整个群。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-017",
      "name": "过滤 13：第 1 个基元素的入射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $h_0^5x_{124,8}$ 的一行标为 $d_2^{-1}$，value 为 $h_0^3x_{125,8}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤13，行2951–2954",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "把 $d_2^{-1}$ 解读为被击中的方向，而非出射；本处等式只在 $E_2$ 页及其相应边界商中理解。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 13 基行的 入射 d2：h_0^5x_{124,8}",
          "quote": "| $h_0^5x_{124,8}$ | 入射 $d_2$，来源 $h_0^3x_{125,8}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_2(h_0^3x_{125,8})=h_0^5x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(11,136)$，靶双次数为 $(13,137)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-018",
      "name": "过滤 13：第 2 个基元素的入射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $[H_1](\\Delta e_1+C_0+h_0^6h_5^2)$ 的一行标为 $d_3^{-1}$，value 为 $x_{125,10,2}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤13，行2951–2954",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "把 $d_3^{-1}$ 解读为被击中的方向，而非出射；本处等式只在 $E_3$ 页及其相应边界商中理解。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 13 基行的 入射 d3：[H_1](\\Delta e_1+C_0+h_0^6h_5^2)",
          "quote": "| $[H_1](\\Delta e_1+C_0+h_0^6h_5^2)$ | 入射 $d_3$，来源 $x_{125,10,2}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_3(x_{125,10,2})=[H_1](\\Delta e_1+C_0+h_0^6h_5^2)\\ne0$ 在 $E_3$ 页成立；源双次数为 $(10,135)$，靶双次数为 $(13,137)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-019",
      "name": "过滤 13 指定类的无出射性质",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录该类标为 Permanent；本处仅提取属于 $Z_\\infty$ 的无出射性质，不加入无入射或经典极限非零。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤13，行2951–2954",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "stem $124$、过滤 $13$、内部次数 $137$；其初始 $E_2$ 非零性由完整基输入给出。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 13 指定类的无出射性质",
          "quote": "| $\\epsilon_{13}=e_0\\Delta h_6g$ | 无出射微分",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "类 $e_0\\Delta h_6g\\in\\operatorname{Ext}_A^{13,137}$ 属于 $Z_\\infty^{13,137}$，即无经典出射 Adams 微分。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-020",
      "name": "过滤 13：第 4 个基元素的出射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $h_4x_{109,12}$ 的一行标为 $d_3$，value 为 $h_1x_{122,15,2}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤13，行2951–2954",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "该类是非零出射方向；它在 $E_3$ 页非零，不能把它当作此前的入射边界。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 13 基行的 出射 d3：h_4x_{109,12}",
          "quote": "| $h_4x_{109,12}$ | 出射 $d_3$，目标 $h_1x_{122,15,2}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_3(h_4x_{109,12})=h_1x_{122,15,2}\\ne0$ 在 $E_3$ 页成立；源双次数为 $(13,137)$，靶双次数为 $(16,139)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-021",
      "name": "stem 124 过滤 14 的完整基",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "论文附录在 stem $124$、过滤 $14$ 的 Elements 栏列出这 $5$ 个计算基元素；表前说明该附录呈现经典 Adams 谱序列的程序计算结果。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤14，行2946–2950；附录说明行2783–2800",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "固定 $(s,t)=(14,138)$；本输入明确包含完整性，不以只列若干类替代整个空间。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "stem 124 过滤 14 的完整基",
          "quote": "在 $\\operatorname{Ext}_A^{14,138}$ 中，下列 $5$ 个元素构成完整基。",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "$\\operatorname{Ext}_A^{14,138}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $h_1x_{123,13},\\quad h_1x_{123,13,2},\\quad \\Delta h_2^2x_{94,8},\\quad x_{124,14},\\quad x_{124,14,2}$；这些元素线性无关并张成整个群。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-022",
      "name": "过滤 14：第 1 个基元素的入射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $h_1x_{123,13}$ 的一行标为 $d_2^{-1}$，value 为 $x_{125,12}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤14，行2946–2950",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "把 $d_2^{-1}$ 解读为被击中的方向，而非出射；本处等式只在 $E_2$ 页及其相应边界商中理解。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 14 基行的 入射 d2：h_1x_{123,13}",
          "quote": "| $h_1x_{123,13}$ | 入射 $d_2$，来源 $x_{125,12}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_2(x_{125,12})=h_1x_{123,13}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(12,137)$，靶双次数为 $(14,138)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-023",
      "name": "过滤 14：第 2 个基元素的入射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $h_1x_{123,13,2}$ 的一行标为 $d_2^{-1}$，value 为 $x_{125,12,2}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤14，行2946–2950",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "把 $d_2^{-1}$ 解读为被击中的方向，而非出射；本处等式只在 $E_2$ 页及其相应边界商中理解。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 14 基行的 入射 d2：h_1x_{123,13,2}",
          "quote": "| $h_1x_{123,13,2}$ | 入射 $d_2$，来源 $x_{125,12,2}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_2(x_{125,12,2})=h_1x_{123,13,2}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(12,137)$，靶双次数为 $(14,138)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-024",
      "name": "过滤 14 指定类的无出射性质",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录该类标为 Permanent；本处仅提取属于 $Z_\\infty$ 的无出射性质，不加入无入射或经典极限非零。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤14，行2946–2950",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "stem $124$、过滤 $14$、内部次数 $138$；其初始 $E_2$ 非零性由完整基输入给出。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 14 指定类的无出射性质",
          "quote": "| $\\epsilon_{14}=\\Delta h_2^2x_{94,8}$ | 无出射微分",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "类 $\\Delta h_2^2x_{94,8}\\in\\operatorname{Ext}_A^{14,138}$ 属于 $Z_\\infty^{14,138}$，即无经典出射 Adams 微分。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-025",
      "name": "过滤 14：第 4 个基元素的出射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $x_{124,14}$ 的一行标为 $d_2$，value 为 $h_0x_{123,15}+h_0^3x_{123,13,2}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤14，行2946–2950",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "该类是非零出射方向；它在 $E_2$ 页非零，不能把它当作此前的入射边界。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 14 基行的 出射 d2：x_{124,14}",
          "quote": "| $x_{124,14}$ | 出射 $d_2$，目标 $h_0x_{123,15}+h_0^3x_{123,13,2}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_2(x_{124,14})=h_0x_{123,15}+h_0^3x_{123,13,2}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(14,138)$，靶双次数为 $(16,139)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-026",
      "name": "过滤 14：第 5 个基元素的出射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $x_{124,14,2}$ 的一行标为 $d_2$，value 为 $h_0x_{123,15}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤14，行2946–2950",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "该类是非零出射方向；它在 $E_2$ 页非零，不能把它当作此前的入射边界。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 14 基行的 出射 d2：x_{124,14,2}",
          "quote": "| $x_{124,14,2}$ | 出射 $d_2$，目标 $h_0x_{123,15}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_2(x_{124,14,2})=h_0x_{123,15}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(14,138)$，靶双次数为 $(16,139)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-027",
      "name": "stem 124 过滤 15 的完整基",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "论文附录在 stem $124$、过滤 $15$ 的 Elements 栏列出这 $4$ 个计算基元素；表前说明该附录呈现经典 Adams 谱序列的程序计算结果。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤15，行2942–2945；附录说明行2783–2800",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "固定 $(s,t)=(15,139)$；本输入明确包含完整性，不以只列若干类替代整个空间。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "stem 124 过滤 15 的完整基",
          "quote": "在 $\\operatorname{Ext}_A^{15,139}$ 中，下列 $4$ 个元素构成完整基。",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "$\\operatorname{Ext}_A^{15,139}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $x_{124,15},\\quad h_3^2x_{110,13}+h_0x_{124,14},\\quad h_0x_{124,14},\\quad h_0x_{124,14,2}$；这些元素线性无关并张成整个群。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-028",
      "name": "过滤 15：第 1 个基元素的入射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $x_{124,15}$ 的一行标为 $d_4^{-1}$，value 为 $h_6x_{62,10}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤15，行2942–2945",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "把 $d_4^{-1}$ 解读为被击中的方向，而非出射；本处等式只在 $E_4$ 页及其相应边界商中理解。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 15 基行的 入射 d4：x_{124,15}",
          "quote": "| $x_{124,15}$ | 入射 $d_4$，来源 $h_6x_{62,10}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_4(h_6x_{62,10})=x_{124,15}\\ne0$ 在 $E_4$ 页成立；源双次数为 $(11,136)$，靶双次数为 $(15,139)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-029",
      "name": "过滤 15 指定类的无出射性质",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录该类标为 Permanent；本处仅提取属于 $Z_\\infty$ 的无出射性质，不加入无入射或经典极限非零。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤15，行2942–2945",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "stem $124$、过滤 $15$、内部次数 $139$；其初始 $E_2$ 非零性由完整基输入给出。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 15 指定类的无出射性质",
          "quote": "| $\\epsilon_{15}=h_3^2x_{110,13}+h_0x_{124,14}$ | 无出射微分",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "类 $h_3^2x_{110,13}+h_0x_{124,14}\\in\\operatorname{Ext}_A^{15,139}$ 属于 $Z_\\infty^{15,139}$，即无经典出射 Adams 微分。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-030",
      "name": "过滤 15：第 3 个基元素的出射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $h_0x_{124,14}$ 的一行标为 $d_2$，value 为 $h_0^2x_{123,15}+h_0^4x_{123,13,2}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤15，行2942–2945",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "该类是非零出射方向；它在 $E_2$ 页非零，不能把它当作此前的入射边界。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 15 基行的 出射 d2：h_0x_{124,14}",
          "quote": "| $h_0x_{124,14}$ | 出射 $d_2$，目标 $h_0^2x_{123,15}+h_0^4x_{123,13,2}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_2(h_0x_{124,14})=h_0^2x_{123,15}+h_0^4x_{123,13,2}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(15,139)$，靶双次数为 $(17,140)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-031",
      "name": "过滤 15：第 4 个基元素的出射微分",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "附录在类 $h_0x_{124,14,2}$ 的一行标为 $d_2$，value 为 $h_0^2x_{123,15}$。该行没有问号或可能性限定，表示所列非零微分。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S124.13过滤15，行2942–2945",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "该类是非零出射方向；它在 $E_2$ 页非零，不能把它当作此前的入射边界。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "过滤 15 基行的 出射 d2：h_0x_{124,14,2}",
          "quote": "| $h_0x_{124,14,2}$ | 出射 $d_2$，目标 $h_0^2x_{123,15}$",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "经典 Adams 微分 $d_2(h_0x_{124,14,2})=h_0^2x_{123,15}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(15,139)$，靶双次数为 $(17,140)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-032",
      "name": "stem 123 过滤 16 的两个独立目标方向",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "Table:S123过滤 $16$ 的前两行分别为 $a_{16}+b_{16}$ 与 $b_{16}$，是该过滤的不同计算基方向。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S123过滤16，行2873–2874",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "仅取这两个方向的 $E_2$ 线性无关，不取该次数全部群的其他信息；正文由此推导 $a_{16},b_{16}$ 也独立。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "stem 123 过滤 16 的两个独立目标方向",
          "quote": "计算给出的两个基方向 $a_{16}+b_{16}$ 与 $b_{16}$ 线性无关。",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "在 $\\operatorname{Ext}_A^{16,139}$ 中，$a_{16}+b_{16}$ 与 $b_{16}$ 线性无关，其中 $a_{16}=h_0x_{123,15},b_{16}=h_0^3x_{123,13,2}$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-033",
      "name": "stem 123 过滤 17 的两个独立目标方向",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "Table:S123过滤 $17$ 的前两行分别为 $a_{17}+b_{17}$ 与 $b_{17}$，是该过滤的不同计算基方向。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "Table:S123过滤17，行2869–2870",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "仅取这两个方向的 $E_2$ 线性无关，不取该次数全部群的其他信息；正文由此推导 $a_{17},b_{17}$ 也独立。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "stem 123 过滤 17 的两个独立目标方向",
          "quote": "计算给出的两个基方向 $a_{17}+b_{17}$ 与 $b_{17}$ 线性无关。",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "在 $\\operatorname{Ext}_A^{17,140}$ 中，$a_{17}+b_{17}$ 与 $b_{17}$ 线性无关，其中 $a_{17}=h_0^2x_{123,15},b_{17}=h_0^4x_{123,13,2}$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    },
    {
      "_source_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "category": "computation",
      "formal_status": "依赖未审计",
      "id": "EXT-P02a-034",
      "name": "h₁ 与过滤13指定类的零乘积",
      "rounds": [],
      "short_reason": "尚无针对当前命题版本的独立核查结论。",
      "source_statement": "论文在 Lemma x_123_9 证明中明确写出 Ext 乘积 $h_1\\cdot e_0\\Delta h_6g=0$，作为计算输入使用。",
      "sources": [
        {
          "kind": "paper_computation_input",
          "locator": "行2427–2429，显示公式 h_1·e_0Δh_6g=0",
          "path": "MainPaper/main.tex"
        }
      ],
      "specialization": "$h_1$ 的双次数为 $(1,2)$，$\\epsilon_{13}$ 为 $(13,137)$，故乘积位于 $(14,139)$；这是 $E_2$ 乘积关系，不是任何给定同伦代表元的严格乘法关系。",
      "status": "incomplete",
      "use_sites": [
        {
          "purpose": "h₁ 与过滤13指定类的零乘积",
          "quote": "还使用乘积关系 $h_1\\epsilon_{13}=h_1e_0\\Delta h_6g=0$。",
          "source": "math/P02a-v1.md"
        }
      ],
      "used_statement": "在经典 Adams $E_2$ 页，$h_1(e_0\\Delta h_6g)=0\\in\\operatorname{Ext}_A^{14,139}(\\mathbb F_2,\\mathbb F_2)$。",
      "uses": [
        {
          "chapter_id": "data",
          "occurrence": 1,
          "part_id": "P02a",
          "title": "计算所需的经典数据"
        }
      ],
      "version": "v1"
    }
  ],
  "engineering": {},
  "global_reviews": [],
  "manifest_sha256": "b30e387ad76265e2f62baae3cdbfad7edff42ec2dd6771ea87b53aa31a1b8dc5",
  "parts": [
    {
      "chapter_id": "opening",
      "dependencies_sha256": "9de3096f578868223ed282db44b86f33eb9b4394412286f4bc26b30cb6c162cf",
      "dependencies_source": "math/T00-v2.dependencies.json",
      "html": "\u003ch1\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_6^2\"\u003e\u003c/span\u003e 的永久存活\u003c/h1\u003e\n\u003ch2\u003e目标\u003c/h2\u003e\n\u003cp\u003e设 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"S^0\"\u003e\u003c/span\u003e 为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"2\"\u003e\u003c/span\u003e 完成球谱，\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"A\"\u003e\u003c/span\u003e 为模 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"2\"\u003e\u003c/span\u003e Steenrod 代数。考虑经典的模 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"2\"\u003e\u003c/span\u003e Adams 谱序列\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nE_2^{s,t}(S^0)=\\operatorname{Ext}_A^{s,t}(\\mathbb F_2,\\mathbb F_2)\n\\Longrightarrow \\pi_{t-s}S^0.\n\"\u003e\u003c/div\u003e\u003cp\u003e这个谱序列强收敛于球谱的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"2\"\u003e\u003c/span\u003e 完成稳定同伦群。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-001\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[1]\u003c/button\u003e\u003c/p\u003e\n\u003cp\u003e\u003cstrong\u003e要证明的结论是：\u003c/strong\u003e 标准类 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_6\"\u003e\u003c/span\u003e 的 Yoneda 平方\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nh_6^2\\in E_2^{2,128}(S^0)\n\"\u003e\u003c/div\u003e\u003cp\u003e在每一页都有相容的非零像，并给出非零的极限类\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\overline{h_6^2}\\in E_\\infty^{2,128}(S^0).\n\"\u003e\u003c/div\u003e\u003cp\u003e这里的“永久存活”包含非零性。它既要求这个类的所有出射微分为零，也要求它在逐页取同调时不成为入射微分的边界；这两方面都属于要证明的结论。\u003c/p\u003e\n\u003ch2\u003e次数、过滤与检测\u003c/h2\u003e\n\u003cp\u003e记 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\"\u003e\u003c/span\u003e 为 Adams 过滤，\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"t\"\u003e\u003c/span\u003e 为内部次数，\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"t-s\"\u003e\u003c/span\u003e 为稳定同伦次数，也称为 stem。微分采用约定\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nd_r:E_r^{s,t}\\longrightarrow E_r^{s+r,t+r-1},\\qquad r\\ge 2.\n\"\u003e\u003c/div\u003e\u003cp\u003e因此微分使过滤增加 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"r\"\u003e\u003c/span\u003e，使 stem 减少 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"1\"\u003e\u003c/span\u003e。标准的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_j\"\u003e\u003c/span\u003e 是 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{1,2^j}(\\mathbb F_2,\\mathbb F_2)\"\u003e\u003c/span\u003e 的非零生成元。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-002\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[2]\u003c/button\u003e 特别地，\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_6\"\u003e\u003c/span\u003e 的双次数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(1,64)\"\u003e\u003c/span\u003e，Yoneda 乘积的次数相加给出\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n|h_6^2|=(1+1,64+64)=(2,128),\\qquad 128-2=126.\n\"\u003e\u003c/div\u003e\u003cp\u003e这个平方在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_2\"\u003e\u003c/span\u003e 中非零是 Adams \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"2\"\u003e\u003c/span\u003e 线的一个计算事实。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-003\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[3]\u003c/button\u003e 它与 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_6\"\u003e\u003c/span\u003e 本身非零是不同的断言。\u003c/p\u003e\n\u003cp\u003e对于 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_r\\in E_r^{s,t}\"\u003e\u003c/span\u003e，条件 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_r(x_r)=0\"\u003e\u003c/span\u003e 使它定义下一页的像；该像在\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nE_{r+1}^{s,t}=\n\\frac{\\ker(d_r:E_r^{s,t}\\to E_r^{s+r,t+r-1})}\n{\\operatorname{im}(d_r:E_r^{s-r,t-r+1}\\to E_r^{s,t})}\n\"\u003e\u003c/div\u003e\u003cp\u003e中非零，还要求 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_r\"\u003e\u003c/span\u003e 不属于分母的像。所谓相容，是指 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{r+1}\"\u003e\u003c/span\u003e 正是 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_r\"\u003e\u003c/span\u003e 在这个商群中的像。只知道 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_r(x_r)=0\"\u003e\u003c/span\u003e，不能省去对分母的检查。\u003c/p\u003e\n\u003cp\u003e用 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^s\\pi_nS^0\"\u003e\u003c/span\u003e 表示 Adams 塔诱导的下降过滤。强收敛给出\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nE_\\infty^{s,n+s}(S^0)\\cong\nF^s\\pi_nS^0/F^{s+1}\\pi_nS^0.\n\"\u003e\u003c/div\u003e\u003cp\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-001\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[1]\u003c/button\u003e 因而，目标中的非零极限类若已建立，就对应于 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^2\\pi_{126}S^0/F^3\\pi_{126}S^0\"\u003e\u003c/span\u003e 的一个非零陪集。选择这个陪集的代表元 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\theta_6\"\u003e\u003c/span\u003e，便有\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\theta_6\\in F^2\\pi_{126}S^0\\setminus F^3\\pi_{126}S^0,\n\\qquad \\theta_6\\ne 0.\n\"\u003e\u003c/div\u003e\u003cp\u003e这就是“\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_6^2\"\u003e\u003c/span\u003e 检测 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\theta_6\"\u003e\u003c/span\u003e”的含义。一般写 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"[x]\"\u003e\u003c/span\u003e 时，表示由极限类 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x\"\u003e\u003c/span\u003e 检测的一个同伦代表元；改变代表元可以加上更高过滤的元素，所以这个记号不指定唯一的同伦类。\u003c/p\u003e\n\u003ch2\u003e基础约定\u003c/h2\u003e\n\u003cp\u003e以下以 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\mathbb F_2\"\u003e\u003c/span\u003e 向量空间、分次代数、Yoneda 乘积及其次数相加为基础；谱序列每一页由前一页取同调，下降过滤的关联分次定义为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{gr}_F^s=F^s/F^{s+1}\"\u003e\u003c/span\u003e。还使用普通的子群、商群运算，以及非零陪集的代表元必非零这一事实。谱序列的强收敛和上述具体 Ext 计算分别使用已经明确陈述的外部结果；它们不由这些基础定义推出。\u003c/p\u003e\n",
      "id": "T00",
      "markdown": "# $h_6^2$ 的永久存活\n\n## 目标\n\n设 $S^0$ 为 $2$ 完成球谱，$A$ 为模 $2$ Steenrod 代数。考虑经典的模 $2$ Adams 谱序列\n\n$$\nE_2^{s,t}(S^0)=\\operatorname{Ext}_A^{s,t}(\\mathbb F_2,\\mathbb F_2)\n\\Longrightarrow \\pi_{t-s}S^0.\n$$\n\n这个谱序列强收敛于球谱的 $2$ 完成稳定同伦群。[[EXT-001]]\n\n**要证明的结论是：** 标准类 $h_6$ 的 Yoneda 平方\n\n$$\nh_6^2\\in E_2^{2,128}(S^0)\n$$\n\n在每一页都有相容的非零像，并给出非零的极限类\n\n$$\n\\overline{h_6^2}\\in E_\\infty^{2,128}(S^0).\n$$\n\n这里的“永久存活”包含非零性。它既要求这个类的所有出射微分为零，也要求它在逐页取同调时不成为入射微分的边界；这两方面都属于要证明的结论。\n\n## 次数、过滤与检测\n\n记 $s$ 为 Adams 过滤，$t$ 为内部次数，$t-s$ 为稳定同伦次数，也称为 stem。微分采用约定\n\n$$\nd_r:E_r^{s,t}\\longrightarrow E_r^{s+r,t+r-1},\\qquad r\\ge 2.\n$$\n\n因此微分使过滤增加 $r$，使 stem 减少 $1$。标准的 $h_j$ 是 $\\operatorname{Ext}_A^{1,2^j}(\\mathbb F_2,\\mathbb F_2)$ 的非零生成元。[[EXT-002]] 特别地，$h_6$ 的双次数为 $(1,64)$，Yoneda 乘积的次数相加给出\n\n$$\n|h_6^2|=(1+1,64+64)=(2,128),\\qquad 128-2=126.\n$$\n\n这个平方在 $E_2$ 中非零是 Adams $2$ 线的一个计算事实。[[EXT-003]] 它与 $h_6$ 本身非零是不同的断言。\n\n对于 $x_r\\in E_r^{s,t}$，条件 $d_r(x_r)=0$ 使它定义下一页的像；该像在\n\n$$\nE_{r+1}^{s,t}=\n\\frac{\\ker(d_r:E_r^{s,t}\\to E_r^{s+r,t+r-1})}\n{\\operatorname{im}(d_r:E_r^{s-r,t-r+1}\\to E_r^{s,t})}\n$$\n\n中非零，还要求 $x_r$ 不属于分母的像。所谓相容，是指 $x_{r+1}$ 正是 $x_r$ 在这个商群中的像。只知道 $d_r(x_r)=0$，不能省去对分母的检查。\n\n用 $F^s\\pi_nS^0$ 表示 Adams 塔诱导的下降过滤。强收敛给出\n\n$$\nE_\\infty^{s,n+s}(S^0)\\cong\nF^s\\pi_nS^0/F^{s+1}\\pi_nS^0.\n$$\n\n[[EXT-001]] 因而，目标中的非零极限类若已建立，就对应于 $F^2\\pi_{126}S^0/F^3\\pi_{126}S^0$ 的一个非零陪集。选择这个陪集的代表元 $\\theta_6$，便有\n\n$$\n\\theta_6\\in F^2\\pi_{126}S^0\\setminus F^3\\pi_{126}S^0,\n\\qquad \\theta_6\\ne 0.\n$$\n\n这就是“$h_6^2$ 检测 $\\theta_6$”的含义。一般写 $[x]$ 时，表示由极限类 $x$ 检测的一个同伦代表元；改变代表元可以加上更高过滤的元素，所以这个记号不指定唯一的同伦类。\n\n## 基础约定\n\n以下以 $\\mathbb F_2$ 向量空间、分次代数、Yoneda 乘积及其次数相加为基础；谱序列每一页由前一页取同调，下降过滤的关联分次定义为 $\\operatorname{gr}_F^s=F^s/F^{s+1}$。还使用普通的子群、商群运算，以及非零陪集的代表元必非零这一事实。谱序列的强收敛和上述具体 Ext 计算分别使用已经明确陈述的外部结果；它们不由这些基础定义推出。\n",
      "review": "reviews/T00-v2-review.json",
      "sha256": "35fa6c97c4ad80f102b7badf4fc411a4ad7d5b99f4f16fc6b76bf885d8d783fd",
      "source": "math/T00-v2.md",
      "title": "$h_6^2$ 的永久存活",
      "title_html": "\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_6^2\"\u003e\u003c/span\u003e 的永久存活",
      "upstream": [],
      "version": "v2"
    },
    {
      "chapter_id": "opening",
      "dependencies_sha256": "4356f53545c2392db77a97a39a2a9cf143552da1631dc94659e789e1dcee518e",
      "dependencies_source": "math/T00a-v1.dependencies.json",
      "html": "\u003ch2\u003e排除入射微分\u003c/h2\u003e\n\u003cp\u003e先使用 Ext 的两个基本约定：\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{0,t}\"\u003e\u003c/span\u003e 是内部次数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"t\"\u003e\u003c/span\u003e 的分次 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"A\"\u003e\u003c/span\u003e 模同态群，而 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{s,t}=0\"\u003e\u003c/span\u003e 对所有 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\u0026lt;0\"\u003e\u003c/span\u003e 成立。系数模 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\mathbb F_2\"\u003e\u003c/span\u003e 只有内部次数 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\"\u003e\u003c/span\u003e 的分量非零。\u003c/p\u003e\n\u003cp\u003e\u003cstrong\u003e引理。\u003c/strong\u003e 对每个 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"r\\ge2\"\u003e\u003c/span\u003e，射入 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_r^{2,128}(S^0)\"\u003e\u003c/span\u003e 的 Adams 微分的源群为零。\u003c/p\u003e\n\u003cp\u003e\u003cstrong\u003e证明。\u003c/strong\u003e 若 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_r\"\u003e\u003c/span\u003e 从双次数 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(s,t)\"\u003e\u003c/span\u003e 射入 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(2,128)\"\u003e\u003c/span\u003e，微分的次数约定要求\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\ns+r=2,\\qquad t+r-1=128.\n\"\u003e\u003c/div\u003e\u003cp\u003e分别解出 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s,t\"\u003e\u003c/span\u003e，得到唯一可能的源\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nE_r^{2-r,129-r}(S^0).\n\"\u003e\u003c/div\u003e\u003cp\u003e当 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"r=2\"\u003e\u003c/span\u003e 时，这个群就是\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nE_2^{0,127}\n=\\operatorname{Ext}_A^{0,127}(\\mathbb F_2,\\mathbb F_2).\n\"\u003e\u003c/div\u003e\u003cp\u003e一个非零分次同态必须把定义域的非零分量送到值域的非零分量。这里二者唯一的非零分量都在内部次数 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\"\u003e\u003c/span\u003e，所以非零分次同态只能具有内部次数 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\"\u003e\u003c/span\u003e。次数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"127\"\u003e\u003c/span\u003e 的同态必为零，因此 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_2^{0,127}=0\"\u003e\u003c/span\u003e。\u003c/p\u003e\n\u003cp\u003e当 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"r\\ge3\"\u003e\u003c/span\u003e 时，\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"2-r\u0026lt;0\"\u003e\u003c/span\u003e，故\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nE_2^{2-r,129-r}\n=\\operatorname{Ext}_A^{2-r,129-r}(\\mathbb F_2,\\mathbb F_2)=0.\n\"\u003e\u003c/div\u003e\u003cp\u003e为把这个零群结论传到第 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"r\"\u003e\u003c/span\u003e 页，固定双次数 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(2-r,129-r)\"\u003e\u003c/span\u003e。若某一页在这个双次数为零，那么该页微分的核是零群，它在下一页的同调也是零群。由 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_2=0\"\u003e\u003c/span\u003e 逐页归纳，便得到 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_r^{2-r,129-r}=0\"\u003e\u003c/span\u003e。\u003c/p\u003e\n\u003cp\u003e两种情形覆盖了所有 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"r\\ge2\"\u003e\u003c/span\u003e，所以每个可能射入 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_r^{2,128}\"\u003e\u003c/span\u003e 的微分都有零源群，入射像恒为零。证毕。\u003c/p\u003e\n\u003cp\u003e因此，只要 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_6^2\"\u003e\u003c/span\u003e 的非零相容像 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_r\"\u003e\u003c/span\u003e 已经定义在第 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"r\"\u003e\u003c/span\u003e 页，它就不会是入射边界；若再有 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_r(x_r)=0\"\u003e\u003c/span\u003e，则下一页的像 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{r+1}\"\u003e\u003c/span\u003e 仍非零。初始类的非零性与本引理分别解决了起点和入射问题；永久存活还要求对每一页证明出射微分为零，并据此建立非零极限类。\u003c/p\u003e\n",
      "id": "T00a",
      "markdown": "## 排除入射微分\n\n先使用 Ext 的两个基本约定：$\\operatorname{Ext}_A^{0,t}$ 是内部次数为 $t$ 的分次 $A$ 模同态群，而 $\\operatorname{Ext}_A^{s,t}=0$ 对所有 $s\u003c0$ 成立。系数模 $\\mathbb F_2$ 只有内部次数 $0$ 的分量非零。\n\n**引理。** 对每个 $r\\ge2$，射入 $E_r^{2,128}(S^0)$ 的 Adams 微分的源群为零。\n\n**证明。** 若 $d_r$ 从双次数 $(s,t)$ 射入 $(2,128)$，微分的次数约定要求\n\n$$\ns+r=2,\\qquad t+r-1=128.\n$$\n\n分别解出 $s,t$，得到唯一可能的源\n\n$$\nE_r^{2-r,129-r}(S^0).\n$$\n\n当 $r=2$ 时，这个群就是\n\n$$\nE_2^{0,127}\n=\\operatorname{Ext}_A^{0,127}(\\mathbb F_2,\\mathbb F_2).\n$$\n\n一个非零分次同态必须把定义域的非零分量送到值域的非零分量。这里二者唯一的非零分量都在内部次数 $0$，所以非零分次同态只能具有内部次数 $0$。次数为 $127$ 的同态必为零，因此 $E_2^{0,127}=0$。\n\n当 $r\\ge3$ 时，$2-r\u003c0$，故\n\n$$\nE_2^{2-r,129-r}\n=\\operatorname{Ext}_A^{2-r,129-r}(\\mathbb F_2,\\mathbb F_2)=0.\n$$\n\n为把这个零群结论传到第 $r$ 页，固定双次数 $(2-r,129-r)$。若某一页在这个双次数为零，那么该页微分的核是零群，它在下一页的同调也是零群。由 $E_2=0$ 逐页归纳，便得到 $E_r^{2-r,129-r}=0$。\n\n两种情形覆盖了所有 $r\\ge2$，所以每个可能射入 $E_r^{2,128}$ 的微分都有零源群，入射像恒为零。证毕。\n\n因此，只要 $h_6^2$ 的非零相容像 $x_r$ 已经定义在第 $r$ 页，它就不会是入射边界；若再有 $d_r(x_r)=0$，则下一页的像 $x_{r+1}$ 仍非零。初始类的非零性与本引理分别解决了起点和入射问题；永久存活还要求对每一页证明出射微分为零，并据此建立非零极限类。\n",
      "review": "reviews/T00a-v1-review.json",
      "sha256": "13ccedca46a8e91b8c324a8952ecd76e1bd2c6a61016b2e06d2b4494370d85e7",
      "source": "math/T00a-v1.md",
      "title": "排除入射微分",
      "title_html": "排除入射微分",
      "upstream": [
        {
          "id": "T00",
          "sha256": "35fa6c97c4ad80f102b7badf4fc411a4ad7d5b99f4f16fc6b76bf885d8d783fd",
          "version": "v2"
        }
      ],
      "version": "v1"
    },
    {
      "chapter_id": "quotients",
      "dependencies_sha256": "ac4307f7b1833ff1227e51cecf158c46a493323305afdcbe3e9ed737a8374060",
      "dependencies_source": "math/T01a-v1.dependencies.json",
      "html": "\u003ch2\u003e有限 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda\"\u003e\u003c/span\u003e 商的过滤\u003c/h2\u003e\n\u003cp\u003e现在把经典 Adams 谱序列中的有限页信息放入合成谱的同伦群。取 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E=H\\mathbb F_2\"\u003e\u003c/span\u003e，记\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\nu:\\mathrm{Sp}\\longrightarrow\\mathrm{Syn}_{H\\mathbb F_2}\n\"\u003e\u003c/div\u003e\u003cp\u003e为合成谱函子，并记合成球谱为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\mathbb S=\\nu S^0=S^{0,0}\"\u003e\u003c/span\u003e。这里 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\nu\"\u003e\u003c/span\u003e 是一个函子。合成谱所在的范畴是稳定对称幺半范畴，具有双分次球谱与典范映射\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nS^{a,b}=\\Sigma^{a-b}\\nu S^b,\n\\qquad \\lambda:S^{0,-1}\\longrightarrow S^{0,0}.\n\"\u003e\u003c/div\u003e\u003cp\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-004\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[4]\u003c/button\u003e 定义 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\pi_{n,w}Y=[S^{n,w},Y]\"\u003e\u003c/span\u003e，并采用平移 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\Sigma Y=S^{1,0}\\wedge Y\"\u003e\u003c/span\u003e。特别地，\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda\\in\\pi_{0,-1}\\mathbb S\"\u003e\u003c/span\u003e，乘以 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^k\"\u003e\u003c/span\u003e 把权重 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"w\"\u003e\u003c/span\u003e 降为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"w-k\"\u003e\u003c/span\u003e，不改变 stem。对正整数 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"q\"\u003e\u003c/span\u003e，定义\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nQ_q=\\mathbb S/\\lambda^q\n=\\operatorname{cofib}\\bigl(\\lambda^q:S^{0,-q}\\longrightarrow\\mathbb S\\bigr).\n\"\u003e\u003c/div\u003e\u003cp\u003e以下使用稳定范畴中余纤维的函子性及其同伦长正合列。\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Q_q\"\u003e\u003c/span\u003e 的合成 Adams 过滤记为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^s\\pi_{n,w}Q_q\"\u003e\u003c/span\u003e；其关联分次仍是 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^s/F^{s+1}\"\u003e\u003c/span\u003e。\u003c/p\u003e\n\u003ch3\u003e比较两个次数约定\u003c/h3\u003e\n\u003cp\u003e经典 Adams 谱序列中，以 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_r^{s,t}\"\u003e\u003c/span\u003e 表示在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_2^{s,t}\"\u003e\u003c/span\u003e 中到 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_r\"\u003e\u003c/span\u003e 为止仍为循环的子群，以 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"B_r^{s,t}\"\u003e\u003c/span\u003e 表示到 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_r\"\u003e\u003c/span\u003e 为止的边界子群。这里使用谱序列的循环、边界子群约定：后页的循环取在前页中的原像，后页的边界也取原像并包含已有边界。因此\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nZ_1=E_2,\\qquad B_1=0,\\qquad\nE_{r+1}^{s,t}=Z_r^{s,t}/B_r^{s,t},\n\"\u003e\u003c/div\u003e\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nB_r\\subseteq B_{r+1},\\qquad Z_{r+1}\\subseteq Z_r.\n\"\u003e\u003c/div\u003e\u003cp\u003e由于边界本身在后页已经代表零，每个 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"B_r\"\u003e\u003c/span\u003e 包含在所有后续循环子群中；因而下列出现的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_i/B_j\"\u003e\u003c/span\u003e 均按这些子群在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_2\"\u003e\u003c/span\u003e 中的包含来理解。\u003c/p\u003e\n\u003cp\u003e合成 Adams 谱序列采用三次数 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(s,t,w)\"\u003e\u003c/span\u003e，收敛对象的双次数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(t-s,w)\"\u003e\u003c/span\u003e。Burklund–Hahn–Senger 使用的三次数记为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(s,k,v)\"\u003e\u003c/span\u003e，收敛对象则写成 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\pi_{k,k+v}\"\u003e\u003c/span\u003e。两者描述同一双次数时，必须有\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nk=t-s,\\qquad v=w-k,\n\"\u003e\u003c/div\u003e\u003cp\u003e从而\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\ns-v=s-(w-k)=s+k-w=t-w.\n\"\u003e\u003c/div\u003e\u003cp\u003e这个换元也解释了为什么经典 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_2^{s,t}\"\u003e\u003c/span\u003e 的元素在本文的合成三次数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(s,t,t)\"\u003e\u003c/span\u003e：它在另一约定中的第三次数是 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"v=s\"\u003e\u003c/span\u003e，于是 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"w=k+s=t\"\u003e\u003c/span\u003e。\u003c/p\u003e\n\u003ch3\u003e有限商的关联分次\u003c/h3\u003e\n\u003cp\u003e合成 Adams 塔的第一页是经典 Adams 第一页的自由 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\mathbb F_2[\\lambda]\"\u003e\u003c/span\u003e 延拓，其中经典元素的合成权重为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"t\"\u003e\u003c/span\u003e；乘以 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda\"\u003e\u003c/span\u003e 保持 Adams 过滤，权重减一。第二页有相同的多项式延拓描述。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-005\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[5]\u003c/button\u003e 对 Adams 塔逐层取 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^q\"\u003e\u003c/span\u003e 的余纤维，得到 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Q_q\"\u003e\u003c/span\u003e 的 Adams 塔。在每层的第一页群上，\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^q\"\u003e\u003c/span\u003e 单射，所以余纤维长正合列的核项为零，余下的群就是商。因此\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n{}^{\\mathrm{syn}}E_2(Q_q)\n\\cong E_2(S^0)\\otimes_{\\mathbb F_2}\n\\mathbb F_2[\\lambda]/(\\lambda^q).\n\"\u003e\u003c/div\u003e\u003cp\u003e这里从第一页到第二页也可直接核实：第一页的微分是经典第一页微分的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda\"\u003e\u003c/span\u003e 线性延拓，商掉 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^q\"\u003e\u003c/span\u003e 后是 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"q\"\u003e\u003c/span\u003e 个经典链复形的直和，取同调便得到上式。\u003c/p\u003e\n\u003cp\u003eBurklund–Hahn–Senger 对有限商的计算给出：在他们的次数约定下，当 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\\ge v\u0026gt;s-q\"\u003e\u003c/span\u003e 时，极限页为\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n{}^qE_\\infty^{s,k,v}\n\\cong Z_{q-s+v}^{s,k}/B_{s-v+1}^{s,k},\n\"\u003e\u003c/div\u003e\u003cp\u003e而范围之外为零。右侧的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"k\"\u003e\u003c/span\u003e 是 stem，并非内部次数。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-006\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[6]\u003c/button\u003e 对固定的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(n,w)\"\u003e\u003c/span\u003e，令 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"k=n\"\u003e\u003c/span\u003e、\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"t=n+s\"\u003e\u003c/span\u003e，再令\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\na=n+s-w=s-v.\n\"\u003e\u003c/div\u003e\u003cp\u003e于是条件 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\\ge v\u0026gt;s-q\"\u003e\u003c/span\u003e 正好成为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\\le a\u0026lt;q\"\u003e\u003c/span\u003e，分子下标成为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"q-a\"\u003e\u003c/span\u003e，分母下标成为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"1+a\"\u003e\u003c/span\u003e。\u003c/p\u003e\n\u003cp\u003e要把极限页用于同伦群的过滤，还需要收敛条件。\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"2\"\u003e\u003c/span\u003e 完成球谱有下界，因而是 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"H\\mathbb F_2\"\u003e\u003c/span\u003e-幂零完成的谱；这表示它的模 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"2\"\u003e\u003c/span\u003e Adams 分辨收敛到它自身。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-007\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[7]\u003c/button\u003e 它的经典 Adams 谱序列已知强收敛。对于满足这些条件的经典谱，有限 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda\"\u003e\u003c/span\u003e 商的合成 Adams 谱序列也强收敛：有限商的合成 Adams 分辨是完成的，而有限商的页描述满足相应的强收敛条件。这里使用有限商强收敛这一结果的完整结论，包括过滤的分离性和与关联分次的识别。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-008\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[8]\u003c/button\u003e 因此得到\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\operatorname{gr}_F^s\\pi_{n,w}Q_q\n\\cong\n\\begin{cases}\nZ_{q-n-s+w}^{s,n+s}/B_{1+n+s-w}^{s,n+s},\n\u0026amp;0\\le n+s-w\u0026lt;q,\\\\\n0,\u0026amp;\\text{其他情形}.\n\\end{cases}\n\"\u003e\u003c/div\u003e\u003cp\u003e同一个强收敛结论还给出\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\bigcap_sF^s\\pi_{n,w}Q_q=0.\n\"\u003e\u003c/div\u003e\u003cp\u003e上面的商群是同伦群的一个过滤层；它不是整个同伦群。特别地，一个同伦类的首项为零，首先只能说明这个类进入更高过滤。\u003c/p\u003e\n\u003ch3\u003e约化映射与乘 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda\"\u003e\u003c/span\u003e\u003c/h3\u003e\n\u003cp\u003e对 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"q\\ge p\\ge1\"\u003e\u003c/span\u003e，令 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"b=q-p\"\u003e\u003c/span\u003e。约化映射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\rho_{p,q}:Q_q\\to Q_p\"\u003e\u003c/span\u003e 由下面的余纤维图定义：\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\begin{array}{ccc}\nS^{0,-q}\u0026amp;\\xrightarrow{\\lambda^q}\u0026amp;\\mathbb S\\\\\n{\\scriptstyle\\lambda^b}\\downarrow\u0026amp;\u0026amp;\\downarrow{\\scriptstyle1}\\\\\nS^{0,-p}\u0026amp;\\xrightarrow{\\lambda^p}\u0026amp;\\mathbb S.\n\\end{array}\n\"\u003e\u003c/div\u003e\u003cp\u003e另一个图定义映射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"j_{p,q}:\\Sigma^{0,-b}Q_p\\to Q_q\"\u003e\u003c/span\u003e：\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\begin{array}{ccc}\nS^{0,-q}\u0026amp;\\xrightarrow{\\lambda^p}\u0026amp;S^{0,-b}\\\\\n{\\scriptstyle1}\\downarrow\u0026amp;\u0026amp;\\downarrow{\\scriptstyle\\lambda^b}\\\\\nS^{0,-q}\u0026amp;\\xrightarrow{\\lambda^q}\u0026amp;\\mathbb S.\n\\end{array}\n\"\u003e\u003c/div\u003e\u003cp\u003e第一个方块交换，因为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^p\\lambda^b=\\lambda^q\"\u003e\u003c/span\u003e；第二个方块由同一个等式交换。逐层作用于 Adams 塔，\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\rho_{p,q}\"\u003e\u003c/span\u003e 在第一页及第二页上把 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^az\"\u003e\u003c/span\u003e 送到同名的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^az\"\u003e\u003c/span\u003e，但丢掉指数至少为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"p\"\u003e\u003c/span\u003e 的项；\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"j_{p,q}\"\u003e\u003c/span\u003e 把 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^az\"\u003e\u003c/span\u003e 送到 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^{a+b}z\"\u003e\u003c/span\u003e。这些描述来自图中右侧映射在自由多项式第一页上的作用，因而与取微分同调相容。\u003c/p\u003e\n\u003cp\u003e现在取 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"a=n+s-w\"\u003e\u003c/span\u003e。若 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\\le a\u0026lt;p\"\u003e\u003c/span\u003e，约化映射在关联分次上是\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nZ_{q-a}^{s,n+s}/B_{1+a}^{s,n+s}\n\\longrightarrow\nZ_{p-a}^{s,n+s}/B_{1+a}^{s,n+s},\n\\qquad [z]\\longmapsto[z].\n\"\u003e\u003c/div\u003e\u003cp\u003e这是由 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_{q-a}\\subseteq Z_{p-a}\"\u003e\u003c/span\u003e 诱导的映射：能经过较多经典微分仍为循环的元素，也能经过较少微分。它在这一层单射，因为两边除以同一个边界子群。若 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"p\\le a\u0026lt;q\"\u003e\u003c/span\u003e，目标层为零；若源不满足 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\\le a\u0026lt;q\"\u003e\u003c/span\u003e，源层本身为零。\u003c/p\u003e\n\u003cp\u003e对 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"j_{p,q}\"\u003e\u003c/span\u003e，把它看成同伦群映射\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\pi_{n,w}Q_p\\longrightarrow\\pi_{n,w-b}Q_q.\n\"\u003e\u003c/div\u003e\u003cp\u003e源的指数是 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"a=n+s-w\"\u003e\u003c/span\u003e，目标的指数是 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"a+b\"\u003e\u003c/span\u003e。当 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\\le a\u0026lt;p\"\u003e\u003c/span\u003e 时，目标的循环下标满足\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nq-(a+b)=q-a-(q-p)=p-a,\n\"\u003e\u003c/div\u003e\u003cp\u003e所以关联分次映射为\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nZ_{p-a}^{s,n+s}/B_{1+a}^{s,n+s}\n\\longrightarrow\nZ_{p-a}^{s,n+s}/B_{1+a+b}^{s,n+s},\n\\qquad[z]\\longmapsto[z].\n\"\u003e\u003c/div\u003e\u003cp\u003e这是同一循环子群上的商映射，在这一层满射。源范围之外，源层为零；若相应目标仍有非零层，这个源为零的映射当然不能由上述满射断言覆盖。\u003c/p\u003e\n\u003cp\u003e最后考虑同一有限商上的乘法\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\lambda^k:\\pi_{n,w}Q_q\\longrightarrow\\pi_{n,w-k}Q_q,\n\\qquad 1\\le k\u0026lt;q.\n\"\u003e\u003c/div\u003e\u003cp\u003e令 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"p=q-k\"\u003e\u003c/span\u003e。由上面的两个余纤维图可得分解\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\Sigma^{0,-k}Q_q\n\\xrightarrow{\\Sigma^{0,-k}\\rho_{q-k,q}}\n\\Sigma^{0,-k}Q_{q-k}\n\\xrightarrow{j_{q-k,q}}Q_q.\n\"\u003e\u003c/div\u003e\u003cp\u003e把定义这两条箭头的方块复合，在余纤维的源与靶上都得到乘 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^k\"\u003e\u003c/span\u003e 的方块，所以这个复合就是所写的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^k\"\u003e\u003c/span\u003e。当 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\\le a\u0026lt;q-k\"\u003e\u003c/span\u003e 时，它在关联分次上依次为\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\frac{Z_{q-a}^{s,n+s}}{B_{1+a}^{s,n+s}}\n\\longrightarrow\n\\frac{Z_{q-k-a}^{s,n+s}}{B_{1+a}^{s,n+s}}\n\\longrightarrow\n\\frac{Z_{q-k-a}^{s,n+s}}{B_{1+a+k}^{s,n+s}}.\n\"\u003e\u003c/div\u003e\u003cp\u003e第一条箭头来自循环子群包含，第二条箭头扩大边界子群。若 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"q-k\\le a\u0026lt;q\"\u003e\u003c/span\u003e，目标指数 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"a+k\"\u003e\u003c/span\u003e 已经不小于 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"q\"\u003e\u003c/span\u003e，目标层为零；若源超出 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\\le a\u0026lt;q\"\u003e\u003c/span\u003e，源层为零。\u003c/p\u003e\n\u003cp\u003e这也指出提升问题中的一个实际条件：同一 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Q_q\"\u003e\u003c/span\u003e 上的乘 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^k\"\u003e\u003c/span\u003e，在关联分次上并不只是扩大分母，还把分子从 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_{q-a}\"\u003e\u003c/span\u003e 放入较大的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_{q-k-a}\"\u003e\u003c/span\u003e。因此这些公式本身没有证明它满射；要把某个给定同伦类写成 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^k\"\u003e\u003c/span\u003e 倍，还必须验证它的首项落在这个像中，并处理更高过滤的误差。\u003c/p\u003e\n",
      "id": "T01a",
      "markdown": "## 有限 $\\lambda$ 商的过滤\n\n现在把经典 Adams 谱序列中的有限页信息放入合成谱的同伦群。取 $E=H\\mathbb F_2$，记\n\n$$\n\\nu:\\mathrm{Sp}\\longrightarrow\\mathrm{Syn}_{H\\mathbb F_2}\n$$\n\n为合成谱函子，并记合成球谱为 $\\mathbb S=\\nu S^0=S^{0,0}$。这里 $\\nu$ 是一个函子。合成谱所在的范畴是稳定对称幺半范畴，具有双分次球谱与典范映射\n\n$$\nS^{a,b}=\\Sigma^{a-b}\\nu S^b,\n\\qquad \\lambda:S^{0,-1}\\longrightarrow S^{0,0}.\n$$\n\n[[EXT-004]] 定义 $\\pi_{n,w}Y=[S^{n,w},Y]$，并采用平移 $\\Sigma Y=S^{1,0}\\wedge Y$。特别地，$\\lambda\\in\\pi_{0,-1}\\mathbb S$，乘以 $\\lambda^k$ 把权重 $w$ 降为 $w-k$，不改变 stem。对正整数 $q$，定义\n\n$$\nQ_q=\\mathbb S/\\lambda^q\n=\\operatorname{cofib}\\bigl(\\lambda^q:S^{0,-q}\\longrightarrow\\mathbb S\\bigr).\n$$\n\n以下使用稳定范畴中余纤维的函子性及其同伦长正合列。$Q_q$ 的合成 Adams 过滤记为 $F^s\\pi_{n,w}Q_q$；其关联分次仍是 $F^s/F^{s+1}$。\n\n### 比较两个次数约定\n\n经典 Adams 谱序列中，以 $Z_r^{s,t}$ 表示在 $E_2^{s,t}$ 中到 $d_r$ 为止仍为循环的子群，以 $B_r^{s,t}$ 表示到 $d_r$ 为止的边界子群。这里使用谱序列的循环、边界子群约定：后页的循环取在前页中的原像，后页的边界也取原像并包含已有边界。因此\n\n$$\nZ_1=E_2,\\qquad B_1=0,\\qquad\nE_{r+1}^{s,t}=Z_r^{s,t}/B_r^{s,t},\n$$\n\n$$\nB_r\\subseteq B_{r+1},\\qquad Z_{r+1}\\subseteq Z_r.\n$$\n\n由于边界本身在后页已经代表零，每个 $B_r$ 包含在所有后续循环子群中；因而下列出现的 $Z_i/B_j$ 均按这些子群在 $E_2$ 中的包含来理解。\n\n合成 Adams 谱序列采用三次数 $(s,t,w)$，收敛对象的双次数为 $(t-s,w)$。Burklund–Hahn–Senger 使用的三次数记为 $(s,k,v)$，收敛对象则写成 $\\pi_{k,k+v}$。两者描述同一双次数时，必须有\n\n$$\nk=t-s,\\qquad v=w-k,\n$$\n\n从而\n\n$$\ns-v=s-(w-k)=s+k-w=t-w.\n$$\n\n这个换元也解释了为什么经典 $E_2^{s,t}$ 的元素在本文的合成三次数为 $(s,t,t)$：它在另一约定中的第三次数是 $v=s$，于是 $w=k+s=t$。\n\n### 有限商的关联分次\n\n合成 Adams 塔的第一页是经典 Adams 第一页的自由 $\\mathbb F_2[\\lambda]$ 延拓，其中经典元素的合成权重为 $t$；乘以 $\\lambda$ 保持 Adams 过滤，权重减一。第二页有相同的多项式延拓描述。[[EXT-005]] 对 Adams 塔逐层取 $\\lambda^q$ 的余纤维，得到 $Q_q$ 的 Adams 塔。在每层的第一页群上，$\\lambda^q$ 单射，所以余纤维长正合列的核项为零，余下的群就是商。因此\n\n$$\n{}^{\\mathrm{syn}}E_2(Q_q)\n\\cong E_2(S^0)\\otimes_{\\mathbb F_2}\n\\mathbb F_2[\\lambda]/(\\lambda^q).\n$$\n\n这里从第一页到第二页也可直接核实：第一页的微分是经典第一页微分的 $\\lambda$ 线性延拓，商掉 $\\lambda^q$ 后是 $q$ 个经典链复形的直和，取同调便得到上式。\n\nBurklund–Hahn–Senger 对有限商的计算给出：在他们的次数约定下，当 $s\\ge v\u003es-q$ 时，极限页为\n\n$$\n{}^qE_\\infty^{s,k,v}\n\\cong Z_{q-s+v}^{s,k}/B_{s-v+1}^{s,k},\n$$\n\n而范围之外为零。右侧的 $k$ 是 stem，并非内部次数。[[EXT-006]] 对固定的 $(n,w)$，令 $k=n$、$t=n+s$，再令\n\n$$\na=n+s-w=s-v.\n$$\n\n于是条件 $s\\ge v\u003es-q$ 正好成为 $0\\le a\u003cq$，分子下标成为 $q-a$，分母下标成为 $1+a$。\n\n要把极限页用于同伦群的过滤，还需要收敛条件。$2$ 完成球谱有下界，因而是 $H\\mathbb F_2$-幂零完成的谱；这表示它的模 $2$ Adams 分辨收敛到它自身。[[EXT-007]] 它的经典 Adams 谱序列已知强收敛。对于满足这些条件的经典谱，有限 $\\lambda$ 商的合成 Adams 谱序列也强收敛：有限商的合成 Adams 分辨是完成的，而有限商的页描述满足相应的强收敛条件。这里使用有限商强收敛这一结果的完整结论，包括过滤的分离性和与关联分次的识别。[[EXT-008]] 因此得到\n\n$$\n\\operatorname{gr}_F^s\\pi_{n,w}Q_q\n\\cong\n\\begin{cases}\nZ_{q-n-s+w}^{s,n+s}/B_{1+n+s-w}^{s,n+s},\n\u00260\\le n+s-w\u003cq,\\\\\n0,\u0026\\text{其他情形}.\n\\end{cases}\n$$\n\n同一个强收敛结论还给出\n\n$$\n\\bigcap_sF^s\\pi_{n,w}Q_q=0.\n$$\n\n上面的商群是同伦群的一个过滤层；它不是整个同伦群。特别地，一个同伦类的首项为零，首先只能说明这个类进入更高过滤。\n\n### 约化映射与乘 $\\lambda$\n\n对 $q\\ge p\\ge1$，令 $b=q-p$。约化映射 $\\rho_{p,q}:Q_q\\to Q_p$ 由下面的余纤维图定义：\n\n$$\n\\begin{array}{ccc}\nS^{0,-q}\u0026\\xrightarrow{\\lambda^q}\u0026\\mathbb S\\\\\n{\\scriptstyle\\lambda^b}\\downarrow\u0026\u0026\\downarrow{\\scriptstyle1}\\\\\nS^{0,-p}\u0026\\xrightarrow{\\lambda^p}\u0026\\mathbb S.\n\\end{array}\n$$\n\n另一个图定义映射 $j_{p,q}:\\Sigma^{0,-b}Q_p\\to Q_q$：\n\n$$\n\\begin{array}{ccc}\nS^{0,-q}\u0026\\xrightarrow{\\lambda^p}\u0026S^{0,-b}\\\\\n{\\scriptstyle1}\\downarrow\u0026\u0026\\downarrow{\\scriptstyle\\lambda^b}\\\\\nS^{0,-q}\u0026\\xrightarrow{\\lambda^q}\u0026\\mathbb S.\n\\end{array}\n$$\n\n第一个方块交换，因为 $\\lambda^p\\lambda^b=\\lambda^q$；第二个方块由同一个等式交换。逐层作用于 Adams 塔，$\\rho_{p,q}$ 在第一页及第二页上把 $\\lambda^az$ 送到同名的 $\\lambda^az$，但丢掉指数至少为 $p$ 的项；$j_{p,q}$ 把 $\\lambda^az$ 送到 $\\lambda^{a+b}z$。这些描述来自图中右侧映射在自由多项式第一页上的作用，因而与取微分同调相容。\n\n现在取 $a=n+s-w$。若 $0\\le a\u003cp$，约化映射在关联分次上是\n\n$$\nZ_{q-a}^{s,n+s}/B_{1+a}^{s,n+s}\n\\longrightarrow\nZ_{p-a}^{s,n+s}/B_{1+a}^{s,n+s},\n\\qquad [z]\\longmapsto[z].\n$$\n\n这是由 $Z_{q-a}\\subseteq Z_{p-a}$ 诱导的映射：能经过较多经典微分仍为循环的元素，也能经过较少微分。它在这一层单射，因为两边除以同一个边界子群。若 $p\\le a\u003cq$，目标层为零；若源不满足 $0\\le a\u003cq$，源层本身为零。\n\n对 $j_{p,q}$，把它看成同伦群映射\n\n$$\n\\pi_{n,w}Q_p\\longrightarrow\\pi_{n,w-b}Q_q.\n$$\n\n源的指数是 $a=n+s-w$，目标的指数是 $a+b$。当 $0\\le a\u003cp$ 时，目标的循环下标满足\n\n$$\nq-(a+b)=q-a-(q-p)=p-a,\n$$\n\n所以关联分次映射为\n\n$$\nZ_{p-a}^{s,n+s}/B_{1+a}^{s,n+s}\n\\longrightarrow\nZ_{p-a}^{s,n+s}/B_{1+a+b}^{s,n+s},\n\\qquad[z]\\longmapsto[z].\n$$\n\n这是同一循环子群上的商映射，在这一层满射。源范围之外，源层为零；若相应目标仍有非零层，这个源为零的映射当然不能由上述满射断言覆盖。\n\n最后考虑同一有限商上的乘法\n\n$$\n\\lambda^k:\\pi_{n,w}Q_q\\longrightarrow\\pi_{n,w-k}Q_q,\n\\qquad 1\\le k\u003cq.\n$$\n\n令 $p=q-k$。由上面的两个余纤维图可得分解\n\n$$\n\\Sigma^{0,-k}Q_q\n\\xrightarrow{\\Sigma^{0,-k}\\rho_{q-k,q}}\n\\Sigma^{0,-k}Q_{q-k}\n\\xrightarrow{j_{q-k,q}}Q_q.\n$$\n\n把定义这两条箭头的方块复合，在余纤维的源与靶上都得到乘 $\\lambda^k$ 的方块，所以这个复合就是所写的 $\\lambda^k$。当 $0\\le a\u003cq-k$ 时，它在关联分次上依次为\n\n$$\n\\frac{Z_{q-a}^{s,n+s}}{B_{1+a}^{s,n+s}}\n\\longrightarrow\n\\frac{Z_{q-k-a}^{s,n+s}}{B_{1+a}^{s,n+s}}\n\\longrightarrow\n\\frac{Z_{q-k-a}^{s,n+s}}{B_{1+a+k}^{s,n+s}}.\n$$\n\n第一条箭头来自循环子群包含，第二条箭头扩大边界子群。若 $q-k\\le a\u003cq$，目标指数 $a+k$ 已经不小于 $q$，目标层为零；若源超出 $0\\le a\u003cq$，源层为零。\n\n这也指出提升问题中的一个实际条件：同一 $Q_q$ 上的乘 $\\lambda^k$，在关联分次上并不只是扩大分母，还把分子从 $Z_{q-a}$ 放入较大的 $Z_{q-k-a}$。因此这些公式本身没有证明它满射；要把某个给定同伦类写成 $\\lambda^k$ 倍，还必须验证它的首项落在这个像中，并处理更高过滤的误差。\n",
      "review": "reviews/T01a-v1-review.json",
      "sha256": "894c6b8847a3f1d1f25850d8191c16fd50ab15c6bff2281c9d6f35a4fa2fedc1",
      "source": "math/T01a-v1.md",
      "title": "有限 $\\lambda$ 商的过滤",
      "title_html": "有限 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda\"\u003e\u003c/span\u003e 商的过滤",
      "upstream": [
        {
          "id": "T00",
          "sha256": "35fa6c97c4ad80f102b7badf4fc411a4ad7d5b99f4f16fc6b76bf885d8d783fd",
          "version": "v2"
        }
      ],
      "version": "v1"
    },
    {
      "chapter_id": "quotients",
      "dependencies_sha256": "638c4daa43cc1c6d3805ae6132adcf958f0f0dcc563d5693c2fa014553fed0b7",
      "dependencies_source": "math/T01b-v1.dependencies.json",
      "html": "\u003ch2\u003e过滤的有限范围\u003c/h2\u003e\n\u003cp\u003e有限 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda\"\u003e\u003c/span\u003e 商的关联分次公式给出\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\operatorname{gr}_F^s\\pi_{n,w}Q_q=0\n\\quad\\text{除非}\\quad 0\\le n+s-w\u0026lt;q.\n\"\u003e\u003c/div\u003e\u003cp\u003e把不等式中的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\"\u003e\u003c/span\u003e 单独移到中间，得到\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nw-n\\le s\u0026lt;w-n+q.\n\"\u003e\u003c/div\u003e\u003cp\u003e由于 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\"\u003e\u003c/span\u003e 是整数，可能出现非零关联分次的范围恰被限制在\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nw-n\\le s\\le w-n+q-1.\n\"\u003e\u003c/div\u003e\u003cp\u003e此外，负的 Adams 过滤没有 Ext 群，所以还要与 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\\ge0\"\u003e\u003c/span\u003e 取交。这个范围只列出可能非零的层，并不声称范围内每一层都非零。\u003c/p\u003e\n\u003cp\u003eAdams 过滤从 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^0G=G\"\u003e\u003c/span\u003e 开始。若下界 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"L=w-n\"\u003e\u003c/span\u003e 为正，则 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\\le s\u0026lt;L\"\u003e\u003c/span\u003e 的关联分次都为零；逐次使用 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^sG/F^{s+1}G=0\"\u003e\u003c/span\u003e，得到 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"G=F^0G=F^1G=\\cdots=F^LG\"\u003e\u003c/span\u003e。因此表中的正下界也确实是整个同伦群的最低可能过滤。\u003c/p\u003e\n\u003ch3\u003e从关联分次消失得到严格的零\u003c/h3\u003e\n\u003cp\u003e令 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"G=\\pi_{n,w}Q_q\"\u003e\u003c/span\u003e，设对所有 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\\ge N\"\u003e\u003c/span\u003e 都有 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{gr}_F^sG=0\"\u003e\u003c/span\u003e。根据关联分次的定义，\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^sG/F^{s+1}G=0\"\u003e\u003c/span\u003e 意味着 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^sG=F^{s+1}G\"\u003e\u003c/span\u003e。依次使用这些等式，得到\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nF^NG=F^{N+1}G=F^{N+2}G=\\cdots.\n\"\u003e\u003c/div\u003e\u003cp\u003e因此\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nF^NG=\\bigcap_{j\\ge0}F^{N+j}G.\n\"\u003e\u003c/div\u003e\u003cp\u003e过滤是下降的，所以丢去有限个较大的子群不会改变这个交；它等于所有过滤子群的交。有限商的合成 Adams 强收敛已经给出过滤的分离性，故这个交为零。由此得到严格结论\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nF^NG=0.\n\"\u003e\u003c/div\u003e\u003cp\u003e特别地，可以取 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"N=w-n+q\"\u003e\u003c/span\u003e。这里是“关联分次消失”和“过滤分离”共同推出零；前一个条件单独只会给出一串相等的过滤子群。\u003c/p\u003e\n\u003ch3\u003e将要比较的双次数\u003c/h3\u003e\n\u003cp\u003e把各组的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"w-n\"\u003e\u003c/span\u003e 和 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"q\"\u003e\u003c/span\u003e 代入，得到下表。最后一列由刚刚的分离性论证得到，是整个过滤子群为零的断言。\u003c/p\u003e\n\u003ctable\u003e\n\u003cthead\u003e\n\u003ctr\u003e\n\u003cth\u003e同伦群\u003c/th\u003e\n\u003cth\u003e指数 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"a=n+s-w\"\u003e\u003c/span\u003e\u003c/th\u003e\n\u003cth\u003e可能非零的过滤层\u003c/th\u003e\n\u003cth\u003e严格为零的高过滤子群\u003c/th\u003e\n\u003c/tr\u003e\n\u003c/thead\u003e\n\u003ctbody\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\pi_{123,132}Q_{11}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"123+s-132=s-9\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\\le s-9\u0026lt;11\"\u003e\u003c/span\u003e，即 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"9\\le s\\le19\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^{20}=0\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\pi_{124,133}Q_{11}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"124+s-133=s-9\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\\le s-9\u0026lt;11\"\u003e\u003c/span\u003e，即 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"9\\le s\\le19\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^{20}=0\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\pi_{124,131}Q_{11}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"124+s-131=s-7\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\\le s-7\u0026lt;11\"\u003e\u003c/span\u003e，即 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"7\\le s\\le17\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^{18}=0\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\pi_{124,131}Q_9\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"124+s-131=s-7\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\\le s-7\u0026lt;9\"\u003e\u003c/span\u003e，即 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"7\\le s\\le15\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^{16}=0\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\pi_{124,137}Q_9\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"124+s-137=s-13\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\\le s-13\u0026lt;9\"\u003e\u003c/span\u003e，即 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"13\\le s\\le21\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^{22}=0\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\pi_{125,139}Q_9\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"125+s-139=s-14\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\\le s-14\u0026lt;9\"\u003e\u003c/span\u003e，即 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"14\\le s\\le22\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^{23}=0\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\pi_{125,140}Q_9\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"125+s-140=s-15\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\\le s-15\u0026lt;9\"\u003e\u003c/span\u003e，即 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"15\\le s\\le23\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^{24}=0\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003c/tbody\u003e\n\u003c/table\u003e\n\u003ch3\u003e乘 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^6\"\u003e\u003c/span\u003e 的三个相关层\u003c/h3\u003e\n\u003cp\u003e考虑\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\lambda^6:\\pi_{124,137}Q_9\\longrightarrow\\pi_{124,131}Q_9.\n\"\u003e\u003c/div\u003e\u003cp\u003e源的指数是 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"a=s-13\"\u003e\u003c/span\u003e，目标的指数是 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"a+6=s-7\"\u003e\u003c/span\u003e。在源、靶都可能非零的范围 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"13\\le s\\le15\"\u003e\u003c/span\u003e 中，前述同商乘法公式成为\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\frac{Z_{22-s}^{s,124+s}}{B_{s-12}^{s,124+s}}\n\\longrightarrow\n\\frac{Z_{16-s}^{s,124+s}}{B_{s-6}^{s,124+s}}.\n\"\u003e\u003c/div\u003e\u003cp\u003e逐层代入得到下表。每一行的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z,B\"\u003e\u003c/span\u003e 都取在该行标出的同一个经典 Ext 群中。\u003c/p\u003e\n\u003ctable\u003e\n\u003cthead\u003e\n\u003ctr\u003e\n\u003cth\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\"\u003e\u003c/span\u003e\u003c/th\u003e\n\u003cth\u003e所在 Ext 群\u003c/th\u003e\n\u003cth\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^6\"\u003e\u003c/span\u003e 的源层\u003c/th\u003e\n\u003cth\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^6\"\u003e\u003c/span\u003e 的靶层\u003c/th\u003e\n\u003c/tr\u003e\n\u003c/thead\u003e\n\u003ctbody\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"13\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{13,137}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_9/B_1\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_3/B_7\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"14\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{14,138}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_8/B_2\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_2/B_8\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"15\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{15,139}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_7/B_3\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_1/B_9\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003c/tbody\u003e\n\u003c/table\u003e\n\u003cp\u003e例如第一行，源的下标为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"22-13=9\"\u003e\u003c/span\u003e 和 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"13-12=1\"\u003e\u003c/span\u003e，靶的下标为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"16-13=3\"\u003e\u003c/span\u003e 和 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"13-6=7\"\u003e\u003c/span\u003e；另两行分别把 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\"\u003e\u003c/span\u003e 换为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"14,15\"\u003e\u003c/span\u003e。每一行的映射都是先包含循环子群，再扩大边界子群。\u003c/p\u003e\n\u003cp\u003e当 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\u0026lt;13\"\u003e\u003c/span\u003e 时源层为零。源在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"16\\le s\\le21\"\u003e\u003c/span\u003e 仍可能有非零层，但其像所在的目标过滤已经包含在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^{16}\\pi_{124,131}Q_9=0\"\u003e\u003c/span\u003e 中；当 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\\ge22\"\u003e\u003c/span\u003e 时，源过滤本身也已经为零。因此，对于这个映射，只有表中的三个过滤层可能给出非零像。\u003c/p\u003e\n\u003cp\u003e再比较约化映射\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\rho_{9,11}:\\pi_{124,131}Q_{11}\n\\longrightarrow\\pi_{124,131}Q_9.\n\"\u003e\u003c/div\u003e\u003cp\u003e两侧的指数都为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"a=s-7\"\u003e\u003c/span\u003e，所以关联分次映射是\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\frac{Z_{18-s}^{s,124+s}}{B_{s-6}^{s,124+s}}\n\\longrightarrow\n\\frac{Z_{16-s}^{s,124+s}}{B_{s-6}^{s,124+s}}.\n\"\u003e\u003c/div\u003e\u003cp\u003e在相同的三个过滤层，其具体形式为\u003c/p\u003e\n\u003ctable\u003e\n\u003cthead\u003e\n\u003ctr\u003e\n\u003cth\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\"\u003e\u003c/span\u003e\u003c/th\u003e\n\u003cth\u003e所在 Ext 群\u003c/th\u003e\n\u003cth\u003e约化映射的源层\u003c/th\u003e\n\u003cth\u003e约化映射的靶层\u003c/th\u003e\n\u003c/tr\u003e\n\u003c/thead\u003e\n\u003ctbody\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"13\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{13,137}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_5/B_7\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_3/B_7\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"14\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{14,138}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_4/B_8\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_2/B_8\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"15\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{15,139}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_3/B_9\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_1/B_9\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003c/tbody\u003e\n\u003c/table\u003e\n\u003cp\u003e这些下标来自 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"18-s\"\u003e\u003c/span\u003e、\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s-6\"\u003e\u003c/span\u003e 和 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"16-s\"\u003e\u003c/span\u003e 的逐行代入。约化映射的源循环条件与乘 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^6\"\u003e\u003c/span\u003e 的源循环条件不同。例如在过滤 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"13\"\u003e\u003c/span\u003e，来自 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Q_{11}\"\u003e\u003c/span\u003e 只要求首项有 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_5/B_7\"\u003e\u003c/span\u003e 中的原像，而来自乘 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda^6\"\u003e\u003c/span\u003e 要求有 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_9/B_1\"\u003e\u003c/span\u003e 中的原像。前者不能代替后者。\u003c/p\u003e\n\u003ch3\u003e相邻权重的可除性条件\u003c/h3\u003e\n\u003cp\u003e还需要区分下面的两个权重：\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\lambda:\\pi_{125,140}Q_9\\longrightarrow\\pi_{125,139}Q_9.\n\"\u003e\u003c/div\u003e\u003cp\u003e源的指数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s-15\"\u003e\u003c/span\u003e，目标的指数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s-14\"\u003e\u003c/span\u003e。过滤 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"14\"\u003e\u003c/span\u003e 时，源的指数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"-1\"\u003e\u003c/span\u003e，所以源层为零；目标的指数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"0\"\u003e\u003c/span\u003e，其层为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_9^{14,139}/B_1^{14,139}\"\u003e\u003c/span\u003e。因此目标在过滤 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"14\"\u003e\u003c/span\u003e 的非零首项不可能来自这个 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\lambda\"\u003e\u003c/span\u003e 映射。\u003c/p\u003e\n\u003cp\u003e当 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"15\\le s\\le22\"\u003e\u003c/span\u003e 时，源、靶都处在允许范围中，逐层映射为\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\frac{Z_{24-s}^{s,125+s}}{B_{s-14}^{s,125+s}}\n\\longrightarrow\n\\frac{Z_{23-s}^{s,125+s}}{B_{s-13}^{s,125+s}}.\n\"\u003e\u003c/div\u003e\u003cp\u003e这里的下标分别来自 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"9-(s-15)\"\u003e\u003c/span\u003e、\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"1+(s-15)\"\u003e\u003c/span\u003e、\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"9-(s-14)\"\u003e\u003c/span\u003e 和 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"1+(s-14)\"\u003e\u003c/span\u003e。当 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s=23\"\u003e\u003c/span\u003e 时，源层为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_1/B_9\"\u003e\u003c/span\u003e 而目标过滤为零；当 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\\ge24\"\u003e\u003c/span\u003e 时两侧过滤都为零。当 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\u0026lt;14\"\u003e\u003c/span\u003e 时两侧关联分次都为零。这列尽了所有过滤的情形，但还没有说明表中的循环子群包含诱导满射。\u003c/p\u003e\n\u003cp\u003e最后，设某个给定差值 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"D\"\u003e\u003c/span\u003e 已经属于 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^{13}\\pi_{124,131}Q_9\"\u003e\u003c/span\u003e。若能选出修正项，使剩余差值依次落入 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^{14}\"\u003e\u003c/span\u003e、\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^{15}\"\u003e\u003c/span\u003e、\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^{16}\"\u003e\u003c/span\u003e，那么最后的剩余差值严格等于零，因为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"F^{16}=0\"\u003e\u003c/span\u003e。这里已经确定了有限的停止界；各层修正项是否存在，以及是否能让同一个所选代表元同时满足另一条可除关系，仍须通过具体循环子群和映射的计算来证明。\u003c/p\u003e\n",
      "id": "T01b",
      "markdown": "## 过滤的有限范围\n\n有限 $\\lambda$ 商的关联分次公式给出\n\n$$\n\\operatorname{gr}_F^s\\pi_{n,w}Q_q=0\n\\quad\\text{除非}\\quad 0\\le n+s-w\u003cq.\n$$\n\n把不等式中的 $s$ 单独移到中间，得到\n\n$$\nw-n\\le s\u003cw-n+q.\n$$\n\n由于 $s$ 是整数，可能出现非零关联分次的范围恰被限制在\n\n$$\nw-n\\le s\\le w-n+q-1.\n$$\n\n此外，负的 Adams 过滤没有 Ext 群，所以还要与 $s\\ge0$ 取交。这个范围只列出可能非零的层，并不声称范围内每一层都非零。\n\nAdams 过滤从 $F^0G=G$ 开始。若下界 $L=w-n$ 为正，则 $0\\le s\u003cL$ 的关联分次都为零；逐次使用 $F^sG/F^{s+1}G=0$，得到 $G=F^0G=F^1G=\\cdots=F^LG$。因此表中的正下界也确实是整个同伦群的最低可能过滤。\n\n### 从关联分次消失得到严格的零\n\n令 $G=\\pi_{n,w}Q_q$，设对所有 $s\\ge N$ 都有 $\\operatorname{gr}_F^sG=0$。根据关联分次的定义，$F^sG/F^{s+1}G=0$ 意味着 $F^sG=F^{s+1}G$。依次使用这些等式，得到\n\n$$\nF^NG=F^{N+1}G=F^{N+2}G=\\cdots.\n$$\n\n因此\n\n$$\nF^NG=\\bigcap_{j\\ge0}F^{N+j}G.\n$$\n\n过滤是下降的，所以丢去有限个较大的子群不会改变这个交；它等于所有过滤子群的交。有限商的合成 Adams 强收敛已经给出过滤的分离性，故这个交为零。由此得到严格结论\n\n$$\nF^NG=0.\n$$\n\n特别地，可以取 $N=w-n+q$。这里是“关联分次消失”和“过滤分离”共同推出零；前一个条件单独只会给出一串相等的过滤子群。\n\n### 将要比较的双次数\n\n把各组的 $w-n$ 和 $q$ 代入，得到下表。最后一列由刚刚的分离性论证得到，是整个过滤子群为零的断言。\n\n| 同伦群 | 指数 $a=n+s-w$ | 可能非零的过滤层 | 严格为零的高过滤子群 |\n| --- | --- | --- | --- |\n| $\\pi_{123,132}Q_{11}$ | $123+s-132=s-9$ | $0\\le s-9\u003c11$，即 $9\\le s\\le19$ | $F^{20}=0$ |\n| $\\pi_{124,133}Q_{11}$ | $124+s-133=s-9$ | $0\\le s-9\u003c11$，即 $9\\le s\\le19$ | $F^{20}=0$ |\n| $\\pi_{124,131}Q_{11}$ | $124+s-131=s-7$ | $0\\le s-7\u003c11$，即 $7\\le s\\le17$ | $F^{18}=0$ |\n| $\\pi_{124,131}Q_9$ | $124+s-131=s-7$ | $0\\le s-7\u003c9$，即 $7\\le s\\le15$ | $F^{16}=0$ |\n| $\\pi_{124,137}Q_9$ | $124+s-137=s-13$ | $0\\le s-13\u003c9$，即 $13\\le s\\le21$ | $F^{22}=0$ |\n| $\\pi_{125,139}Q_9$ | $125+s-139=s-14$ | $0\\le s-14\u003c9$，即 $14\\le s\\le22$ | $F^{23}=0$ |\n| $\\pi_{125,140}Q_9$ | $125+s-140=s-15$ | $0\\le s-15\u003c9$，即 $15\\le s\\le23$ | $F^{24}=0$ |\n\n### 乘 $\\lambda^6$ 的三个相关层\n\n考虑\n\n$$\n\\lambda^6:\\pi_{124,137}Q_9\\longrightarrow\\pi_{124,131}Q_9.\n$$\n\n源的指数是 $a=s-13$，目标的指数是 $a+6=s-7$。在源、靶都可能非零的范围 $13\\le s\\le15$ 中，前述同商乘法公式成为\n\n$$\n\\frac{Z_{22-s}^{s,124+s}}{B_{s-12}^{s,124+s}}\n\\longrightarrow\n\\frac{Z_{16-s}^{s,124+s}}{B_{s-6}^{s,124+s}}.\n$$\n\n逐层代入得到下表。每一行的 $Z,B$ 都取在该行标出的同一个经典 Ext 群中。\n\n| $s$ | 所在 Ext 群 | $\\lambda^6$ 的源层 | $\\lambda^6$ 的靶层 |\n| --- | --- | --- | --- |\n| $13$ | $\\operatorname{Ext}_A^{13,137}$ | $Z_9/B_1$ | $Z_3/B_7$ |\n| $14$ | $\\operatorname{Ext}_A^{14,138}$ | $Z_8/B_2$ | $Z_2/B_8$ |\n| $15$ | $\\operatorname{Ext}_A^{15,139}$ | $Z_7/B_3$ | $Z_1/B_9$ |\n\n例如第一行，源的下标为 $22-13=9$ 和 $13-12=1$，靶的下标为 $16-13=3$ 和 $13-6=7$；另两行分别把 $s$ 换为 $14,15$。每一行的映射都是先包含循环子群，再扩大边界子群。\n\n当 $s\u003c13$ 时源层为零。源在 $16\\le s\\le21$ 仍可能有非零层，但其像所在的目标过滤已经包含在 $F^{16}\\pi_{124,131}Q_9=0$ 中；当 $s\\ge22$ 时，源过滤本身也已经为零。因此，对于这个映射，只有表中的三个过滤层可能给出非零像。\n\n再比较约化映射\n\n$$\n\\rho_{9,11}:\\pi_{124,131}Q_{11}\n\\longrightarrow\\pi_{124,131}Q_9.\n$$\n\n两侧的指数都为 $a=s-7$，所以关联分次映射是\n\n$$\n\\frac{Z_{18-s}^{s,124+s}}{B_{s-6}^{s,124+s}}\n\\longrightarrow\n\\frac{Z_{16-s}^{s,124+s}}{B_{s-6}^{s,124+s}}.\n$$\n\n在相同的三个过滤层，其具体形式为\n\n| $s$ | 所在 Ext 群 | 约化映射的源层 | 约化映射的靶层 |\n| --- | --- | --- | --- |\n| $13$ | $\\operatorname{Ext}_A^{13,137}$ | $Z_5/B_7$ | $Z_3/B_7$ |\n| $14$ | $\\operatorname{Ext}_A^{14,138}$ | $Z_4/B_8$ | $Z_2/B_8$ |\n| $15$ | $\\operatorname{Ext}_A^{15,139}$ | $Z_3/B_9$ | $Z_1/B_9$ |\n\n这些下标来自 $18-s$、$s-6$ 和 $16-s$ 的逐行代入。约化映射的源循环条件与乘 $\\lambda^6$ 的源循环条件不同。例如在过滤 $13$，来自 $Q_{11}$ 只要求首项有 $Z_5/B_7$ 中的原像，而来自乘 $\\lambda^6$ 要求有 $Z_9/B_1$ 中的原像。前者不能代替后者。\n\n### 相邻权重的可除性条件\n\n还需要区分下面的两个权重：\n\n$$\n\\lambda:\\pi_{125,140}Q_9\\longrightarrow\\pi_{125,139}Q_9.\n$$\n\n源的指数为 $s-15$，目标的指数为 $s-14$。过滤 $14$ 时，源的指数为 $-1$，所以源层为零；目标的指数为 $0$，其层为 $Z_9^{14,139}/B_1^{14,139}$。因此目标在过滤 $14$ 的非零首项不可能来自这个 $\\lambda$ 映射。\n\n当 $15\\le s\\le22$ 时，源、靶都处在允许范围中，逐层映射为\n\n$$\n\\frac{Z_{24-s}^{s,125+s}}{B_{s-14}^{s,125+s}}\n\\longrightarrow\n\\frac{Z_{23-s}^{s,125+s}}{B_{s-13}^{s,125+s}}.\n$$\n\n这里的下标分别来自 $9-(s-15)$、$1+(s-15)$、$9-(s-14)$ 和 $1+(s-14)$。当 $s=23$ 时，源层为 $Z_1/B_9$ 而目标过滤为零；当 $s\\ge24$ 时两侧过滤都为零。当 $s\u003c14$ 时两侧关联分次都为零。这列尽了所有过滤的情形，但还没有说明表中的循环子群包含诱导满射。\n\n最后，设某个给定差值 $D$ 已经属于 $F^{13}\\pi_{124,131}Q_9$。若能选出修正项，使剩余差值依次落入 $F^{14}$、$F^{15}$、$F^{16}$，那么最后的剩余差值严格等于零，因为 $F^{16}=0$。这里已经确定了有限的停止界；各层修正项是否存在，以及是否能让同一个所选代表元同时满足另一条可除关系，仍须通过具体循环子群和映射的计算来证明。\n",
      "review": "reviews/T01b-v1-review.json",
      "sha256": "f0aaa1488363b95807e3cc4135cb775893076b970dcc9240411341e29f9e90a2",
      "source": "math/T01b-v1.md",
      "title": "过滤的有限范围",
      "title_html": "过滤的有限范围",
      "upstream": [
        {
          "id": "T00",
          "sha256": "35fa6c97c4ad80f102b7badf4fc411a4ad7d5b99f4f16fc6b76bf885d8d783fd",
          "version": "v2"
        },
        {
          "id": "T01a",
          "sha256": "894c6b8847a3f1d1f25850d8191c16fd50ab15c6bff2281c9d6f35a4fa2fedc1",
          "version": "v1"
        }
      ],
      "version": "v1"
    },
    {
      "chapter_id": "data",
      "dependencies_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
      "dependencies_source": "math/P02a-v1.dependencies.json",
      "html": "\u003ch2\u003e计算所需的经典数据\u003c/h2\u003e\n\u003cp\u003e以下均在球谱的经典模 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"2\"\u003e\u003c/span\u003e Adams 谱序列中讨论。计算类名 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{n,s}\"\u003e\u003c/span\u003e、\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{n,s,k}\"\u003e\u003c/span\u003e 的前两个下标分别记录 stem 和 Adams 过滤；最后的下标区分同一次数中的类。它们的内部次数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"n+s\"\u003e\u003c/span\u003e。下表中的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"[H_1]\"\u003e\u003c/span\u003e 沿用 Ext 计算中的类名，表示一个 Ext 元素的名称；它不表示同伦代表元记号 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"[x]\"\u003e\u003c/span\u003e。\u003c/p\u003e\n\u003cp\u003e表中“入射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_r\"\u003e\u003c/span\u003e，来源 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"z\"\u003e\u003c/span\u003e”表示该行元素是非零微分 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_r(z)\"\u003e\u003c/span\u003e 在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_r\"\u003e\u003c/span\u003e 页上的代表；“出射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_r\"\u003e\u003c/span\u003e，目标 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"z\"\u003e\u003c/span\u003e”表示该行元素支持非零 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_r\"\u003e\u003c/span\u003e，其值由 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"z\"\u003e\u003c/span\u003e 代表。所有非零微分都在所标明的页上取值：源和靶在该页非零，后页是否仍存在另由取同调决定。入射微分的目标不是出射微分的源方向。\u003c/p\u003e\n\u003cp\u003e对于 stem 为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"124\"\u003e\u003c/span\u003e、过滤为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"s\"\u003e\u003c/span\u003e 的一行，内部次数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"124+s\"\u003e\u003c/span\u003e。若该行是入射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_r\"\u003e\u003c/span\u003e 的目标，其来源双次数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(s-r,125+s-r)\"\u003e\u003c/span\u003e；若该行支持出射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_r\"\u003e\u003c/span\u003e，其目标双次数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(s+r,123+s+r)\"\u003e\u003c/span\u003e。这两条公式为表中每一项固定了完整次数。\u003c/p\u003e\n\u003ch3\u003e两个初始类\u003c/h3\u003e\n\u003cp\u003e记\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\xi=x_{123,9}+h_0x_{123,8}\\in\\operatorname{Ext}_A^{9,132},\n\\qquad a_0=h_0^2x_{124,8}\\in\\operatorname{Ext}_A^{10,134}.\n\"\u003e\u003c/div\u003e\u003cp\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\xi\"\u003e\u003c/span\u003e 在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_{12}\"\u003e\u003c/span\u003e 页非零，并且不会被任何经典 Adams 微分击中。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-001\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[9]\u003c/button\u003e 因而 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2,\\ldots,d_{11}\"\u003e\u003c/span\u003e 在这个类上都为零；其 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_{12}\"\u003e\u003c/span\u003e 是否非零、若非零打到哪里，均未在这里确定。\u003c/p\u003e\n\u003cp\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"a_0\"\u003e\u003c/span\u003e 给出非零经典 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_\\infty\"\u003e\u003c/span\u003e 类。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-002\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[10]\u003c/button\u003e 这同时说明它没有出射微分，并且它的相容像不成为入射边界。\u003c/p\u003e\n\u003cp\u003e初始两类还满足非零微分 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2(x_{125,8})=h_1\\xi+a_0\\ne0\"\u003e\u003c/span\u003e。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-003\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[11]\u003c/button\u003e 源的双次数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(8,133)\"\u003e\u003c/span\u003e，靶的双次数为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(10,134)\"\u003e\u003c/span\u003e，与 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e 的双次数 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(2,1)\"\u003e\u003c/span\u003e 相符。\u003c/p\u003e\n\u003ch3\u003e过滤 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"11\"\u003e\u003c/span\u003e 和 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"12\"\u003e\u003c/span\u003e\u003c/h3\u003e\n\u003cp\u003e下面每张表的“基元素”一列是所指定 Ext 群的一组完整 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\mathbb F_2\"\u003e\u003c/span\u003e 基；这包括生成性与线性无关性，均属于这里明确使用的计算输入。表中非零微分的页数和方向是另行列明的输入。\u003c/p\u003e\n\u003cp\u003e在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{11,135}\"\u003e\u003c/span\u003e 中，下列 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"5\"\u003e\u003c/span\u003e 个元素构成完整基。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-004\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[12]\u003c/button\u003e\u003c/p\u003e\n\u003ctable\u003e\n\u003cthead\u003e\n\u003ctr\u003e\n\u003cth\u003e基元素\u003c/th\u003e\n\u003cth\u003e经典微分信息\u003c/th\u003e\n\u003c/tr\u003e\n\u003c/thead\u003e\n\u003ctbody\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0x_{124,10,2}+h_0^3x_{124,8}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e入射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e，来源 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{125,9,2}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-005\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[13]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0^3x_{124,8}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e入射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e，来源 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0x_{125,8}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-006\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[14]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{124,11,3}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e入射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_3\"\u003e\u003c/span\u003e，来源 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{125,8,2}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-007\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[15]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{124,11,2}+x_{124,11}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e出射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_4\"\u003e\u003c/span\u003e，目标 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{123,15}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-008\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[16]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{124,11}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e出射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e，目标 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0^2x_{123,11}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-009\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[17]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003c/tbody\u003e\n\u003c/table\u003e\n\u003cp\u003e尤其，\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{124,11,2}+x_{124,11}\"\u003e\u003c/span\u003e 的非零微分长度是 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"4\"\u003e\u003c/span\u003e，不是被 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e 或 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_3\"\u003e\u003c/span\u003e 击中的方向。\u003c/p\u003e\n\u003cp\u003e在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{12,136}\"\u003e\u003c/span\u003e 中，下列 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"5\"\u003e\u003c/span\u003e 个元素构成完整基。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-010\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[18]\u003c/button\u003e\u003c/p\u003e\n\u003ctable\u003e\n\u003cthead\u003e\n\u003ctr\u003e\n\u003cth\u003e基元素\u003c/th\u003e\n\u003cth\u003e经典微分信息\u003c/th\u003e\n\u003c/tr\u003e\n\u003c/thead\u003e\n\u003ctbody\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0x_{124,11,2}+h_0x_{124,11}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e入射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e，来源 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{125,10}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-011\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[19]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0^2x_{124,10,2}+h_0^4x_{124,8}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e入射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e，来源 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0x_{125,9,2}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-012\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[20]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0^4x_{124,8}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e入射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e，来源 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0^2x_{125,8}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-013\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[21]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_1x_{123,11,2}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e入射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_3\"\u003e\u003c/span\u003e，来源 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{125,9}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-014\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[22]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0x_{124,11}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e出射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e，目标 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0^3x_{123,11}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-015\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[23]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003c/tbody\u003e\n\u003c/table\u003e\n\u003ch3\u003e过滤 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"13\"\u003e\u003c/span\u003e、\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"14\"\u003e\u003c/span\u003e 和 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"15\"\u003e\u003c/span\u003e\u003c/h3\u003e\n\u003cp\u003e为了保留标准 Ext 类 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"e_0\"\u003e\u003c/span\u003e 和 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"g\"\u003e\u003c/span\u003e 的原有含义，将三个指定类分别简记为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\epsilon_{13},\\epsilon_{14},\\epsilon_{15}\"\u003e\u003c/span\u003e；定义写在对应的基表中。“无出射”只使用原计算中永久循环的含义，即该 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_2\"\u003e\u003c/span\u003e 元素属于 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_\\infty\"\u003e\u003c/span\u003e。这里不据此断言它在经典 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_\\infty\"\u003e\u003c/span\u003e 中非零，也不据此排除它属于某个 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"B_r\"\u003e\u003c/span\u003e。\u003c/p\u003e\n\u003cp\u003e在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{13,137}\"\u003e\u003c/span\u003e 中，下列 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"4\"\u003e\u003c/span\u003e 个元素构成完整基。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-016\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[24]\u003c/button\u003e\u003c/p\u003e\n\u003ctable\u003e\n\u003cthead\u003e\n\u003ctr\u003e\n\u003cth\u003e基元素\u003c/th\u003e\n\u003cth\u003e经典微分信息\u003c/th\u003e\n\u003c/tr\u003e\n\u003c/thead\u003e\n\u003ctbody\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0^5x_{124,8}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e入射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e，来源 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0^3x_{125,8}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-017\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[25]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"[H_1](\\Delta e_1+C_0+h_0^6h_5^2)\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e入射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_3\"\u003e\u003c/span\u003e，来源 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{125,10,2}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-018\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[26]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\epsilon_{13}=e_0\\Delta h_6g\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e无出射微分\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-019\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[27]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_4x_{109,12}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e出射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_3\"\u003e\u003c/span\u003e，目标 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_1x_{122,15,2}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-020\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[28]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003c/tbody\u003e\n\u003c/table\u003e\n\u003cp\u003e在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{14,138}\"\u003e\u003c/span\u003e 中，下列 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"5\"\u003e\u003c/span\u003e 个元素构成完整基。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-021\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[29]\u003c/button\u003e\u003c/p\u003e\n\u003ctable\u003e\n\u003cthead\u003e\n\u003ctr\u003e\n\u003cth\u003e基元素\u003c/th\u003e\n\u003cth\u003e经典微分信息\u003c/th\u003e\n\u003c/tr\u003e\n\u003c/thead\u003e\n\u003ctbody\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_1x_{123,13}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e入射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e，来源 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{125,12}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-022\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[30]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_1x_{123,13,2}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e入射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e，来源 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{125,12,2}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-023\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[31]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\epsilon_{14}=\\Delta h_2^2x_{94,8}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e无出射微分\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-024\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[32]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{124,14}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e出射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e，目标 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0x_{123,15}+h_0^3x_{123,13,2}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-025\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[33]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{124,14,2}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e出射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e，目标 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0x_{123,15}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-026\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[34]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003c/tbody\u003e\n\u003c/table\u003e\n\u003cp\u003e在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{15,139}\"\u003e\u003c/span\u003e 中，下列 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"4\"\u003e\u003c/span\u003e 个元素构成完整基。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-027\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[35]\u003c/button\u003e\u003c/p\u003e\n\u003ctable\u003e\n\u003cthead\u003e\n\u003ctr\u003e\n\u003cth\u003e基元素\u003c/th\u003e\n\u003cth\u003e经典微分信息\u003c/th\u003e\n\u003c/tr\u003e\n\u003c/thead\u003e\n\u003ctbody\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"x_{124,15}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e入射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_4\"\u003e\u003c/span\u003e，来源 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_6x_{62,10}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-028\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[36]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\epsilon_{15}=h_3^2x_{110,13}+h_0x_{124,14}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e无出射微分\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-029\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[37]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0x_{124,14}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e出射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e，目标 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0^2x_{123,15}+h_0^4x_{123,13,2}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-030\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[38]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003ctr\u003e\n\u003ctd\u003e\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0x_{124,14,2}\"\u003e\u003c/span\u003e\u003c/td\u003e\n\u003ctd\u003e出射 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e，目标 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_0^2x_{123,15}\"\u003e\u003c/span\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-031\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[39]\u003c/button\u003e\u003c/td\u003e\n\u003c/tr\u003e\n\u003c/tbody\u003e\n\u003c/table\u003e\n\u003ch3\u003e微分目标的独立性\u003c/h3\u003e\n\u003cp\u003e令\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\begin{aligned}\na_{16}\u0026amp;=h_0x_{123,15},\u0026amp; b_{16}\u0026amp;=h_0^3x_{123,13,2},\\\\\na_{17}\u0026amp;=h_0^2x_{123,15},\u0026amp; b_{17}\u0026amp;=h_0^4x_{123,13,2}.\n\\end{aligned}\n\"\u003e\u003c/div\u003e\u003cp\u003e第一对位于 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{16,139}\"\u003e\u003c/span\u003e，第二对位于 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{17,140}\"\u003e\u003c/span\u003e，stem 均为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"123\"\u003e\u003c/span\u003e。\u003c/p\u003e\n\u003cp\u003e计算给出的两个基方向 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"a_{16}+b_{16}\"\u003e\u003c/span\u003e 与 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"b_{16}\"\u003e\u003c/span\u003e 线性无关。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-032\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[40]\u003c/button\u003e\u003c/p\u003e\n\u003cp\u003e计算给出的两个基方向 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"a_{17}+b_{17}\"\u003e\u003c/span\u003e 与 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"b_{17}\"\u003e\u003c/span\u003e 线性无关。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-033\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[41]\u003c/button\u003e\u003c/p\u003e\n\u003cp\u003e因此，对 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"j=16\"\u003e\u003c/span\u003e 或 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"17\"\u003e\u003c/span\u003e，若 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"u a_j+v b_j=0\"\u003e\u003c/span\u003e，则\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nu(a_j+b_j)+(u+v)b_j=0.\n\"\u003e\u003c/div\u003e\u003cp\u003e两个已知方向的独立性给出 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"u=0\"\u003e\u003c/span\u003e 和 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"u+v=0\"\u003e\u003c/span\u003e，进而 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"v=0\"\u003e\u003c/span\u003e。所以 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"a_j,b_j\"\u003e\u003c/span\u003e 也线性无关。\u003c/p\u003e\n\u003cp\u003e过滤 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"14\"\u003e\u003c/span\u003e 的两个出射行因而具有明确的形式\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nd_2(x_{124,14})=a_{16}+b_{16},\\qquad\n d_2(x_{124,14,2})=a_{16},\n\"\u003e\u003c/div\u003e\u003cp\u003e过滤 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"15\"\u003e\u003c/span\u003e 的两个出射行则为\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nd_2(h_0x_{124,14})=a_{17}+b_{17},\\qquad\n d_2(h_0x_{124,14,2})=a_{17}.\n\"\u003e\u003c/div\u003e\u003cp\u003e这里仅改写了表中的已知微分和目标坐标；相应循环子群及边界商仍需按各自的下标计算。\u003c/p\u003e\n\u003ch3\u003e一个 Ext 乘积\u003c/h3\u003e\n\u003cp\u003e还使用乘积关系 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"h_1\\epsilon_{13}=h_1e_0\\Delta h_6g=0\"\u003e\u003c/span\u003e。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-034\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[42]\u003c/button\u003e 两个因子的双次数相加为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"(1,2)+(13,137)=(14,139)\"\u003e\u003c/span\u003e。这个等式在 Ext 中成立；它本身不把合成同伦中的乘积直接变成零，也不指定任何可除性见证。\u003c/p\u003e\n",
      "id": "P02a",
      "markdown": "## 计算所需的经典数据\n\n以下均在球谱的经典模 $2$ Adams 谱序列中讨论。计算类名 $x_{n,s}$、$x_{n,s,k}$ 的前两个下标分别记录 stem 和 Adams 过滤；最后的下标区分同一次数中的类。它们的内部次数为 $n+s$。下表中的 $[H_1]$ 沿用 Ext 计算中的类名，表示一个 Ext 元素的名称；它不表示同伦代表元记号 $[x]$。\n\n表中“入射 $d_r$，来源 $z$”表示该行元素是非零微分 $d_r(z)$ 在 $E_r$ 页上的代表；“出射 $d_r$，目标 $z$”表示该行元素支持非零 $d_r$，其值由 $z$ 代表。所有非零微分都在所标明的页上取值：源和靶在该页非零，后页是否仍存在另由取同调决定。入射微分的目标不是出射微分的源方向。\n\n对于 stem 为 $124$、过滤为 $s$ 的一行，内部次数为 $124+s$。若该行是入射 $d_r$ 的目标，其来源双次数为 $(s-r,125+s-r)$；若该行支持出射 $d_r$，其目标双次数为 $(s+r,123+s+r)$。这两条公式为表中每一项固定了完整次数。\n\n### 两个初始类\n\n记\n\n$$\n\\xi=x_{123,9}+h_0x_{123,8}\\in\\operatorname{Ext}_A^{9,132},\n\\qquad a_0=h_0^2x_{124,8}\\in\\operatorname{Ext}_A^{10,134}.\n$$\n\n$\\xi$ 在 $E_{12}$ 页非零，并且不会被任何经典 Adams 微分击中。[[EXT-P02a-001]] 因而 $d_2,\\ldots,d_{11}$ 在这个类上都为零；其 $d_{12}$ 是否非零、若非零打到哪里，均未在这里确定。\n\n$a_0$ 给出非零经典 $E_\\infty$ 类。[[EXT-P02a-002]] 这同时说明它没有出射微分，并且它的相容像不成为入射边界。\n\n初始两类还满足非零微分 $d_2(x_{125,8})=h_1\\xi+a_0\\ne0$。[[EXT-P02a-003]] 源的双次数为 $(8,133)$，靶的双次数为 $(10,134)$，与 $d_2$ 的双次数 $(2,1)$ 相符。\n\n### 过滤 $11$ 和 $12$\n\n下面每张表的“基元素”一列是所指定 Ext 群的一组完整 $\\mathbb F_2$ 基；这包括生成性与线性无关性，均属于这里明确使用的计算输入。表中非零微分的页数和方向是另行列明的输入。\n\n在 $\\operatorname{Ext}_A^{11,135}$ 中，下列 $5$ 个元素构成完整基。[[EXT-P02a-004]]\n\n| 基元素 | 经典微分信息 |\n| --- | --- |\n| $h_0x_{124,10,2}+h_0^3x_{124,8}$ | 入射 $d_2$，来源 $x_{125,9,2}$[[EXT-P02a-005]] |\n| $h_0^3x_{124,8}$ | 入射 $d_2$，来源 $h_0x_{125,8}$[[EXT-P02a-006]] |\n| $x_{124,11,3}$ | 入射 $d_3$，来源 $x_{125,8,2}$[[EXT-P02a-007]] |\n| $x_{124,11,2}+x_{124,11}$ | 出射 $d_4$，目标 $x_{123,15}$[[EXT-P02a-008]] |\n| $x_{124,11}$ | 出射 $d_2$，目标 $h_0^2x_{123,11}$[[EXT-P02a-009]] |\n\n尤其，$x_{124,11,2}+x_{124,11}$ 的非零微分长度是 $4$，不是被 $d_2$ 或 $d_3$ 击中的方向。\n\n在 $\\operatorname{Ext}_A^{12,136}$ 中，下列 $5$ 个元素构成完整基。[[EXT-P02a-010]]\n\n| 基元素 | 经典微分信息 |\n| --- | --- |\n| $h_0x_{124,11,2}+h_0x_{124,11}$ | 入射 $d_2$，来源 $x_{125,10}$[[EXT-P02a-011]] |\n| $h_0^2x_{124,10,2}+h_0^4x_{124,8}$ | 入射 $d_2$，来源 $h_0x_{125,9,2}$[[EXT-P02a-012]] |\n| $h_0^4x_{124,8}$ | 入射 $d_2$，来源 $h_0^2x_{125,8}$[[EXT-P02a-013]] |\n| $h_1x_{123,11,2}$ | 入射 $d_3$，来源 $x_{125,9}$[[EXT-P02a-014]] |\n| $h_0x_{124,11}$ | 出射 $d_2$，目标 $h_0^3x_{123,11}$[[EXT-P02a-015]] |\n\n### 过滤 $13$、$14$ 和 $15$\n\n为了保留标准 Ext 类 $e_0$ 和 $g$ 的原有含义，将三个指定类分别简记为 $\\epsilon_{13},\\epsilon_{14},\\epsilon_{15}$；定义写在对应的基表中。“无出射”只使用原计算中永久循环的含义，即该 $E_2$ 元素属于 $Z_\\infty$。这里不据此断言它在经典 $E_\\infty$ 中非零，也不据此排除它属于某个 $B_r$。\n\n在 $\\operatorname{Ext}_A^{13,137}$ 中，下列 $4$ 个元素构成完整基。[[EXT-P02a-016]]\n\n| 基元素 | 经典微分信息 |\n| --- | --- |\n| $h_0^5x_{124,8}$ | 入射 $d_2$，来源 $h_0^3x_{125,8}$[[EXT-P02a-017]] |\n| $[H_1](\\Delta e_1+C_0+h_0^6h_5^2)$ | 入射 $d_3$，来源 $x_{125,10,2}$[[EXT-P02a-018]] |\n| $\\epsilon_{13}=e_0\\Delta h_6g$ | 无出射微分[[EXT-P02a-019]] |\n| $h_4x_{109,12}$ | 出射 $d_3$，目标 $h_1x_{122,15,2}$[[EXT-P02a-020]] |\n\n在 $\\operatorname{Ext}_A^{14,138}$ 中，下列 $5$ 个元素构成完整基。[[EXT-P02a-021]]\n\n| 基元素 | 经典微分信息 |\n| --- | --- |\n| $h_1x_{123,13}$ | 入射 $d_2$，来源 $x_{125,12}$[[EXT-P02a-022]] |\n| $h_1x_{123,13,2}$ | 入射 $d_2$，来源 $x_{125,12,2}$[[EXT-P02a-023]] |\n| $\\epsilon_{14}=\\Delta h_2^2x_{94,8}$ | 无出射微分[[EXT-P02a-024]] |\n| $x_{124,14}$ | 出射 $d_2$，目标 $h_0x_{123,15}+h_0^3x_{123,13,2}$[[EXT-P02a-025]] |\n| $x_{124,14,2}$ | 出射 $d_2$，目标 $h_0x_{123,15}$[[EXT-P02a-026]] |\n\n在 $\\operatorname{Ext}_A^{15,139}$ 中，下列 $4$ 个元素构成完整基。[[EXT-P02a-027]]\n\n| 基元素 | 经典微分信息 |\n| --- | --- |\n| $x_{124,15}$ | 入射 $d_4$，来源 $h_6x_{62,10}$[[EXT-P02a-028]] |\n| $\\epsilon_{15}=h_3^2x_{110,13}+h_0x_{124,14}$ | 无出射微分[[EXT-P02a-029]] |\n| $h_0x_{124,14}$ | 出射 $d_2$，目标 $h_0^2x_{123,15}+h_0^4x_{123,13,2}$[[EXT-P02a-030]] |\n| $h_0x_{124,14,2}$ | 出射 $d_2$，目标 $h_0^2x_{123,15}$[[EXT-P02a-031]] |\n\n### 微分目标的独立性\n\n令\n\n$$\n\\begin{aligned}\na_{16}\u0026=h_0x_{123,15},\u0026 b_{16}\u0026=h_0^3x_{123,13,2},\\\\\na_{17}\u0026=h_0^2x_{123,15},\u0026 b_{17}\u0026=h_0^4x_{123,13,2}.\n\\end{aligned}\n$$\n\n第一对位于 $\\operatorname{Ext}_A^{16,139}$，第二对位于 $\\operatorname{Ext}_A^{17,140}$，stem 均为 $123$。\n\n计算给出的两个基方向 $a_{16}+b_{16}$ 与 $b_{16}$ 线性无关。[[EXT-P02a-032]]\n\n计算给出的两个基方向 $a_{17}+b_{17}$ 与 $b_{17}$ 线性无关。[[EXT-P02a-033]]\n\n因此，对 $j=16$ 或 $17$，若 $u a_j+v b_j=0$，则\n\n$$\nu(a_j+b_j)+(u+v)b_j=0.\n$$\n\n两个已知方向的独立性给出 $u=0$ 和 $u+v=0$，进而 $v=0$。所以 $a_j,b_j$ 也线性无关。\n\n过滤 $14$ 的两个出射行因而具有明确的形式\n\n$$\nd_2(x_{124,14})=a_{16}+b_{16},\\qquad\n d_2(x_{124,14,2})=a_{16},\n$$\n\n过滤 $15$ 的两个出射行则为\n\n$$\nd_2(h_0x_{124,14})=a_{17}+b_{17},\\qquad\n d_2(h_0x_{124,14,2})=a_{17}.\n$$\n\n这里仅改写了表中的已知微分和目标坐标；相应循环子群及边界商仍需按各自的下标计算。\n\n### 一个 Ext 乘积\n\n还使用乘积关系 $h_1\\epsilon_{13}=h_1e_0\\Delta h_6g=0$。[[EXT-P02a-034]] 两个因子的双次数相加为 $(1,2)+(13,137)=(14,139)$。这个等式在 Ext 中成立；它本身不把合成同伦中的乘积直接变成零，也不指定任何可除性见证。\n",
      "review": "reviews/P02a-v1-review.json",
      "sha256": "e1471f14a8ab7cd9033a688e973ab6aabc6268b27f4d510756a504973485c8ac",
      "source": "math/P02a-v1.md",
      "title": "计算所需的经典数据",
      "title_html": "计算所需的经典数据",
      "upstream": [
        {
          "id": "T00",
          "sha256": "35fa6c97c4ad80f102b7badf4fc411a4ad7d5b99f4f16fc6b76bf885d8d783fd",
          "version": "v2"
        },
        {
          "id": "T01a",
          "sha256": "894c6b8847a3f1d1f25850d8191c16fd50ab15c6bff2281c9d6f35a4fa2fedc1",
          "version": "v1"
        },
        {
          "id": "T01b",
          "sha256": "f0aaa1488363b95807e3cc4135cb775893076b970dcc9240411341e29f9e90a2",
          "version": "v1"
        }
      ],
      "version": "v1"
    },
    {
      "chapter_id": "lifting",
      "dependencies_sha256": "a07d64abd0f8d67a41da8d0ce7e4704d62adaaf9c445af9b7c2b39867118ceb8",
      "dependencies_source": "math/P02b-v1.dependencies.json",
      "html": "\u003ch2\u003e消去两个低过滤层\u003c/h2\u003e\n\u003cp\u003e令 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"G=\\pi_{124,133}Q_{11}\"\u003e\u003c/span\u003e。有限商比较公式中的指数为\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\na=124+s-133=s-9.\n\"\u003e\u003c/div\u003e\u003cp\u003e因此在过滤 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"11\"\u003e\u003c/span\u003e 和 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"12\"\u003e\u003c/span\u003e，需要分别计算\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\operatorname{gr}_F^{11}G\n\\cong Z_9^{11,135}/B_3^{11,135},\n\\qquad\n\\operatorname{gr}_F^{12}G\n\\cong Z_8^{12,136}/B_4^{12,136}.\n\"\u003e\u003c/div\u003e\u003cp\u003e第一式的下标是 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"11-(11-9)=9\"\u003e\u003c/span\u003e、\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"1+(11-9)=3\"\u003e\u003c/span\u003e；第二式的下标是 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"11-(12-9)=8\"\u003e\u003c/span\u003e、\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"1+(12-9)=4\"\u003e\u003c/span\u003e。这里必须保留这两个不同的边界下标。\u003c/p\u003e\n\u003ch3\u003e过滤 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"11\"\u003e\u003c/span\u003e\u003c/h3\u003e\n\u003cp\u003e将前述完整基简记如下。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-004\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[12]\u003c/button\u003e\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\begin{aligned}\nb_1\u0026amp;=h_0x_{124,10,2}+h_0^3x_{124,8},\\\\\nb_2\u0026amp;=h_0^3x_{124,8},\\\\\nb_3\u0026amp;=x_{124,11,3},\\\\\nc\u0026amp;=x_{124,11,2}+x_{124,11},\\\\\nu\u0026amp;=x_{124,11}.\n\\end{aligned}\n\"\u003e\u003c/div\u003e\u003cp\u003e这些元素都位于 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{11,135}\"\u003e\u003c/span\u003e。低层微分表给出 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"b_1,b_2\\in B_2\"\u003e\u003c/span\u003e、\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"b_3\\in B_3\"\u003e\u003c/span\u003e。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-005\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[13]\u003c/button\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-006\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[14]\u003c/button\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-007\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[15]\u003c/button\u003e 所以它们都属于 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_\\infty\"\u003e\u003c/span\u003e；同时\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nd_2(u)=h_0^2x_{123,11}\\ne0,\n\\qquad\nd_4(c)=x_{123,15}\\ne0.\n\"\u003e\u003c/div\u003e\u003cp\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-009\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[17]\u003c/button\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-008\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[16]\u003c/button\u003e\u003c/p\u003e\n\u003cp\u003e第二个非零等式在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_4\"\u003e\u003c/span\u003e 页成立，因而 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"c\"\u003e\u003c/span\u003e 必须先经过 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e 和 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_3\"\u003e\u003c/span\u003e，即 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"c\\in Z_3\"\u003e\u003c/span\u003e。\u003c/p\u003e\n\u003cp\u003e现在取任意 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"z\\in Z_9^{11,135}\"\u003e\u003c/span\u003e。完整基保证存在唯一的五个系数 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\beta_1,\\beta_2,\\beta_3,\\gamma,\\delta\\in\\mathbb F_2\"\u003e\u003c/span\u003e，使得\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nz=\\beta_1b_1+\\beta_2b_2+\\beta_3b_3+\\gamma c+\\delta u.\n\"\u003e\u003c/div\u003e\u003cp\u003e因为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"z\\in Z_9\\subseteq Z_2\"\u003e\u003c/span\u003e，其 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e 为零。前三项是边界方向，\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"c\"\u003e\u003c/span\u003e 则属于 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"Z_3\"\u003e\u003c/span\u003e，故这四项的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e 都为零。于是\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n0=d_2(z)=\\delta\\,h_0^2x_{123,11}.\n\"\u003e\u003c/div\u003e\u003cp\u003e这个目标在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_2\"\u003e\u003c/span\u003e 页非零，所以 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\delta=0\"\u003e\u003c/span\u003e。到了 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_4\"\u003e\u003c/span\u003e 页，\u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"b_1,b_2,b_3\"\u003e\u003c/span\u003e 均已属于分母 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"B_3\"\u003e\u003c/span\u003e，故 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"z\"\u003e\u003c/span\u003e 的像等于 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\gamma c\"\u003e\u003c/span\u003e 的像。又因为 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"z\\in Z_9\\subseteq Z_4\"\u003e\u003c/span\u003e，有\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n0=d_4(z)=\\gamma\\,x_{123,15}.\n\"\u003e\u003c/div\u003e\u003cp\u003e这个目标在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_4\"\u003e\u003c/span\u003e 页非零，所以 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\gamma=0\"\u003e\u003c/span\u003e。这就证明\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nZ_9^{11,135}\\subseteq\n\\mathbb F_2\\{b_1,b_2,b_3\\}\\subseteq B_3^{11,135}.\n\"\u003e\u003c/div\u003e\u003cp\u003e反过来，边界子群包含在所有后续循环子群中，故 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"B_3\\subseteq Z_9\"\u003e\u003c/span\u003e。因此这三个子群相等，特别地\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nZ_9^{11,135}/B_3^{11,135}=0.\n\"\u003e\u003c/div\u003e\u003cp\u003e这个论证处理了所有线性组合：系数 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\delta\"\u003e\u003c/span\u003e 先被非零 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e 排除，系数 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\gamma\"\u003e\u003c/span\u003e 再被非零 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_4\"\u003e\u003c/span\u003e 排除；剩下的三个方向才由 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"B_3\"\u003e\u003c/span\u003e 消去。\u003c/p\u003e\n\u003ch3\u003e过滤 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"12\"\u003e\u003c/span\u003e\u003c/h3\u003e\n\u003cp\u003e这一层的完整基写为下面五个元素。\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-010\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[18]\u003c/button\u003e\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n\\begin{aligned}\nq_1\u0026amp;=h_0x_{124,11,2}+h_0x_{124,11},\\\\\nq_2\u0026amp;=h_0^2x_{124,10,2}+h_0^4x_{124,8},\\\\\nq_3\u0026amp;=h_0^4x_{124,8},\\\\\nq_4\u0026amp;=h_1x_{123,11,2},\\\\\nv\u0026amp;=h_0x_{124,11}.\n\\end{aligned}\n\"\u003e\u003c/div\u003e\u003cp\u003e它们位于 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\operatorname{Ext}_A^{12,136}\"\u003e\u003c/span\u003e。微分表给出\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nq_1,q_2,q_3\\in B_2,\\qquad q_4\\in B_3,\n\\qquad d_2(v)=h_0^3x_{123,11}\\ne0.\n\"\u003e\u003c/div\u003e\u003cp\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-011\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[19]\u003c/button\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-012\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[20]\u003c/button\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-013\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[21]\u003c/button\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-014\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[22]\u003c/button\u003e\u003cbutton class=\"reference\" type=\"button\" data-dependency=\"EXT-P02a-015\" aria-controls=\"inspector\" aria-expanded=\"false\"\u003e[23]\u003c/button\u003e\u003c/p\u003e\n\u003cp\u003e取任意 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"z\\in Z_8^{12,136}\"\u003e\u003c/span\u003e，按完整基唯一写成\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nz=\\delta_1q_1+\\delta_2q_2+\\delta_3q_3+\\delta_4q_4+\\mu v.\n\"\u003e\u003c/div\u003e\u003cp\u003e因为各 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"q_i\"\u003e\u003c/span\u003e 都是边界方向，它们的 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"d_2\"\u003e\u003c/span\u003e 为零；而 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"z\\in Z_8\\subseteq Z_2\"\u003e\u003c/span\u003e，所以\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\n0=d_2(z)=\\mu\\,h_0^3x_{123,11}.\n\"\u003e\u003c/div\u003e\u003cp\u003e目标在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"E_2\"\u003e\u003c/span\u003e 页非零，因而 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"\\mu=0\"\u003e\u003c/span\u003e。余下四项都在 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"B_3\\subseteq B_4\"\u003e\u003c/span\u003e 中，于是\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nZ_8^{12,136}\n\\subseteq\\mathbb F_2\\{q_1,q_2,q_3,q_4\\}\n\\subseteq B_3^{12,136}\n\\subseteq B_4^{12,136}.\n\"\u003e\u003c/div\u003e\u003cp\u003e由于 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"B_4\\subseteq Z_8\"\u003e\u003c/span\u003e，得到\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nZ_8^{12,136}/B_4^{12,136}=0.\n\"\u003e\u003c/div\u003e\u003ch3\u003e同伦过滤中的结果\u003c/h3\u003e\n\u003cp\u003e两个商群均为零，故\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nF^{11}G/F^{12}G=0,\n\\qquad F^{12}G/F^{13}G=0.\n\"\u003e\u003c/div\u003e\u003cp\u003e逐个商群还原为子群等式，得到\u003c/p\u003e\n\u003cdiv class=\"math-node display-math\" data-display=\"true\" data-tex=\"\nF^{11}\\pi_{124,133}Q_{11}\n=F^{12}\\pi_{124,133}Q_{11}\n=F^{13}\\pi_{124,133}Q_{11}.\n\"\u003e\u003c/div\u003e\u003cp\u003e因此，任何已经处在过滤至少 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"11\"\u003e\u003c/span\u003e 的这个双次数的同伦类，实际上都处在过滤至少 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"13\"\u003e\u003c/span\u003e。这里没有将整个同伦群判为零，也没有消去过滤 \u003cspan class=\"math-node inline-math\" data-display=\"false\" data-tex=\"13\"\u003e\u003c/span\u003e 及其以上的可能首项。\u003c/p\u003e\n",
      "id": "P02b",
      "markdown": "## 消去两个低过滤层\n\n令 $G=\\pi_{124,133}Q_{11}$。有限商比较公式中的指数为\n\n$$\na=124+s-133=s-9.\n$$\n\n因此在过滤 $11$ 和 $12$，需要分别计算\n\n$$\n\\operatorname{gr}_F^{11}G\n\\cong Z_9^{11,135}/B_3^{11,135},\n\\qquad\n\\operatorname{gr}_F^{12}G\n\\cong Z_8^{12,136}/B_4^{12,136}.\n$$\n\n第一式的下标是 $11-(11-9)=9$、$1+(11-9)=3$；第二式的下标是 $11-(12-9)=8$、$1+(12-9)=4$。这里必须保留这两个不同的边界下标。\n\n### 过滤 $11$\n\n将前述完整基简记如下。[[EXT-P02a-004]]\n\n$$\n\\begin{aligned}\nb_1\u0026=h_0x_{124,10,2}+h_0^3x_{124,8},\\\\\nb_2\u0026=h_0^3x_{124,8},\\\\\nb_3\u0026=x_{124,11,3},\\\\\nc\u0026=x_{124,11,2}+x_{124,11},\\\\\nu\u0026=x_{124,11}.\n\\end{aligned}\n$$\n\n这些元素都位于 $\\operatorname{Ext}_A^{11,135}$。低层微分表给出 $b_1,b_2\\in B_2$、$b_3\\in B_3$。[[EXT-P02a-005]][[EXT-P02a-006]][[EXT-P02a-007]] 所以它们都属于 $Z_\\infty$；同时\n\n$$\nd_2(u)=h_0^2x_{123,11}\\ne0,\n\\qquad\nd_4(c)=x_{123,15}\\ne0.\n$$\n\n[[EXT-P02a-009]][[EXT-P02a-008]]\n\n第二个非零等式在 $E_4$ 页成立，因而 $c$ 必须先经过 $d_2$ 和 $d_3$，即 $c\\in Z_3$。\n\n现在取任意 $z\\in Z_9^{11,135}$。完整基保证存在唯一的五个系数 $\\beta_1,\\beta_2,\\beta_3,\\gamma,\\delta\\in\\mathbb F_2$，使得\n\n$$\nz=\\beta_1b_1+\\beta_2b_2+\\beta_3b_3+\\gamma c+\\delta u.\n$$\n\n因为 $z\\in Z_9\\subseteq Z_2$，其 $d_2$ 为零。前三项是边界方向，$c$ 则属于 $Z_3$，故这四项的 $d_2$ 都为零。于是\n\n$$\n0=d_2(z)=\\delta\\,h_0^2x_{123,11}.\n$$\n\n这个目标在 $E_2$ 页非零，所以 $\\delta=0$。到了 $E_4$ 页，$b_1,b_2,b_3$ 均已属于分母 $B_3$，故 $z$ 的像等于 $\\gamma c$ 的像。又因为 $z\\in Z_9\\subseteq Z_4$，有\n\n$$\n0=d_4(z)=\\gamma\\,x_{123,15}.\n$$\n\n这个目标在 $E_4$ 页非零，所以 $\\gamma=0$。这就证明\n\n$$\nZ_9^{11,135}\\subseteq\n\\mathbb F_2\\{b_1,b_2,b_3\\}\\subseteq B_3^{11,135}.\n$$\n\n反过来，边界子群包含在所有后续循环子群中，故 $B_3\\subseteq Z_9$。因此这三个子群相等，特别地\n\n$$\nZ_9^{11,135}/B_3^{11,135}=0.\n$$\n\n这个论证处理了所有线性组合：系数 $\\delta$ 先被非零 $d_2$ 排除，系数 $\\gamma$ 再被非零 $d_4$ 排除；剩下的三个方向才由 $B_3$ 消去。\n\n### 过滤 $12$\n\n这一层的完整基写为下面五个元素。[[EXT-P02a-010]]\n\n$$\n\\begin{aligned}\nq_1\u0026=h_0x_{124,11,2}+h_0x_{124,11},\\\\\nq_2\u0026=h_0^2x_{124,10,2}+h_0^4x_{124,8},\\\\\nq_3\u0026=h_0^4x_{124,8},\\\\\nq_4\u0026=h_1x_{123,11,2},\\\\\nv\u0026=h_0x_{124,11}.\n\\end{aligned}\n$$\n\n它们位于 $\\operatorname{Ext}_A^{12,136}$。微分表给出\n\n$$\nq_1,q_2,q_3\\in B_2,\\qquad q_4\\in B_3,\n\\qquad d_2(v)=h_0^3x_{123,11}\\ne0.\n$$\n\n[[EXT-P02a-011]][[EXT-P02a-012]][[EXT-P02a-013]][[EXT-P02a-014]][[EXT-P02a-015]]\n\n取任意 $z\\in Z_8^{12,136}$，按完整基唯一写成\n\n$$\nz=\\delta_1q_1+\\delta_2q_2+\\delta_3q_3+\\delta_4q_4+\\mu v.\n$$\n\n因为各 $q_i$ 都是边界方向，它们的 $d_2$ 为零；而 $z\\in Z_8\\subseteq Z_2$，所以\n\n$$\n0=d_2(z)=\\mu\\,h_0^3x_{123,11}.\n$$\n\n目标在 $E_2$ 页非零，因而 $\\mu=0$。余下四项都在 $B_3\\subseteq B_4$ 中，于是\n\n$$\nZ_8^{12,136}\n\\subseteq\\mathbb F_2\\{q_1,q_2,q_3,q_4\\}\n\\subseteq B_3^{12,136}\n\\subseteq B_4^{12,136}.\n$$\n\n由于 $B_4\\subseteq Z_8$，得到\n\n$$\nZ_8^{12,136}/B_4^{12,136}=0.\n$$\n\n### 同伦过滤中的结果\n\n两个商群均为零，故\n\n$$\nF^{11}G/F^{12}G=0,\n\\qquad F^{12}G/F^{13}G=0.\n$$\n\n逐个商群还原为子群等式，得到\n\n$$\nF^{11}\\pi_{124,133}Q_{11}\n=F^{12}\\pi_{124,133}Q_{11}\n=F^{13}\\pi_{124,133}Q_{11}.\n$$\n\n因此，任何已经处在过滤至少 $11$ 的这个双次数的同伦类，实际上都处在过滤至少 $13$。这里没有将整个同伦群判为零，也没有消去过滤 $13$ 及其以上的可能首项。\n",
      "review": "reviews/P02b-v1-review.json",
      "sha256": "b4dd4524fc4c3e02ddcf1b2c5183e0fca2a5f1c67e2ab38958cafc215750dbcd",
      "source": "math/P02b-v1.md",
      "title": "消去两个低过滤层",
      "title_html": "消去两个低过滤层",
      "upstream": [
        {
          "id": "T01a",
          "sha256": "894c6b8847a3f1d1f25850d8191c16fd50ab15c6bff2281c9d6f35a4fa2fedc1",
          "version": "v1"
        },
        {
          "id": "T01b",
          "sha256": "f0aaa1488363b95807e3cc4135cb775893076b970dcc9240411341e29f9e90a2",
          "version": "v1"
        },
        {
          "id": "P02a",
          "sha256": "e1471f14a8ab7cd9033a688e973ab6aabc6268b27f4d510756a504973485c8ac",
          "version": "v1"
        }
      ],
      "version": "v1"
    }
  ],
  "rendering": {
    "local_katex": true,
    "markdown_it_py": "4.2.0"
  },
  "reviews": [
    {
      "id": "T00",
      "record": {
        "accepted_scope": "仅目标、次数、检测和基础约定；这不是 h₆²永久存活证明已经完成的认定。",
        "approved_headings": [
          "$h_6^2$ 的永久存活",
          "目标",
          "次数、过滤与检测",
          "基础约定"
        ],
        "approved_title": "$h_6^2$ 的永久存活",
        "correctness": "pass",
        "dependencies_path": "math/T00-v2.dependencies.json",
        "dependencies_sha256": "9de3096f578868223ed282db44b86f33eb9b4394412286f4bc26b30cb6c162cf",
        "detail": "pass",
        "faithfulness": "pass",
        "first_pass": {
          "findings": [
            "次数相加和微分stem变化均可直接复算。",
            "出射与入射通过ker/im显式区分。",
            "检测解释是条件式：只有目标非零E∞建立后才选择非零θ₆。",
            "未发现需要读者自行发明的实质推导。"
          ],
          "method": "重新检查v2完整正文及3项依赖；正文经逐字比对与本次已审v1相同，逐项复核量词、次数、非零性与条件均无变化。",
          "result": "pass"
        },
        "fixed_external_dependencies": [
          {
            "id": "EXT-001",
            "used_statement": "对 $2$ 完成球谱 $S^0$，经典模 $2$ Adams 谱序列的 $E_2$ 页为 $\\operatorname{Ext}_A^{s,t}(\\mathbb F_2,\\mathbb F_2)$，微分 $d_r$ 具有双次数 $(r,r-1)$，并强收敛到 $\\pi_{t-s}S^0$；若 $F$ 为 Adams 塔诱导的过滤，则 $E_\\infty^{s,n+s}\\cong F^s\\pi_nS^0/F^{s+1}\\pi_nS^0$。",
            "version": "v1"
          },
          {
            "id": "EXT-002",
            "used_statement": "对每个整数 $j\\ge0$，$\\operatorname{Ext}_A^{1,2^j}(\\mathbb F_2,\\mathbb F_2)$ 是一维 $\\mathbb F_2$ 向量空间，其非零生成元记为 $h_j$；特别地 $h_6\\in\\operatorname{Ext}_A^{1,64}(\\mathbb F_2,\\mathbb F_2)$。",
            "version": "v1"
          },
          {
            "id": "EXT-003",
            "used_statement": "标准 Yoneda 平方 $h_6^2$ 在 $\\operatorname{Ext}_A^{2,128}(\\mathbb F_2,\\mathbb F_2)$ 中非零。",
            "version": "v1"
          }
        ],
        "full_text_extra_scan": {
          "additional_logical_gaps": [],
          "forbidden_body_content": [],
          "unregistered_substantive_dependencies": [],
          "unreviewed_visible_math": []
        },
        "obligation_results": [
          {
            "actual_derivation": "设 S⁰ 为2完成球谱，给出模2 Steenrod 代数、Ext初始页及收敛对象。",
            "body_location": "5–12",
            "id": "T00-O01",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "对象与论文135–138、254一致；强收敛独立登记EXT-001。"
          },
          {
            "actual_derivation": "列微分双次数(r,r−1)，直接计算(1+1,64+64)=(2,128)及128−2=126。",
            "body_location": "30–42",
            "id": "T00-O02",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "各次数一致；h₆标准命名由EXT-002提供，初始平方非零由EXT-003单独给出。"
          },
          {
            "actual_derivation": "目标明确相容的每页非零像和非零E∞；写出下一页ker/im商及相容像定义。",
            "body_location": "14–26、44–52",
            "id": "T00-O03",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "正文分别说明出射零和不属入射边界，不把任一要求冒充已完成；预留出入射证明符合本任务范围。"
          },
          {
            "actual_derivation": "强收敛给出E∞=Fˢ/Fˢ⁺¹；取非零F²/F³陪集代表元得到θ₆∈F²∖F³且非零。",
            "body_location": "54–68",
            "id": "T00-O04",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "每一步只用固定EXT-001和基础商群事实；没有加入阶2、唯一性或几何应用。"
          },
          {
            "actual_derivation": "说明[x]一般不唯一，允许加高过滤元素；基础约定与外部输入分开。",
            "body_location": "68–72及完整依赖文件",
            "id": "T00-O05",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "没有将合成谱比较、具体过滤消失或内部引理归入基础。三项实际外部命题均有used/source/specialization。"
          },
          {
            "actual_derivation": "仅写目标、经典次数、检测和基础；未引入h_j的高页生存分类。",
            "body_location": "全文1–72",
            "id": "T00-O06",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "与论文主目标一致，避开无关Hopf不等式，未使用任何未审定内部结论。"
          },
          {
            "actual_derivation": "总标题与三个小标题都是正文内容准确的数学标题；引用为轻量内部数据标。",
            "body_location": "标题1、3、28、70及全文",
            "id": "T00-O07",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "未出现原始TeX label、路径、管理状态、执行记录；标题没有宣称本段已完成主定理证明。"
          }
        ],
        "obligations_path": "reviews/T00-obligations.json",
        "obligations_sha256": "217eb6901206f1745fc85756f4fd31aad0c0289f18efc153427a71eaee3ed6a6",
        "remaining_tasks_outside_this_review": [
          "无入射的局部次数引理",
          "所有出射微分的排除和内部必要依赖",
          "最终非零E∞收束",
          "数学依赖的独立Lean核查"
        ],
        "review_status": "pass",
        "reviewed_utc": "2026-10-04T15:07:47.260663+00:00",
        "reviewer_role": "Judger",
        "revision_semantic_review": {
          "body_identical_bytes": true,
          "change_kind": "mathematical_typesetting_only",
          "external_proposition_versions_unchanged": true,
          "fields_checked": [
            "used_statement",
            "source_statement",
            "specialization",
            "use_sites",
            "sources"
          ],
          "independent_findings": [
            "EXT-001的2完成、强收敛、微分次数及关联分次结论均未改变。",
            "EXT-002保留每个j≥0的一维群、非零生成元及j=6实例。",
            "EXT-003保留标准Yoneda平方在(2,128)初始页非零，仍不采用潜在高页微分。",
            "格式修改未改变任何数学正文或外部命题。"
          ],
          "result": "pass",
          "source_revision": "v1→v2"
        },
        "revisions": [
          {
            "current_dependencies_sha256": "76c630243981fc3be3955319d674b97d507b29a24d68dbbeb88abb3a143d4f3c",
            "details": "EXT-001改135–138；EXT-002改140–146；正文不变。",
            "previous_dependencies_sha256": "9c58333585951b58efdc385c598a8c097e86aa192dbf3862a8ac54ff89a4154c",
            "type": "source_locator_correction"
          },
          {
            "current_dependencies_sha256": "9de3096f578868223ed282db44b86f33eb9b4394412286f4bc26b30cb6c162cf",
            "details": "仅添加公式定界符和TeX排版，use_sites移至v2文件；外部命题版本仍v1。",
            "previous_dependencies_sha256": "76c630243981fc3be3955319d674b97d507b29a24d68dbbeb88abb3a143d4f3c",
            "type": "typesetting_only"
          }
        ],
        "second_pass": {
          "findings": [
            "论文的h₆²终页目标被准确加强解释为非零存活，不加入后续几何结论。",
            "经典强收敛与E₂计算按外部输入登记，没有用Lean或历史结论决定数学。",
            "附录3166仅用于E₂非零性，没有误读其中未知高页微分。",
            "来源行号曾偏短，已在最终绑定版本修正；数学正文未改。"
          ],
          "method": "对照本次T00义务和已读论文原文，并逐字段比较v1/v2依赖：数学字符串转换为带定界符TeX；源定位、对象、量词、条件和结论强度不变。",
          "result": "pass"
        },
        "source_path": "math/T00-v2.md",
        "source_sha256": "35fa6c97c4ad80f102b7badf4fc411a4ad7d5b99f4f16fc6b76bf885d8d783fd",
        "status": "approved",
        "task_id": "T00",
        "upstream": [],
        "upstream_versions": [],
        "version": "v2"
      },
      "review_path": "reviews/T00-v2-review.json",
      "source": "math/T00-v2.md"
    },
    {
      "id": "T00a",
      "record": {
        "accepted_scope": "只排除入射，尚未证明所有出射为零或主目标。",
        "approved_headings": [
          "排除入射微分"
        ],
        "approved_title": "排除入射微分",
        "correctness": "pass",
        "dependencies_path": "math/T00a-v1.dependencies.json",
        "dependencies_sha256": "4356f53545c2392db77a97a39a2a9cf143552da1631dc94659e789e1dcee518e",
        "detail": "pass",
        "edge_reviews": [
          {
            "downstream": "T00a-v1",
            "evidence": "T00第30–39行的d_r次数和h₆²双次数正好供本段7–17行使用；对象不变，无代表元共享条件。",
            "status": "pass",
            "upstream": "T00-v2"
          }
        ],
        "faithfulness": "pass",
        "first_pass": {
          "findings": [
            "全部r≥2分为r2与r≥3，没有遗漏。",
            "子商归纳足以将负过滤消失带到E_r。",
            "最后过渡保留出射条件。"
          ],
          "method": "完整正文1–39，以T00-v2已审定正文和预先Ext定义基础独立复算源次数及两个分支。",
          "result": "pass"
        },
        "fixed_external_dependencies": [],
        "full_text_extra_scan": {
          "additional_logical_gaps": [],
          "forbidden_body_content": [],
          "unregistered_substantive_dependencies": [],
          "unreviewed_visible_math": []
        },
        "obligation_results": [
          {
            "actual_derivation": "逐项解s+r=2、t+r−1=128，唯一源为(2−r,129−r)。",
            "body_location": "7–17",
            "id": "T00a-O01",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "使用T00次数即可复算，未漏可能源。"
          },
          {
            "actual_derivation": "r=2源Ext⁰,¹²⁷；系数仅0次非零，所以127次分次同态只能零。",
            "body_location": "3、19–26",
            "id": "T00a-O02",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "普通分次Hom计算完整展示，不使用高页结论。"
          },
          {
            "actual_derivation": "r≥3先在E₂负过滤得到零，再固定双次数以核/同调逐页归纳。",
            "body_location": "28–35",
            "id": "T00a-O03",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "解释了负Ext消失如何传至目标第r页，覆盖所有r≥3。"
          },
          {
            "actual_derivation": "结论仅入射像零，并有条件说明若出射也零则下一页仍非零。",
            "body_location": "37–39",
            "id": "T00a-O04",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "仍将全部出射和E∞非零列作后续义务，没有冒充主定理完成。"
          },
          {
            "actual_derivation": "仅用T00和已预先列出的Ext定义事实；没有额外消失定理。",
            "body_location": "全文及空dependencies",
            "id": "T00a-O05",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "外部依赖没有遗漏，空新增依赖列表合理。"
          },
          {
            "actual_derivation": "标题“排除入射微分”与本引理范围一致，过渡为条件式数学说明。",
            "body_location": "标题1及末段39",
            "id": "T00a-O06",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "不含管理术语，未作为困难构造校准。"
          }
        ],
        "obligations_path": "reviews/T00a-obligations.json",
        "obligations_sha256": "98579e67f134f6a2c4087490b8778dfec764d94cfda757eb79fb2a9c616ac468",
        "review_status": "pass",
        "reviewed_utc": "2026-10-04T15:09:30.249361+00:00",
        "reviewer_role": "Judger",
        "second_pass": {
          "findings": [
            "同一2完成球谱、相同(s,t)约定。",
            "没有额外同伦计算、隐藏外部输入或未审定内部前提。"
          ],
          "method": "对照MainPaper/main.tex135–146的谱序列对象及次数；复核T00-v2上游hash和全部可见数学文字。",
          "result": "pass"
        },
        "source_path": "math/T00a-v1.md",
        "source_sha256": "13ccedca46a8e91b8c324a8952ecd76e1bd2c6a61016b2e06d2b4494370d85e7",
        "status": "approved",
        "task_id": "T00a",
        "upstream": [
          {
            "id": "T00",
            "sha256": "35fa6c97c4ad80f102b7badf4fc411a4ad7d5b99f4f16fc6b76bf885d8d783fd",
            "version": "v2"
          }
        ],
        "upstream_versions": [
          {
            "dependencies_sha256": "9de3096f578868223ed282db44b86f33eb9b4394412286f4bc26b30cb6c162cf",
            "review": "reviews/T00-v2-review.json",
            "source": "math/T00-v2.md",
            "source_sha256": "35fa6c97c4ad80f102b7badf4fc411a4ad7d5b99f4f16fc6b76bf885d8d783fd",
            "task_id": "T00",
            "version": "v2"
          }
        ],
        "version": "v1"
      },
      "review_path": "reviews/T00a-v1-review.json",
      "source": "math/T00a-v1.md"
    },
    {
      "id": "T01a",
      "record": {
        "accepted_scope": "有限λ商的关联分次、相关映射及分离性；不包括具体Ext层、同伦满射或α₂联立构造。",
        "approved_headings": [
          "有限 $\\lambda$ 商的过滤",
          "比较两个次数约定",
          "有限商的关联分次",
          "约化映射与乘 $\\lambda$"
        ],
        "approved_title": "有限 $\\lambda$ 商的过滤",
        "correctness": "pass",
        "deferred_interfaces": [
          "η及其他同伦乘积在关联分次由Ext乘法给出的比较尚未在本段建立",
          "具体Z/B层及线性组合需后续表格任务",
          "严格可除和同一α₂的相容性需CAL"
        ],
        "dependencies_path": "math/T01a-v1.dependencies.json",
        "dependencies_sha256": "ac4307f7b1833ff1227e51cecf158c46a493323305afdcbe3e9ed737a8374060",
        "detail": "pass",
        "edge_reviews": [
          {
            "downstream": "T01a-v1",
            "evidence": "T00同一2完成球谱与经典强收敛供T01a81行使用；本文s,t仍与T00完全一致。新合成双次数在3–52行单独定义，无共同代表元选择。",
            "status": "pass",
            "upstream": "T00-v2"
          }
        ],
        "faithfulness": "pass",
        "first_pass": {
          "findings": [
            "E₁自由λ结构使λ^q在邻接群也单射，余纤维群为截断多项式；λ线性d₁给E₂公式。",
            "ρ的λ幂与j右侧的λ幂及全部权重匹配。",
            "λ^k复合在余纤维的源靶都是λ^k，从而是所需自映射。",
            "关联分次上ρ有循环子群包含，j扩大边界分母，自映射两者都改变。",
            "末段没有预支任何目标类位于像中。"
          ],
          "method": "完整读取正文1–187，先仅据声明基础、T00-v2与固定5项外部输入复核E₂取商、次数换元、ρ和j的方块及λ^k分解。",
          "result": "pass"
        },
        "fixed_external_dependencies": [
          {
            "id": "EXT-004",
            "used_statement": "存在 $H\\mathbb F_2$ 合成谱的稳定对称幺半范畴及函子 $\\nu:\\mathrm{Sp}\\to\\mathrm{Syn}_{H\\mathbb F_2}$；双分次球谱为 $S^{a,b}=\\Sigma^{a-b}\\nu S^b$，典范比较映射 $\\Sigma\\nu S^{-1}\\to\\nu(\\Sigma S^{-1})$ 定义 $\\lambda\\in\\pi_{0,-1}S^{0,0}$。",
            "version": "v1"
          },
          {
            "id": "EXT-005",
            "used_statement": "对 $H\\mathbb F_2$ 与球谱，合成 Adams 谱序列的 $E_1$ 页是经典 Adams $E_1$ 页张量 $\\mathbb F_2[\\lambda]$，经典 $(s,t)$ 元素放在合成 $(s,t,t)$，$\\lambda$ 的三次数为 $(0,0,-1)$，$d_1$ 为经典 $d_1$ 的 $\\lambda$ 线性延拓，$E_2$ 亦为经典 $E_2$ 张量 $\\mathbb F_2[\\lambda]$。该识别来自合成 Adams 塔，与参数幂作用和逐层余纤维相容。",
            "version": "v1"
          },
          {
            "id": "EXT-006",
            "used_statement": "对每个 $q\\ge1$，$Q_q=S^{0,0}/\\lambda^q$ 的合成 Adams 极限页满足：若 $0\\le t-w\u003cq$，则 $E_\\infty^{s,t,w}(Q_q)\\cong Z_{q-t+w}^{s,t}/B_{1+t-w}^{s,t}$；否则为零。此处仅为极限页公式，关联分次识别另依赖强收敛。",
            "version": "v1"
          },
          {
            "id": "EXT-007",
            "used_statement": "$2$ 完成球谱 $S^0$ 是 $H\\mathbb F_2$ 幂零完成的，即它的模 $2$ Adams 分辨收敛到 $S^0$。",
            "version": "v1"
          },
          {
            "id": "EXT-008",
            "used_statement": "对 $H\\mathbb F_2$ 幂零完成且经典 Adams 谱序列强收敛的谱 $X$，每个有限参数商 $\\nu X/\\lambda^q$ 的合成 Adams 谱序列强收敛。其 Adams 过滤完整且 Hausdorff，极限页自然识别为关联分次。本文用于 $X=S^0_2{}^\\wedge$、$q\\ge1$。",
            "version": "v1"
          }
        ],
        "full_text_extra_scan": {
          "additional_logical_gaps": [],
          "forbidden_body_content": [],
          "unregistered_substantive_dependencies": [],
          "unreviewed_visible_math": []
        },
        "obligation_results": [
          {
            "actual_derivation": "定义HF₂合成函子、球谱、λ∈π0,−1、Q_q余纤维和πn,w；平移取S1,0。",
            "body_location": "3–23",
            "id": "T01a-O01",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "同伦权重随λ下降，stem保持；ρ在后文按余纤维图具体定义。ν被明确作为函子。"
          },
          {
            "actual_derivation": "显式计算k=t−s、v=w−k及s−v=t−w，再对(n,w)令t=n+s。",
            "body_location": "40–52、73–79",
            "id": "T01a-O02",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "与BHS原始(s,k,v)和本文(s,t,w)一一对应；没有把第三次数直接照搬。"
          },
          {
            "actual_derivation": "从BHS条件s≥v\u003es−q算成0≤a\u003cq，两个下标转成q−a和1+a，给出固定双次数gr_F公式。",
            "body_location": "66–91",
            "id": "T01a-O03",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "EXT-006仅提供极限页；结合独立EXT-008后才作关联分次识别，范围边界正确。"
          },
          {
            "actual_derivation": "逐项核实球谱有下界、2完成从而HF₂幂零完成，结合T00经典强收敛应用有限商强收敛，单列∩Fˢ=0。",
            "body_location": "81–99",
            "id": "T01a-O04",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "EXT-007和EXT-008准确分开；BHS A.14与Theorem9.19(1)原始证明支持后者。没有从有限E∞支撑单独推分离性。"
          },
          {
            "actual_derivation": "给ρ的余纤维方块，按E₁多项式作用把类送同名类，再给Zq−a/B1+a→Zp−a/B1+a并列支持范围。",
            "body_location": "103–111、123–134",
            "id": "T01a-O05",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "循环子群包含提供良定义，分母相同说明该层单射，超界零层不遗漏。"
          },
          {
            "actual_derivation": "给j余纤维图；计算q−(a+b)=p−a并得商映射；λ^k用ρ和j的复合图给出，逐项写出先扩大循环群再扩大边界群。",
            "body_location": "113–123、136–185",
            "id": "T01a-O06",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "同时展示映射构造、两个下标变化及所有支持情形；不是仅引用自然性或把不同商的j误用于自映射。"
          },
          {
            "actual_derivation": "本段只使用参数幂作用，没有使用η或其他同伦元的Ext乘法识别；合同明确将该接口留给后续。",
            "body_location": "16、159–187及合同excluded_downstream",
            "id": "T01a-O07",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "当前无未登记η乘法输入；后续必须另行固定，不可视为本段已审定。"
          },
          {
            "actual_derivation": "j只在源支持范围声明关联分次满射；最后说明同一Q_q上λ^k还扩大分子，公式不自动给满射或严格同伦可除。",
            "body_location": "157、175–187",
            "id": "T01a-O08",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "保留CAL真实提升义务；没有从首项相等直接写严格等式。"
          },
          {
            "actual_derivation": "五项外部命题按实际作用分开并记录used/source/specialization；对E₁到E₂、次数和映射的本地推导全部展开。",
            "body_location": "标题1、25、54、101；全文及5项依赖",
            "id": "T01a-O09",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "全文扫描未发现漏标实质输入，标题准确；EXT-007编号修正后与原始来源一致。"
          }
        ],
        "obligations_path": "reviews/T01a-obligations.json",
        "obligations_sha256": "ab3db496eadceee2eb69318ddd16cac2a726ab4b9153e78604f866d8cd575583",
        "review_status": "pass",
        "reviewed_utc": "2026-10-04T15:10:16.340050+00:00",
        "reviewer_role": "Judger",
        "revisions": [
          {
            "current_dependencies_sha256": "ac4307f7b1833ff1227e51cecf158c46a493323305afdcbe3e9ed737a8374060",
            "details": "EXT-007幂零完成来源由Definition9.17改为Definition9.16；正文不变。",
            "previous_dependencies_sha256": "eca2c6bcc4ab8b8cb72f1018cc025bd77b9417ac0141bd6d55519413b7614ca9",
            "type": "source_locator_correction"
          }
        ],
        "second_pass": {
          "findings": [
            "BHS原始第三次数确实是相对权重v，正文换元正确。",
            "有限商公式及强收敛条件与BHS原文一致。",
            "程序或Lean状态均未进入数学判断。",
            "EXT-007来源编号原为9.17，已修正为9.16后才绑定。",
            "后续Ext乘法识别没有被偷渡为已经审定的接口。"
          ],
          "method": "独立对照MainPaper/main.tex754–879及1009–1051；BHS原始SynRevIntro、SynRevBigraded与SynRevAdams对应定义、A.8/A.11/A.14和Theorem9.19(1)证明；扫描全文额外断言与标题。",
          "result": "pass"
        },
        "source_path": "math/T01a-v1.md",
        "source_sha256": "894c6b8847a3f1d1f25850d8191c16fd50ab15c6bff2281c9d6f35a4fa2fedc1",
        "status": "approved",
        "task_id": "T01a",
        "upstream": [
          {
            "id": "T00",
            "sha256": "35fa6c97c4ad80f102b7badf4fc411a4ad7d5b99f4f16fc6b76bf885d8d783fd",
            "version": "v2"
          }
        ],
        "upstream_versions": [
          {
            "dependencies_sha256": "9de3096f578868223ed282db44b86f33eb9b4394412286f4bc26b30cb6c162cf",
            "review": "reviews/T00-v2-review.json",
            "source": "math/T00-v2.md",
            "source_sha256": "35fa6c97c4ad80f102b7badf4fc411a4ad7d5b99f4f16fc6b76bf885d8d783fd",
            "task_id": "T00",
            "version": "v2"
          }
        ],
        "version": "v1"
      },
      "review_path": "reviews/T01a-v1-review.json",
      "source": "math/T01a-v1.md"
    },
    {
      "id": "T01b",
      "record": {
        "accepted_scope": "固定双次数支持范围、严格高过滤零界及比较映射层表；不含具体Ext非零或α₂构造。",
        "approved_headings": [
          "过滤的有限范围",
          "从关联分次消失得到严格的零",
          "将要比较的双次数",
          "乘 $\\lambda^6$ 的三个相关层",
          "相邻权重的可除性条件"
        ],
        "approved_title": "过滤的有限范围",
        "correctness": "pass",
        "dependencies_path": "math/T01b-v1.dependencies.json",
        "dependencies_sha256": "638c4daa43cc1c6d3805ae6132adcf958f0f0dcc563d5693c2fa014553fed0b7",
        "detail": "pass",
        "edge_reviews": [
          {
            "downstream": "T01b-v1",
            "evidence": "T01a84–96的gr公式与分离性供3–46行；T01a128–154与178–182的映射供64–133行，Q_q与索引完全一致。",
            "status": "pass",
            "upstream": "T01a-v1"
          },
          {
            "downstream": "T01b-v1",
            "evidence": "经典Ext次数及过滤定义沿用，无额外代表元或模型选择。",
            "status": "pass",
            "upstream": "T00-v2"
          }
        ],
        "faithfulness": "pass",
        "first_pass": {
          "findings": [
            "支持范围含整数边界和非负过滤。",
            "严格零使用分离性而非仅关联分次零。",
            "λ6和ρ层表的分子、分母与权重逐项正确。",
            "λ相邻权重覆盖全部s，无隐藏满射假设。"
          ],
          "method": "完整读取正文1–135，仅依T01a完整公式、分离性与T00基础复算全部7组支持和两类层表，再核对所有过滤分支。",
          "result": "pass"
        },
        "fixed_external_dependencies": [],
        "full_text_extra_scan": {
          "additional_logical_gaps": [],
          "forbidden_body_content": [],
          "unregistered_substantive_dependencies": [],
          "unreviewed_visible_math": []
        },
        "obligation_results": [
          {
            "actual_derivation": "将0≤n+s−w\u003cq逐项移项，用s整数转为闭区间并交s≥0。另由F0=G和逐层零商推出正下界。",
            "body_location": "3–24",
            "id": "T01b-O01",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "条件处理完整，没有声称支持内每层非零。"
          },
          {
            "actual_derivation": "七行均列a=n+s−w算式、半开条件、闭区间及高过滤零界。",
            "body_location": "50–60",
            "id": "T01b-O02",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "独立复算七组w−n分别9,9,7,7,13,14,15，q对应11/9，所有边界正确。"
          },
          {
            "actual_derivation": "零关联分次给过滤恒等链，再把恒定子群写为尾交，下降性使尾交等于总交，分离性使之为零。",
            "body_location": "28–46",
            "id": "T01b-O03",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "展示从关联分次到严格零所需的全部步骤，强收敛分离性由完整上游提供。"
          },
          {
            "actual_derivation": "代入λ6自映射源a=s−13和靶a+6=s−7，列s13/14/15源靶并说明s\u003c13、16..21、≥22。",
            "body_location": "64–88",
            "id": "T01b-O04",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "三行商及Ext次数均正确；借F16目标零处理高层，不偷用未知Ext计算。"
          },
          {
            "actual_derivation": "ρ两侧a=s−7，逐项得到Z18−s/Bs−6→Z16−s/Bs−6，并比较Q11来源与λ6来源条件。",
            "body_location": "90–113",
            "id": "T01b-O05",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "ρ三行Z5/Z4/Z3与靶Z3/Z2/Z1正确；没有把较弱循环条件误作较强条件。"
          },
          {
            "actual_derivation": "λ相邻权重的源指数s−15、靶s−14；单独算s14，逐项给15..22公式，处理23、≥24和\u003c14。",
            "body_location": "115–133",
            "id": "T01b-O06",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "覆盖所有整数过滤范围，s14不能命中结论还使用已说明的源最低过滤15。"
          },
          {
            "actual_derivation": "承认来源条件不同；最终只给条件式停止界：若修正后到F16则严格零，未承诺修正项存在。",
            "body_location": "99–113、135",
            "id": "T01b-O07",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "严格零的根据已证，具体像、相容选择均留后续，未偷渡CAL。"
          },
          {
            "actual_derivation": "逐行检查所有表格、公式、候选层、过渡与末段条件句。",
            "body_location": "全部标题及全文1–135",
            "id": "T01b-O08",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "没有新增实质外部依赖；内部引用均来自绑定T01a-v1。"
          }
        ],
        "obligations_path": "reviews/T01b-obligations.json",
        "obligations_sha256": "c1f765313a2ede19a2c4532006dd25fe8cc773a4b0c56b1d2ec7ca89cf5bdef5",
        "remaining_tasks_outside_this_review": [
          "相关Ext完整基、微分和乘积输入",
          "共同Q11来源对D的限制",
          "每层实际像与修正项",
          "同一α₂的两条严格等式"
        ],
        "review_status": "pass",
        "reviewed_utc": "2026-10-04T15:13:44.545224+00:00",
        "reviewer_role": "Judger",
        "second_pass": {
          "findings": [
            "七组双次数与后续局部需求一致。",
            "未把任何论文inspection或Permanent表格结论加入本段。",
            "没有使用尚未审定的具体层数据或联立构造。"
          ],
          "method": "对照MainPaper849–879公式及2387–2446实际群次数，核对绑定的T01a-v1、T00-v2全文和外部依赖hash；扫描标题、表格及额外推断。",
          "result": "pass"
        },
        "source_path": "math/T01b-v1.md",
        "source_sha256": "f0aaa1488363b95807e3cc4135cb775893076b970dcc9240411341e29f9e90a2",
        "status": "approved",
        "task_id": "T01b",
        "upstream": [
          {
            "id": "T00",
            "sha256": "35fa6c97c4ad80f102b7badf4fc411a4ad7d5b99f4f16fc6b76bf885d8d783fd",
            "version": "v2"
          },
          {
            "id": "T01a",
            "sha256": "894c6b8847a3f1d1f25850d8191c16fd50ab15c6bff2281c9d6f35a4fa2fedc1",
            "version": "v1"
          }
        ],
        "upstream_versions": [
          {
            "dependencies_sha256": "9de3096f578868223ed282db44b86f33eb9b4394412286f4bc26b30cb6c162cf",
            "review": "reviews/T00-v2-review.json",
            "source": "math/T00-v2.md",
            "source_sha256": "35fa6c97c4ad80f102b7badf4fc411a4ad7d5b99f4f16fc6b76bf885d8d783fd",
            "task_id": "T00",
            "version": "v2"
          },
          {
            "dependencies_sha256": "ac4307f7b1833ff1227e51cecf158c46a493323305afdcbe3e9ed737a8374060",
            "review": "reviews/T01a-v1-review.json",
            "source": "math/T01a-v1.md",
            "source_sha256": "894c6b8847a3f1d1f25850d8191c16fd50ab15c6bff2281c9d6f35a4fa2fedc1",
            "task_id": "T01a",
            "version": "v1"
          }
        ],
        "version": "v1"
      },
      "review_path": "reviews/T01b-v1-review.json",
      "source": "math/T01b-v1.md"
    },
    {
      "id": "P02a",
      "record": {
        "accepted_scope": "经典计算输入与两个目标坐标独立性；没有证明Z/B商、D过滤、α₂或α₃。",
        "approved_headings": [
          "计算所需的经典数据",
          "两个初始类",
          "过滤 $11$ 和 $12$",
          "过滤 $13$、$14$ 和 $15$",
          "微分目标的独立性",
          "一个 Ext 乘积"
        ],
        "approved_title": "计算所需的经典数据",
        "correctness": "pass",
        "dependencies_path": "math/P02a-v1.dependencies.json",
        "dependencies_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
        "detail": "pass",
        "edge_reviews": [
          {
            "downstream": "P02a-v1",
            "evidence": "经典球谱、s/t/stem及d_r次数不变。",
            "status": "pass",
            "upstream": "T00-v2"
          },
          {
            "downstream": "P02a-v1",
            "evidence": "无出射统一用T01a的Z∞子群约定，未将其写作经典非零E∞。",
            "status": "pass",
            "upstream": "T01a-v1"
          },
          {
            "downstream": "P02a-v1",
            "evidence": "数据对应后续实际用到的s11..15层；本段没有从支持范围推出额外非零。",
            "status": "pass",
            "upstream": "T01b-v1"
          }
        ],
        "external_dependency_review": [
          {
            "body_location": "18",
            "id": "EXT-P02a-001",
            "reason": "对照指定Fact、表格两独立方向或显示的零乘积公式，量词、次数与所需强度一致。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "行2375–2383，Fact x_123_9(1)；Table:S123过滤9",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "在 $2$ 完成球谱的经典模 $2$ Adams 谱序列中，$\\xi=x_{123,9}+h_0x_{123,8}\\in\\operatorname{Ext}_A^{9,132}(\\mathbb F_2,\\mathbb F_2)$ 在 $E_{12}$ 页非零，且不会被任何经典 Adams 微分击中。",
            "version": "v1"
          },
          {
            "body_location": "20",
            "id": "EXT-P02a-002",
            "reason": "对照指定Fact、表格两独立方向或显示的零乘积公式，量词、次数与所需强度一致。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Fact theta5sqAF(3)，行2150–2167；Table:S124.12过滤10，行2975–2979",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "在 $2$ 完成球谱的经典模 $2$ Adams 谱序列中，$a_0=h_0^2x_{124,8}\\in\\operatorname{Ext}_A^{10,134}(\\mathbb F_2,\\mathbb F_2)$ 给出非零 $E_\\infty$ 类。",
            "version": "v1"
          },
          {
            "body_location": "22",
            "id": "EXT-P02a-003",
            "reason": "对照指定Fact、表格两独立方向或显示的零乘积公式，量词、次数与所需强度一致。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "行2381–2384；Table:S125.19过滤8，行3067–3068",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "在 $2$ 完成球谱的经典模 $2$ Adams 谱序列中，$d_2(x_{125,8})=h_1(x_{123,9}+h_0x_{123,8})+h_0^2x_{124,8}\\ne0$；源为 $(s,t)=(8,133)$，靶为 $(10,134)$。",
            "version": "v1"
          },
          {
            "body_location": "28–36",
            "id": "EXT-P02a-004",
            "reason": "逐项核对该过滤完整Elements栏的每个基元素、个数、stem和内部次数；完整性及独立性作为计算输入明确固定。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.12过滤11，行2970–2974；附录说明行2783–2800",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "$\\operatorname{Ext}_A^{11,135}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $h_0x_{124,10,2}+h_0^3x_{124,8},\\quad h_0^3x_{124,8},\\quad x_{124,11,3},\\quad x_{124,11,2}+x_{124,11},\\quad x_{124,11}$；这些元素线性无关并张成整个群。",
            "version": "v1"
          },
          {
            "body_location": "32",
            "id": "EXT-P02a-005",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.12过滤11，行2970–2974",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_2(x_{125,9,2})=h_0x_{124,10,2}+h_0^3x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(9,134)$，靶双次数为 $(11,135)$。",
            "version": "v1"
          },
          {
            "body_location": "33",
            "id": "EXT-P02a-006",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.12过滤11，行2970–2974",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_2(h_0x_{125,8})=h_0^3x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(9,134)$，靶双次数为 $(11,135)$。",
            "version": "v1"
          },
          {
            "body_location": "34",
            "id": "EXT-P02a-007",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.12过滤11，行2970–2974",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_3(x_{125,8,2})=x_{124,11,3}\\ne0$ 在 $E_3$ 页成立；源双次数为 $(8,133)$，靶双次数为 $(11,135)$。",
            "version": "v1"
          },
          {
            "body_location": "35",
            "id": "EXT-P02a-008",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.12过滤11，行2970–2974",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_4(x_{124,11,2}+x_{124,11})=x_{123,15}\\ne0$ 在 $E_4$ 页成立；源双次数为 $(11,135)$，靶双次数为 $(15,138)$。",
            "version": "v1"
          },
          {
            "body_location": "36",
            "id": "EXT-P02a-009",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.12过滤11，行2970–2974",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_2(x_{124,11})=h_0^2x_{123,11}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(11,135)$，靶双次数为 $(13,136)$。",
            "version": "v1"
          },
          {
            "body_location": "40–48",
            "id": "EXT-P02a-010",
            "reason": "逐项核对该过滤完整Elements栏的每个基元素、个数、stem和内部次数；完整性及独立性作为计算输入明确固定。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.12过滤12，行2965–2969；附录说明行2783–2800",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "$\\operatorname{Ext}_A^{12,136}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $h_0x_{124,11,2}+h_0x_{124,11},\\quad h_0^2x_{124,10,2}+h_0^4x_{124,8},\\quad h_0^4x_{124,8},\\quad h_1x_{123,11,2},\\quad h_0x_{124,11}$；这些元素线性无关并张成整个群。",
            "version": "v1"
          },
          {
            "body_location": "44",
            "id": "EXT-P02a-011",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.12过滤12，行2965–2969",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_2(x_{125,10})=h_0x_{124,11,2}+h_0x_{124,11}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(10,135)$，靶双次数为 $(12,136)$。",
            "version": "v1"
          },
          {
            "body_location": "45",
            "id": "EXT-P02a-012",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.12过滤12，行2965–2969",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_2(h_0x_{125,9,2})=h_0^2x_{124,10,2}+h_0^4x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(10,135)$，靶双次数为 $(12,136)$。",
            "version": "v1"
          },
          {
            "body_location": "46",
            "id": "EXT-P02a-013",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.12过滤12，行2965–2969",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_2(h_0^2x_{125,8})=h_0^4x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(10,135)$，靶双次数为 $(12,136)$。",
            "version": "v1"
          },
          {
            "body_location": "47",
            "id": "EXT-P02a-014",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.12过滤12，行2965–2969",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_3(x_{125,9})=h_1x_{123,11,2}\\ne0$ 在 $E_3$ 页成立；源双次数为 $(9,134)$，靶双次数为 $(12,136)$。",
            "version": "v1"
          },
          {
            "body_location": "48",
            "id": "EXT-P02a-015",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.12过滤12，行2965–2969",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_2(h_0x_{124,11})=h_0^3x_{123,11}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(12,136)$，靶双次数为 $(14,137)$。",
            "version": "v1"
          },
          {
            "body_location": "54–61",
            "id": "EXT-P02a-016",
            "reason": "逐项核对该过滤完整Elements栏的每个基元素、个数、stem和内部次数；完整性及独立性作为计算输入明确固定。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤13，行2951–2954；附录说明行2783–2800",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "$\\operatorname{Ext}_A^{13,137}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $h_0^5x_{124,8},\\quad [H_1](\\Delta e_1+C_0+h_0^6h_5^2),\\quad e_0\\Delta h_6g,\\quad h_4x_{109,12}$；这些元素线性无关并张成整个群。",
            "version": "v1"
          },
          {
            "body_location": "58",
            "id": "EXT-P02a-017",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤13，行2951–2954",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_2(h_0^3x_{125,8})=h_0^5x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(11,136)$，靶双次数为 $(13,137)$。",
            "version": "v1"
          },
          {
            "body_location": "59",
            "id": "EXT-P02a-018",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤13，行2951–2954",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_3(x_{125,10,2})=[H_1](\\Delta e_1+C_0+h_0^6h_5^2)\\ne0$ 在 $E_3$ 页成立；源双次数为 $(10,135)$，靶双次数为 $(13,137)$。",
            "version": "v1"
          },
          {
            "body_location": "60",
            "id": "EXT-P02a-019",
            "reason": "Permanent标记只取Z∞无出射强度；初始非零由对应完整基输入另给。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤13，行2951–2954",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "类 $e_0\\Delta h_6g\\in\\operatorname{Ext}_A^{13,137}$ 属于 $Z_\\infty^{13,137}$，即无经典出射 Adams 微分。",
            "version": "v1"
          },
          {
            "body_location": "61",
            "id": "EXT-P02a-020",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤13，行2951–2954",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_3(h_4x_{109,12})=h_1x_{122,15,2}\\ne0$ 在 $E_3$ 页成立；源双次数为 $(13,137)$，靶双次数为 $(16,139)$。",
            "version": "v1"
          },
          {
            "body_location": "63–71",
            "id": "EXT-P02a-021",
            "reason": "逐项核对该过滤完整Elements栏的每个基元素、个数、stem和内部次数；完整性及独立性作为计算输入明确固定。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤14，行2946–2950；附录说明行2783–2800",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "$\\operatorname{Ext}_A^{14,138}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $h_1x_{123,13},\\quad h_1x_{123,13,2},\\quad \\Delta h_2^2x_{94,8},\\quad x_{124,14},\\quad x_{124,14,2}$；这些元素线性无关并张成整个群。",
            "version": "v1"
          },
          {
            "body_location": "67",
            "id": "EXT-P02a-022",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤14，行2946–2950",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_2(x_{125,12})=h_1x_{123,13}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(12,137)$，靶双次数为 $(14,138)$。",
            "version": "v1"
          },
          {
            "body_location": "68",
            "id": "EXT-P02a-023",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤14，行2946–2950",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_2(x_{125,12,2})=h_1x_{123,13,2}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(12,137)$，靶双次数为 $(14,138)$。",
            "version": "v1"
          },
          {
            "body_location": "69",
            "id": "EXT-P02a-024",
            "reason": "Permanent标记只取Z∞无出射强度；初始非零由对应完整基输入另给。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤14，行2946–2950",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "类 $\\Delta h_2^2x_{94,8}\\in\\operatorname{Ext}_A^{14,138}$ 属于 $Z_\\infty^{14,138}$，即无经典出射 Adams 微分。",
            "version": "v1"
          },
          {
            "body_location": "70",
            "id": "EXT-P02a-025",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤14，行2946–2950",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_2(x_{124,14})=h_0x_{123,15}+h_0^3x_{123,13,2}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(14,138)$，靶双次数为 $(16,139)$。",
            "version": "v1"
          },
          {
            "body_location": "71",
            "id": "EXT-P02a-026",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤14，行2946–2950",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_2(x_{124,14,2})=h_0x_{123,15}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(14,138)$，靶双次数为 $(16,139)$。",
            "version": "v1"
          },
          {
            "body_location": "73–80",
            "id": "EXT-P02a-027",
            "reason": "逐项核对该过滤完整Elements栏的每个基元素、个数、stem和内部次数；完整性及独立性作为计算输入明确固定。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤15，行2942–2945；附录说明行2783–2800",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "$\\operatorname{Ext}_A^{15,139}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $x_{124,15},\\quad h_3^2x_{110,13}+h_0x_{124,14},\\quad h_0x_{124,14},\\quad h_0x_{124,14,2}$；这些元素线性无关并张成整个群。",
            "version": "v1"
          },
          {
            "body_location": "77",
            "id": "EXT-P02a-028",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤15，行2942–2945",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_4(h_6x_{62,10})=x_{124,15}\\ne0$ 在 $E_4$ 页成立；源双次数为 $(11,136)$，靶双次数为 $(15,139)$。",
            "version": "v1"
          },
          {
            "body_location": "78",
            "id": "EXT-P02a-029",
            "reason": "Permanent标记只取Z∞无出射强度；初始非零由对应完整基输入另给。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤15，行2942–2945",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "类 $h_3^2x_{110,13}+h_0x_{124,14}\\in\\operatorname{Ext}_A^{15,139}$ 属于 $Z_\\infty^{15,139}$，即无经典出射 Adams 微分。",
            "version": "v1"
          },
          {
            "body_location": "79",
            "id": "EXT-P02a-030",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤15，行2942–2945",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_2(h_0x_{124,14})=h_0^2x_{123,15}+h_0^4x_{123,13,2}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(15,139)$，靶双次数为 $(17,140)$。",
            "version": "v1"
          },
          {
            "body_location": "80",
            "id": "EXT-P02a-031",
            "reason": "逐字核对原表该行d_r与value，重新计算源/靶双次数，并区分入射d_r^{-1}与出射；等式只在其E_r页非零。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S124.13过滤15，行2942–2945",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "经典 Adams 微分 $d_2(h_0x_{124,14,2})=h_0^2x_{123,15}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(15,139)$，靶双次数为 $(17,140)$。",
            "version": "v1"
          },
          {
            "body_location": "95–105",
            "id": "EXT-P02a-032",
            "reason": "对照指定Fact、表格两独立方向或显示的零乘积公式，量词、次数与所需强度一致。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S123过滤16，行2873–2874",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "在 $\\operatorname{Ext}_A^{16,139}$ 中，$a_{16}+b_{16}$ 与 $b_{16}$ 线性无关，其中 $a_{16}=h_0x_{123,15},b_{16}=h_0^3x_{123,13,2}$。",
            "version": "v1"
          },
          {
            "body_location": "97–105",
            "id": "EXT-P02a-033",
            "reason": "对照指定Fact、表格两独立方向或显示的零乘积公式，量词、次数与所需强度一致。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "Table:S123过滤17，行2869–2870",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "在 $\\operatorname{Ext}_A^{17,140}$ 中，$a_{17}+b_{17}$ 与 $b_{17}$ 线性无关，其中 $a_{17}=h_0^2x_{123,15},b_{17}=h_0^4x_{123,13,2}$。",
            "version": "v1"
          },
          {
            "body_location": "125",
            "id": "EXT-P02a-034",
            "reason": "对照指定Fact、表格两独立方向或显示的零乘积公式，量词、次数与所需强度一致。",
            "remaining_work": [],
            "source_evidence": [
              {
                "kind": "paper_computation_input",
                "locator": "行2427–2429，显示公式 h_1·e_0Δh_6g=0",
                "path": "MainPaper/main.tex"
              }
            ],
            "status": "pass",
            "used_statement": "在经典 Adams $E_2$ 页，$h_1(e_0\\Delta h_6g)=0\\in\\operatorname{Ext}_A^{14,139}(\\mathbb F_2,\\mathbb F_2)$。",
            "version": "v1"
          }
        ],
        "faithfulness": "pass",
        "first_pass": {
          "findings": [
            "所有输入在正文有精确使用位置。",
            "出入方向和对应页非零在开头明确定义。",
            "完整基与逐行微分是不同命题，未互相代替。",
            "目标独立性的坐标变换可逐行复核。",
            "末段明确Ext零不等于严格同伦零。"
          ],
          "method": "完整阅读正文1–125及34项依赖，以明确的计算输入和上游次数检查每个断言；不采用表格之外的默认假设。",
          "result": "pass"
        },
        "fixed_external_dependencies": [
          {
            "id": "EXT-P02a-001",
            "used_statement": "在 $2$ 完成球谱的经典模 $2$ Adams 谱序列中，$\\xi=x_{123,9}+h_0x_{123,8}\\in\\operatorname{Ext}_A^{9,132}(\\mathbb F_2,\\mathbb F_2)$ 在 $E_{12}$ 页非零，且不会被任何经典 Adams 微分击中。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-002",
            "used_statement": "在 $2$ 完成球谱的经典模 $2$ Adams 谱序列中，$a_0=h_0^2x_{124,8}\\in\\operatorname{Ext}_A^{10,134}(\\mathbb F_2,\\mathbb F_2)$ 给出非零 $E_\\infty$ 类。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-003",
            "used_statement": "在 $2$ 完成球谱的经典模 $2$ Adams 谱序列中，$d_2(x_{125,8})=h_1(x_{123,9}+h_0x_{123,8})+h_0^2x_{124,8}\\ne0$；源为 $(s,t)=(8,133)$，靶为 $(10,134)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-004",
            "used_statement": "$\\operatorname{Ext}_A^{11,135}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $h_0x_{124,10,2}+h_0^3x_{124,8},\\quad h_0^3x_{124,8},\\quad x_{124,11,3},\\quad x_{124,11,2}+x_{124,11},\\quad x_{124,11}$；这些元素线性无关并张成整个群。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-005",
            "used_statement": "经典 Adams 微分 $d_2(x_{125,9,2})=h_0x_{124,10,2}+h_0^3x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(9,134)$，靶双次数为 $(11,135)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-006",
            "used_statement": "经典 Adams 微分 $d_2(h_0x_{125,8})=h_0^3x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(9,134)$，靶双次数为 $(11,135)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-007",
            "used_statement": "经典 Adams 微分 $d_3(x_{125,8,2})=x_{124,11,3}\\ne0$ 在 $E_3$ 页成立；源双次数为 $(8,133)$，靶双次数为 $(11,135)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-008",
            "used_statement": "经典 Adams 微分 $d_4(x_{124,11,2}+x_{124,11})=x_{123,15}\\ne0$ 在 $E_4$ 页成立；源双次数为 $(11,135)$，靶双次数为 $(15,138)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-009",
            "used_statement": "经典 Adams 微分 $d_2(x_{124,11})=h_0^2x_{123,11}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(11,135)$，靶双次数为 $(13,136)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-010",
            "used_statement": "$\\operatorname{Ext}_A^{12,136}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $h_0x_{124,11,2}+h_0x_{124,11},\\quad h_0^2x_{124,10,2}+h_0^4x_{124,8},\\quad h_0^4x_{124,8},\\quad h_1x_{123,11,2},\\quad h_0x_{124,11}$；这些元素线性无关并张成整个群。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-011",
            "used_statement": "经典 Adams 微分 $d_2(x_{125,10})=h_0x_{124,11,2}+h_0x_{124,11}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(10,135)$，靶双次数为 $(12,136)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-012",
            "used_statement": "经典 Adams 微分 $d_2(h_0x_{125,9,2})=h_0^2x_{124,10,2}+h_0^4x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(10,135)$，靶双次数为 $(12,136)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-013",
            "used_statement": "经典 Adams 微分 $d_2(h_0^2x_{125,8})=h_0^4x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(10,135)$，靶双次数为 $(12,136)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-014",
            "used_statement": "经典 Adams 微分 $d_3(x_{125,9})=h_1x_{123,11,2}\\ne0$ 在 $E_3$ 页成立；源双次数为 $(9,134)$，靶双次数为 $(12,136)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-015",
            "used_statement": "经典 Adams 微分 $d_2(h_0x_{124,11})=h_0^3x_{123,11}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(12,136)$，靶双次数为 $(14,137)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-016",
            "used_statement": "$\\operatorname{Ext}_A^{13,137}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $h_0^5x_{124,8},\\quad [H_1](\\Delta e_1+C_0+h_0^6h_5^2),\\quad e_0\\Delta h_6g,\\quad h_4x_{109,12}$；这些元素线性无关并张成整个群。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-017",
            "used_statement": "经典 Adams 微分 $d_2(h_0^3x_{125,8})=h_0^5x_{124,8}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(11,136)$，靶双次数为 $(13,137)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-018",
            "used_statement": "经典 Adams 微分 $d_3(x_{125,10,2})=[H_1](\\Delta e_1+C_0+h_0^6h_5^2)\\ne0$ 在 $E_3$ 页成立；源双次数为 $(10,135)$，靶双次数为 $(13,137)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-019",
            "used_statement": "类 $e_0\\Delta h_6g\\in\\operatorname{Ext}_A^{13,137}$ 属于 $Z_\\infty^{13,137}$，即无经典出射 Adams 微分。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-020",
            "used_statement": "经典 Adams 微分 $d_3(h_4x_{109,12})=h_1x_{122,15,2}\\ne0$ 在 $E_3$ 页成立；源双次数为 $(13,137)$，靶双次数为 $(16,139)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-021",
            "used_statement": "$\\operatorname{Ext}_A^{14,138}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $h_1x_{123,13},\\quad h_1x_{123,13,2},\\quad \\Delta h_2^2x_{94,8},\\quad x_{124,14},\\quad x_{124,14,2}$；这些元素线性无关并张成整个群。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-022",
            "used_statement": "经典 Adams 微分 $d_2(x_{125,12})=h_1x_{123,13}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(12,137)$，靶双次数为 $(14,138)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-023",
            "used_statement": "经典 Adams 微分 $d_2(x_{125,12,2})=h_1x_{123,13,2}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(12,137)$，靶双次数为 $(14,138)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-024",
            "used_statement": "类 $\\Delta h_2^2x_{94,8}\\in\\operatorname{Ext}_A^{14,138}$ 属于 $Z_\\infty^{14,138}$，即无经典出射 Adams 微分。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-025",
            "used_statement": "经典 Adams 微分 $d_2(x_{124,14})=h_0x_{123,15}+h_0^3x_{123,13,2}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(14,138)$，靶双次数为 $(16,139)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-026",
            "used_statement": "经典 Adams 微分 $d_2(x_{124,14,2})=h_0x_{123,15}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(14,138)$，靶双次数为 $(16,139)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-027",
            "used_statement": "$\\operatorname{Ext}_A^{15,139}(\\mathbb F_2,\\mathbb F_2)$ 的完整 $\\mathbb F_2$ 基为 $x_{124,15},\\quad h_3^2x_{110,13}+h_0x_{124,14},\\quad h_0x_{124,14},\\quad h_0x_{124,14,2}$；这些元素线性无关并张成整个群。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-028",
            "used_statement": "经典 Adams 微分 $d_4(h_6x_{62,10})=x_{124,15}\\ne0$ 在 $E_4$ 页成立；源双次数为 $(11,136)$，靶双次数为 $(15,139)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-029",
            "used_statement": "类 $h_3^2x_{110,13}+h_0x_{124,14}\\in\\operatorname{Ext}_A^{15,139}$ 属于 $Z_\\infty^{15,139}$，即无经典出射 Adams 微分。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-030",
            "used_statement": "经典 Adams 微分 $d_2(h_0x_{124,14})=h_0^2x_{123,15}+h_0^4x_{123,13,2}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(15,139)$，靶双次数为 $(17,140)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-031",
            "used_statement": "经典 Adams 微分 $d_2(h_0x_{124,14,2})=h_0^2x_{123,15}\\ne0$ 在 $E_2$ 页成立；源双次数为 $(15,139)$，靶双次数为 $(17,140)$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-032",
            "used_statement": "在 $\\operatorname{Ext}_A^{16,139}$ 中，$a_{16}+b_{16}$ 与 $b_{16}$ 线性无关，其中 $a_{16}=h_0x_{123,15},b_{16}=h_0^3x_{123,13,2}$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-033",
            "used_statement": "在 $\\operatorname{Ext}_A^{17,140}$ 中，$a_{17}+b_{17}$ 与 $b_{17}$ 线性无关，其中 $a_{17}=h_0^2x_{123,15},b_{17}=h_0^4x_{123,13,2}$。",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-034",
            "used_statement": "在经典 Adams $E_2$ 页，$h_1(e_0\\Delta h_6g)=0\\in\\operatorname{Ext}_A^{14,139}(\\mathbb F_2,\\mathbb F_2)$。",
            "version": "v1"
          }
        ],
        "full_text_extra_scan": {
          "additional_logical_gaps": [],
          "forbidden_body_content": [],
          "unregistered_substantive_dependencies": [],
          "unreviewed_visible_math": []
        },
        "obligation_results": [
          {
            "actual_derivation": "定义输入页数和出入方向，给行次数公式；分别登记ξ、a₀的不同生存含义，ε13/14/15只用无出射。",
            "body_location": "3–7、18–22及全部表格",
            "id": "P02-O01",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "每个d_r在其页上非零，不误称终页；未把Permanent统一当无入射。"
          },
          {
            "actual_derivation": "五组完整基连同生成/独立被分别列为明确计算输入，元素数5、5、4、5、4与原始表行吻合。",
            "body_location": "26–28、40、54、63、73及完整基依赖",
            "id": "P02-O02",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "没有从少量例子推穷尽；完整性是原始完整计算表的输入解释，并未假装在此重算。"
          },
          {
            "actual_derivation": "初始3项、五个基、23条微分或无出射信息、两个独立性输入和一个零乘积分别固定。",
            "body_location": "完整34项依赖文件与18–125引用",
            "id": "P02-O03",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "used/source/specialization齐全；无α₂、D过滤或CAL严格等式作为外部输入。"
          },
          {
            "actual_derivation": "两对目标变量次数固定，显式变换u a+v b=u(a+b)+(u+v)b，以已知基方向独立推出a,b独立。",
            "body_location": "84–121",
            "id": "P02-O04",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "所需线性代数实际展示；真正Z/B核计算明确交P02b/c，未用简单示例冒充该计算。"
          },
          {
            "actual_derivation": "非零d₄方向和d₄入射方向均保留，并声明这里只是经典页数据；尚未作任何合成λ杀灭结论。",
            "body_location": "5、38、52、77、121",
            "id": "P02-O05",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "没有在错误的B下标提前除掉d₄边界，也没有把经典死亡直接写成合成消失。"
          },
          {
            "actual_derivation": "仅覆盖stem124 s11..15、初始ξ/a₀和stem123目标独立性。",
            "body_location": "全部五表及源定位",
            "id": "P02-O06",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "没有表格外消失或高过滤结论。"
          },
          {
            "actual_derivation": "逐行审查标题、基名、次数、出入说明、目标坐标与最后零乘积限定。",
            "body_location": "标题1、9、24、50、82、123及全部正文",
            "id": "P02-O07",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "本段正文纯数学；依赖面板标题的原始TeX已在绑定前改成中文短名，命题未变。"
          },
          {
            "actual_derivation": "ξ∈(9,132)、a₀∈(10,134)及d₂源(8,133)逐项核对Fact x1239与theta5sqAF。",
            "body_location": "13–22",
            "id": "P02a-S01",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "与原始论文所列完整输入对应，且未超出本局部范围。"
          },
          {
            "actual_derivation": "s11完整五方向包含两d₂边界、一d₃边界、一非零d₄出射和一非零d₂出射；特殊d₄方向没有遗漏。",
            "body_location": "28–38",
            "id": "P02a-S02",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "与原始论文所列完整输入对应，且未超出本局部范围。"
          },
          {
            "actual_derivation": "s12完整五方向为三d₂边界、一d₃边界、一非零d₂出射。",
            "body_location": "40–48",
            "id": "P02a-S03",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "与原始论文所列完整输入对应，且未超出本局部范围。"
          },
          {
            "actual_derivation": "s13四方向与两个入射、一个无出射、一个非零d₃出射逐项一致。",
            "body_location": "54–61",
            "id": "P02a-S04",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "与原始论文所列完整输入对应，且未超出本局部范围。"
          },
          {
            "actual_derivation": "s14五方向与两个独立d₂目标、两个d₂边界和ε14无出射逐项一致。",
            "body_location": "63–71",
            "id": "P02a-S05",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "与原始论文所列完整输入对应，且未超出本局部范围。"
          },
          {
            "actual_derivation": "s15四方向包含x124,15的d₄入射、ε15无出射和两个d₂出射；没有提前消掉d₄类。",
            "body_location": "73–80",
            "id": "P02a-S06",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "与原始论文所列完整输入对应，且未超出本局部范围。"
          },
          {
            "actual_derivation": "两对目标独立性通过F₂坐标变换完整推出，仍未预断定后续循环商。",
            "body_location": "84–121",
            "id": "P02a-S07",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "与原始论文所列完整输入对应，且未超出本局部范围。"
          },
          {
            "actual_derivation": "h₁ε13=0位于(14,139)；只认定Ext乘积，不变成同伦零或可除见证。",
            "body_location": "123–125",
            "id": "P02a-S08",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "与原始论文所列完整输入对应，且未超出本局部范围。"
          }
        ],
        "obligations_path": "reviews/P02-obligations.json",
        "obligations_sha256": "2e0dbb2d2e7ca0b8c05ecd92f793bbac3f2e0c034e1fe04e7c627ce75e4f9b14",
        "review_status": "pass",
        "reviewed_utc": "2026-10-04T15:20:13.555737+00:00",
        "reviewer_role": "Judger",
        "revisions": [
          {
            "current_dependencies_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
            "details": "依赖name改成无原始TeX的中文短标题，正文及used_statement未变。",
            "previous_dependencies_sha256": "eaef3e7049caa87294eadfb7395c797c7329f917268bb87494ef8055cee5e674",
            "type": "visible_title_typesetting"
          }
        ],
        "second_pass": {
          "findings": [
            "s11的非零d₄方向与原表一致，正文没有误分为d₂/d₃入射。",
            "s13、14、15的无出射输入保留较弱而足用的Z∞强度。",
            "ε13/ε14/ε15是完整定义后的局部名称，不与既有Ext类g混淆。",
            "基表未截断任何本次使用的过滤行。"
          ],
          "method": "独立对照MainPaper2375–2384、2164、2428、2965–2979、2942–2954、2869–2875及对应源行；扫描所有数学标题和额外依赖。",
          "result": "pass"
        },
        "source_path": "math/P02a-v1.md",
        "source_sha256": "e1471f14a8ab7cd9033a688e973ab6aabc6268b27f4d510756a504973485c8ac",
        "status": "approved",
        "task_id": "P02a",
        "upstream": [
          {
            "id": "T00",
            "sha256": "35fa6c97c4ad80f102b7badf4fc411a4ad7d5b99f4f16fc6b76bf885d8d783fd",
            "version": "v2"
          },
          {
            "id": "T01a",
            "sha256": "894c6b8847a3f1d1f25850d8191c16fd50ab15c6bff2281c9d6f35a4fa2fedc1",
            "version": "v1"
          },
          {
            "id": "T01b",
            "sha256": "f0aaa1488363b95807e3cc4135cb775893076b970dcc9240411341e29f9e90a2",
            "version": "v1"
          }
        ],
        "upstream_versions": [
          {
            "dependencies_sha256": "9de3096f578868223ed282db44b86f33eb9b4394412286f4bc26b30cb6c162cf",
            "review": "reviews/T00-v2-review.json",
            "source": "math/T00-v2.md",
            "source_sha256": "35fa6c97c4ad80f102b7badf4fc411a4ad7d5b99f4f16fc6b76bf885d8d783fd",
            "task_id": "T00",
            "version": "v2"
          },
          {
            "dependencies_sha256": "ac4307f7b1833ff1227e51cecf158c46a493323305afdcbe3e9ed737a8374060",
            "review": "reviews/T01a-v1-review.json",
            "source": "math/T01a-v1.md",
            "source_sha256": "894c6b8847a3f1d1f25850d8191c16fd50ab15c6bff2281c9d6f35a4fa2fedc1",
            "task_id": "T01a",
            "version": "v1"
          },
          {
            "dependencies_sha256": "638c4daa43cc1c6d3805ae6132adcf958f0f0dcc563d5693c2fa014553fed0b7",
            "review": "reviews/T01b-v1-review.json",
            "source": "math/T01b-v1.md",
            "source_sha256": "f0aaa1488363b95807e3cc4135cb775893076b970dcc9240411341e29f9e90a2",
            "task_id": "T01b",
            "version": "v1"
          }
        ],
        "version": "v1"
      },
      "review_path": "reviews/P02a-v1-review.json",
      "source": "math/P02a-v1.md"
    },
    {
      "id": "P02b",
      "record": {
        "accepted_scope": "只证明π124,133Q11的s11与s12关联分次为零及F11=F12=F13；不证明D或α₂。",
        "approved_headings": [
          "消去两个低过滤层",
          "过滤 $11$",
          "过滤 $12$",
          "同伦过滤中的结果"
        ],
        "approved_title": "消去两个低过滤层",
        "correctness": "pass",
        "dependencies_path": "math/P02b-v1.dependencies.json",
        "dependencies_sha256": "a07d64abd0f8d67a41da8d0ce7e4704d62adaaf9c445af9b7c2b39867118ceb8",
        "detail": "pass",
        "edge_reviews": [
          {
            "downstream": "P02b-v1",
            "evidence": "s11/12完整基和9条微分在P02a28–48行固定；P02b仅由此做线性代数核商，没有使用未经固定的死亡或存活。",
            "status": "pass",
            "upstream": "P02a-v1"
          },
          {
            "downstream": "P02b-v1",
            "evidence": "Z/B包含约定及gr同构与本段所用相同。",
            "status": "pass",
            "upstream": "T01a-v1"
          },
          {
            "downstream": "P02b-v1",
            "evidence": "G正是已列π124,133Q11；s11与s12在支持内。",
            "status": "pass",
            "upstream": "T01b-v1"
          }
        ],
        "faithfulness": "pass",
        "first_pass": {
          "findings": [
            "s11 c在E₄才支持微分，前面d₂核计算保留它；随后以E₄非零目标正确排除。",
            "每个边界项在相应微分页确已为零。",
            "完整基提供穷尽，F₂标量非零作用用在正确页。",
            "两处零商与实际G同伦次数一致。"
          ],
          "method": "读取完整正文，按任意基系数逐项重演s11的d₂→d₄、s12的d₂排除，再复核过滤商推回子群等式。",
          "result": "pass"
        },
        "fixed_external_dependencies": [],
        "full_text_extra_scan": {
          "additional_logical_gaps": [],
          "forbidden_body_content": [],
          "unregistered_substantive_dependencies": [],
          "unreviewed_visible_math": []
        },
        "obligation_results": [
          {
            "actual_derivation": "对G=π124,133Q11代入a=s−9，分别计算s11的Z9/B3、s12的Z8/B4。",
            "body_location": "3–19",
            "id": "P02b-O01",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "群次数、q和两个边界下标均从审定比较式逐项算出。"
          },
          {
            "actual_derivation": "完整重列s11五基，标明b1,b2∈B2、b3∈B3，u支持d₂，c支持d₄且先属于Z3。",
            "body_location": "23–45",
            "id": "P02b-O02",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "保留非零d₄方向，不把它误作短微分边界。"
          },
          {
            "actual_derivation": "任意五系数表达；先用d₂目标E₂非零消去δ，再到E₄用d₄目标非零消去γ，得到Z9⊂span(b1,b2,b3)⊂B3并由反包含得零商。",
            "body_location": "47–78",
            "id": "P02b-O03",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "实际排尽全部线性组合，每次非零性使用正确页；并非只检查命名类。"
          },
          {
            "actual_derivation": "完整s12五基；任意组合由非零d₂排μ，剩四项在B3⊂B4，再用B4⊂Z8得零商。",
            "body_location": "82–127",
            "id": "P02b-O04",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "同时说明分子限制和分母消去，没有遗漏非平凡组合。"
          },
          {
            "actual_derivation": "两个gr零逐个变成F11=F12、F12=F13；限定结论为这个群的已有F11类提升到F13。",
            "body_location": "130–147",
            "id": "P02b-O05",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "没有声称整个群为零，也没有消去≥13的首项。"
          },
          {
            "actual_derivation": "完整核对所有可见数学标题、线性代数推导和实际外部调用；复用原12项固定命题及其UTF8 hash。",
            "body_location": "全文及12项复用元信息",
            "id": "P02-common",
            "remaining_mathematical_work": [],
            "status": "pass",
            "why_sufficient": "无新增外部命题、无临时CAL假设，引用都在首次实际使用处。"
          }
        ],
        "obligations_path": "reviews/P02-obligations.json",
        "obligations_sha256": "2e0dbb2d2e7ca0b8c05ecd92f793bbac3f2e0c034e1fe04e7c627ce75e4f9b14",
        "reused_external_dependencies": [
          {
            "id": "EXT-P02a-004",
            "use_sites": [
              {
                "purpose": "计算该层循环子群和边界商，使用审定的完整基或微分数据",
                "quote": "将前述完整基简记如下。",
                "source": "math/P02b-v1.md"
              }
            ],
            "used_statement_sha256": "2f079134309a126670f5389c49b7ae8891e648cf3c5cf185f8c46e44b6efc38a",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-005",
            "use_sites": [
              {
                "purpose": "计算该层循环子群和边界商，使用审定的完整基或微分数据",
                "quote": "低层微分表给出 $b_1,b_2\\in B_2$、$b_3\\in B_3$。",
                "source": "math/P02b-v1.md"
              }
            ],
            "used_statement_sha256": "53e713649a365e5ef726539db66310e0db1349807dbd44f0c9052b52dbf8ac56",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-006",
            "use_sites": [
              {
                "purpose": "计算该层循环子群和边界商，使用审定的完整基或微分数据",
                "quote": "低层微分表给出 $b_1,b_2\\in B_2$、$b_3\\in B_3$。",
                "source": "math/P02b-v1.md"
              }
            ],
            "used_statement_sha256": "0702ef0ac4d3e5369486f1bb5f0d02047f47493a4783fdae675a433044dfeda4",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-007",
            "use_sites": [
              {
                "purpose": "计算该层循环子群和边界商，使用审定的完整基或微分数据",
                "quote": "低层微分表给出 $b_1,b_2\\in B_2$、$b_3\\in B_3$。",
                "source": "math/P02b-v1.md"
              }
            ],
            "used_statement_sha256": "7069a0f6e04ae19ac85202e4eb83d8c15a239891031e76c42768495b6cc81c76",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-008",
            "use_sites": [
              {
                "purpose": "计算该层循环子群和边界商，使用审定的完整基或微分数据",
                "quote": "d_4(c)=x_{123,15}\\ne0.",
                "source": "math/P02b-v1.md"
              }
            ],
            "used_statement_sha256": "9064e6484c7154f084762382a468bc6bc48d623d89df62485afe2d7e3636b0a0",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-009",
            "use_sites": [
              {
                "purpose": "计算该层循环子群和边界商，使用审定的完整基或微分数据",
                "quote": "d_2(u)=h_0^2x_{123,11}\\ne0,",
                "source": "math/P02b-v1.md"
              }
            ],
            "used_statement_sha256": "974d0ad996e863573df7aef94a3388639eab47774dae6aefa529719860c1eb27",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-010",
            "use_sites": [
              {
                "purpose": "计算该层循环子群和边界商，使用审定的完整基或微分数据",
                "quote": "这一层的完整基写为下面五个元素。",
                "source": "math/P02b-v1.md"
              }
            ],
            "used_statement_sha256": "5ea4c705413eba507057c51b3435b47129393449c396b3653c6233bbd889f7cc",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-011",
            "use_sites": [
              {
                "purpose": "计算该层循环子群和边界商，使用审定的完整基或微分数据",
                "quote": "q_1,q_2,q_3\\in B_2,\\qquad q_4\\in B_3,",
                "source": "math/P02b-v1.md"
              }
            ],
            "used_statement_sha256": "41cdbea36962b3372bb2cf34fa15ec309d009900133169f6068df73f801571e4",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-012",
            "use_sites": [
              {
                "purpose": "计算该层循环子群和边界商，使用审定的完整基或微分数据",
                "quote": "q_1,q_2,q_3\\in B_2,\\qquad q_4\\in B_3,",
                "source": "math/P02b-v1.md"
              }
            ],
            "used_statement_sha256": "bde438cc4f9495d0776c87ad36b0c62792ef6628d4f93fe9f0e18190f0557075",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-013",
            "use_sites": [
              {
                "purpose": "计算该层循环子群和边界商，使用审定的完整基或微分数据",
                "quote": "q_1,q_2,q_3\\in B_2,\\qquad q_4\\in B_3,",
                "source": "math/P02b-v1.md"
              }
            ],
            "used_statement_sha256": "cf562ce80c06803a464c263c3d6f54160d13551cb8bb972235658cc1326b4913",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-014",
            "use_sites": [
              {
                "purpose": "计算该层循环子群和边界商，使用审定的完整基或微分数据",
                "quote": "q_1,q_2,q_3\\in B_2,\\qquad q_4\\in B_3,",
                "source": "math/P02b-v1.md"
              }
            ],
            "used_statement_sha256": "06f9abbb4dfce83d4f51d08a179e5a973db5ea9a08a21d89cc1b0b2b56f9c13a",
            "version": "v1"
          },
          {
            "id": "EXT-P02a-015",
            "use_sites": [
              {
                "purpose": "计算该层循环子群和边界商，使用审定的完整基或微分数据",
                "quote": "\\qquad d_2(v)=h_0^3x_{123,11}\\ne0.",
                "source": "math/P02b-v1.md"
              }
            ],
            "used_statement_sha256": "9e3e8faac0bf99d431f46eeffe1cb995f429ce3334c8bd937783ef21d67f6338",
            "version": "v1"
          }
        ],
        "review_status": "pass",
        "reviewed_utc": "2026-10-04T15:24:16.117943+00:00",
        "reviewer_role": "Judger",
        "revisions": [
          {
            "current_dependencies_sha256": "a07d64abd0f8d67a41da8d0ce7e4704d62adaaf9c445af9b7c2b39867118ceb8",
            "current_source_sha256": "b4dd4524fc4c3e02ddcf1b2c5183e0fca2a5f1c67e2ab38958cafc215750dbcd",
            "details": "补12个原依赖引用及独立reuse元信息；不新建命题，推导未改变。",
            "previous_dependencies_sha256": "f8fd145fb8e7c2b3efb1977fc49527fc13df347adc3334473eb1628032841fb3",
            "previous_source_sha256": "2590821f8719891ee55b320930eb99a3fcdb1b9e46df5f786da66200d4a910b8",
            "type": "add_actual_use_citations"
          }
        ],
        "second_pass": {
          "findings": [
            "没有将任何未证高层像包含、整球提升或CAL结论用于低层证明。",
            "12项复用命题的版本和used_statement hash与P02a逐项相同。",
            "全部标题和结尾限定与局部证明范围一致。"
          ],
          "method": "对照已审定P02a完整正文和原论文2965–2974，重新核对每个输入方向；对照T01a/T01b及全部upstream双hash；检查补入原ID后语义不变。",
          "result": "pass"
        },
        "source_path": "math/P02b-v1.md",
        "source_sha256": "b4dd4524fc4c3e02ddcf1b2c5183e0fca2a5f1c67e2ab38958cafc215750dbcd",
        "status": "approved",
        "task_id": "P02b",
        "upstream": [
          {
            "id": "T01a",
            "sha256": "894c6b8847a3f1d1f25850d8191c16fd50ab15c6bff2281c9d6f35a4fa2fedc1",
            "version": "v1"
          },
          {
            "id": "T01b",
            "sha256": "f0aaa1488363b95807e3cc4135cb775893076b970dcc9240411341e29f9e90a2",
            "version": "v1"
          },
          {
            "id": "P02a",
            "sha256": "e1471f14a8ab7cd9033a688e973ab6aabc6268b27f4d510756a504973485c8ac",
            "version": "v1"
          }
        ],
        "upstream_versions": [
          {
            "dependencies_sha256": "ac4307f7b1833ff1227e51cecf158c46a493323305afdcbe3e9ed737a8374060",
            "review": "reviews/T01a-v1-review.json",
            "source": "math/T01a-v1.md",
            "source_sha256": "894c6b8847a3f1d1f25850d8191c16fd50ab15c6bff2281c9d6f35a4fa2fedc1",
            "task_id": "T01a",
            "version": "v1"
          },
          {
            "dependencies_sha256": "638c4daa43cc1c6d3805ae6132adcf958f0f0dcc563d5693c2fa014553fed0b7",
            "review": "reviews/T01b-v1-review.json",
            "source": "math/T01b-v1.md",
            "source_sha256": "f0aaa1488363b95807e3cc4135cb775893076b970dcc9240411341e29f9e90a2",
            "task_id": "T01b",
            "version": "v1"
          },
          {
            "dependencies_sha256": "c40bf8a721d4b7fefda27c0fc8976e3849014d44f857dcdf24603b399c54b086",
            "review": "reviews/P02a-v1-review.json",
            "source": "math/P02a-v1.md",
            "source_sha256": "e1471f14a8ab7cd9033a688e973ab6aabc6268b27f4d510756a504973485c8ac",
            "task_id": "P02a",
            "version": "v1"
          }
        ],
        "version": "v1"
      },
      "review_path": "reviews/P02b-v1-review.json",
      "source": "math/P02b-v1.md"
    }
  ],
  "schema_version": 1,
  "statistics": {
    "dependencies": 42,
    "incomplete": 38,
    "reference_occurrences": 55,
    "rounds": 10,
    "statuses": {
      "incomplete": 38,
      "not_found": 0,
      "not_passed": 0,
      "passed": 4
    }
  },
  "status": "in_progress",
  "title": "$h_6^2$ 的永久存活"
}
;
