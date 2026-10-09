import KervaireProgram.Import
import LinProgramCertificates.Tactic

namespace KervaireProgram

open LinProgramCertificates
open Lean Elab Tactic

/-!
## Kervaire 结果的证书导入实例

对于目标 `ResultValid data spec`，证书就是 `Evidence`，检查器是
`checkResult data spec`。这里的实例把现有的、已经证明可靠的
`checkResult_sound` 暴露给通用 `lin_cert` tactic；它不会把外部字符串
或 C++ 输出直接当作证明。
-/

instance (data : AdamsData) (spec : ResultSpec) :
    CertificateVerifier (ResultValid data spec) where
  Cert := Evidence
  check := checkResult data spec
  sound := checkResult_sound data spec

/-- 专门的拼写，便于在 Kervaire 文件中发现证书用途。 -/
syntax (name := kervaireCert) "kervaire_cert" " using " term : tactic

elab_rules : tactic
  | `(tactic| kervaire_cert using $certificate:term) => do
      evalTactic (← `(tactic|
        lin_cert using $certificate))

end KervaireProgram
