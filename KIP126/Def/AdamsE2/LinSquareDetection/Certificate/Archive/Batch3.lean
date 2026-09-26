import KIP126.Tactic.LinSquareCertificate

/-! Kernel certificates for archived chunks 96 through 127.
The original strings and their order are unchanged. -/

namespace KIP126.LinE2.SquareDetection

set_option maxHeartbeats 64000000
set_option maxRecDepth 100000
set_option Elab.async false

/-- A bounded part of the complete archived relation certificate. -/
theorem archivedChunks_batch3 :
    chunksCheck ((RawData.relationChunks.toList.drop 96).take 32) = true := by
  lin_square_chunks 96 32

end KIP126.LinE2.SquareDetection
