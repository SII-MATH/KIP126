import KIP126.Tactic.LinSquareCertificate

/-! Kernel certificates for archived chunks 64 through 95.
The original strings and their order are unchanged. -/

namespace KIP126.LinE2.SquareDetection

set_option maxHeartbeats 64000000
set_option maxRecDepth 100000
set_option Elab.async false

/-- A bounded part of the complete archived relation certificate. -/
theorem archivedChunks_batch2 :
    chunksCheck ((RawData.relationChunks.toList.drop 64).take 32) = true := by
  lin_square_chunks 64 32

end KIP126.LinE2.SquareDetection
