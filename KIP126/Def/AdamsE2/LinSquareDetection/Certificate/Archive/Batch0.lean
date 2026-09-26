import KIP126.Tactic.LinSquareCertificate

/-! Kernel certificates for archived chunks 0 through 31.
The original strings and their order are unchanged. -/

namespace KIP126.LinE2.SquareDetection

set_option maxHeartbeats 64000000
set_option maxRecDepth 100000
set_option Elab.async false

/-- A bounded part of the complete archived relation certificate. -/
theorem archivedChunks_batch0 :
    chunksCheck ((RawData.relationChunks.toList.drop 0).take 32) = true := by
  lin_square_chunks 0 32

end KIP126.LinE2.SquareDetection
