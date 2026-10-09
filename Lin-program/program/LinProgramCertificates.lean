import LinProgramCertificates.CertificateFormat
import LinProgramCertificates.Verifier
import LinProgramCertificates.Tactic

/-!
# Lin Program 证书层

此入口只导出三层接口：稳定的文本格式、可执行检查器契约以及
`lin_cert` tactic。具体 Kervaire 数学对象及其可靠性证明由调用方提供。
-/
