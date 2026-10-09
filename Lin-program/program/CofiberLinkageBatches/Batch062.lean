import CofiberE2Certificates.Linkage
import CofiberE2Batches.Batch082
import CofiberE2Batches.Batch083
import CofiberE2Batches.Batch084
import CofiberE2Batches.Batch146
import CofiberE2Batches.Batch147
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace CofiberLinkageBatches.Batch062
theorem incomingLink3720 : CofiberE2Batches.Batch082.dependency6618.c = CofiberE2Batches.Batch146.exact3691.a := by decide
theorem outgoingLink3720 : CofiberE2Batches.Batch083.dependency6676.c = CofiberE2Batches.Batch146.exact3691.b := by decide
theorem linkedExact3720 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6676.c CofiberE2Batches.Batch082.dependency6618.c := by
  rw [incomingLink3720, outgoingLink3720]
  exact CofiberE2Batches.Batch146.exact3691valid.2
theorem incomingValid3720 : CofiberE2Batches.Batch082.dependency6618.Valid := CofiberE2Batches.Batch082.dependency6618valid
theorem outgoingValid3720 : CofiberE2Batches.Batch083.dependency6676.Valid := CofiberE2Batches.Batch083.dependency6676valid
theorem incomingLink3721 : CofiberE2Batches.Batch082.dependency6622.c = CofiberE2Batches.Batch146.exact3692.a := by decide
theorem outgoingLink3721 : CofiberE2Batches.Batch083.dependency6677.c = CofiberE2Batches.Batch146.exact3692.b := by decide
theorem linkedExact3721 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6677.c CofiberE2Batches.Batch082.dependency6622.c := by
  rw [incomingLink3721, outgoingLink3721]
  exact CofiberE2Batches.Batch146.exact3692valid.2
theorem incomingValid3721 : CofiberE2Batches.Batch082.dependency6622.Valid := CofiberE2Batches.Batch082.dependency6622valid
theorem outgoingValid3721 : CofiberE2Batches.Batch083.dependency6677.Valid := CofiberE2Batches.Batch083.dependency6677valid
theorem incomingLink3722 : CofiberE2Batches.Batch082.dependency6630.c = CofiberE2Batches.Batch146.exact3693.a := by decide
theorem outgoingLink3722 : CofiberE2Batches.Batch083.dependency6678.c = CofiberE2Batches.Batch146.exact3693.b := by decide
theorem linkedExact3722 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6678.c CofiberE2Batches.Batch082.dependency6630.c := by
  rw [incomingLink3722, outgoingLink3722]
  exact CofiberE2Batches.Batch146.exact3693valid.2
theorem incomingValid3722 : CofiberE2Batches.Batch082.dependency6630.Valid := CofiberE2Batches.Batch082.dependency6630valid
theorem outgoingValid3722 : CofiberE2Batches.Batch083.dependency6678.Valid := CofiberE2Batches.Batch083.dependency6678valid
theorem incomingLink3723 : CofiberE2Batches.Batch082.dependency6634.c = CofiberE2Batches.Batch146.exact3694.a := by decide
theorem outgoingLink3723 : CofiberE2Batches.Batch083.dependency6679.c = CofiberE2Batches.Batch146.exact3694.b := by decide
theorem linkedExact3723 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6679.c CofiberE2Batches.Batch082.dependency6634.c := by
  rw [incomingLink3723, outgoingLink3723]
  exact CofiberE2Batches.Batch146.exact3694valid.2
theorem incomingValid3723 : CofiberE2Batches.Batch082.dependency6634.Valid := CofiberE2Batches.Batch082.dependency6634valid
theorem outgoingValid3723 : CofiberE2Batches.Batch083.dependency6679.Valid := CofiberE2Batches.Batch083.dependency6679valid
theorem incomingLink3724 : CofiberE2Batches.Batch083.dependency6642.c = CofiberE2Batches.Batch146.exact3695.a := by decide
theorem outgoingLink3724 : CofiberE2Batches.Batch083.dependency6680.c = CofiberE2Batches.Batch146.exact3695.b := by decide
theorem linkedExact3724 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6680.c CofiberE2Batches.Batch083.dependency6642.c := by
  rw [incomingLink3724, outgoingLink3724]
  exact CofiberE2Batches.Batch146.exact3695valid.2
theorem incomingValid3724 : CofiberE2Batches.Batch083.dependency6642.Valid := CofiberE2Batches.Batch083.dependency6642valid
theorem outgoingValid3724 : CofiberE2Batches.Batch083.dependency6680.Valid := CofiberE2Batches.Batch083.dependency6680valid
theorem incomingLink3725 : CofiberE2Batches.Batch083.dependency6646.c = CofiberE2Batches.Batch146.exact3696.a := by decide
theorem outgoingLink3725 : CofiberE2Batches.Batch083.dependency6682.c = CofiberE2Batches.Batch146.exact3696.b := by decide
theorem linkedExact3725 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6682.c CofiberE2Batches.Batch083.dependency6646.c := by
  rw [incomingLink3725, outgoingLink3725]
  exact CofiberE2Batches.Batch146.exact3696valid.2
theorem incomingValid3725 : CofiberE2Batches.Batch083.dependency6646.Valid := CofiberE2Batches.Batch083.dependency6646valid
theorem outgoingValid3725 : CofiberE2Batches.Batch083.dependency6682.Valid := CofiberE2Batches.Batch083.dependency6682valid
theorem incomingLink3726 : CofiberE2Batches.Batch083.dependency6654.c = CofiberE2Batches.Batch146.exact3697.a := by decide
theorem outgoingLink3726 : CofiberE2Batches.Batch083.dependency6683.c = CofiberE2Batches.Batch146.exact3697.b := by decide
theorem linkedExact3726 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6683.c CofiberE2Batches.Batch083.dependency6654.c := by
  rw [incomingLink3726, outgoingLink3726]
  exact CofiberE2Batches.Batch146.exact3697valid.2
theorem incomingValid3726 : CofiberE2Batches.Batch083.dependency6654.Valid := CofiberE2Batches.Batch083.dependency6654valid
theorem outgoingValid3726 : CofiberE2Batches.Batch083.dependency6683.Valid := CofiberE2Batches.Batch083.dependency6683valid
theorem incomingLink3727 : CofiberE2Batches.Batch083.dependency6686.c = CofiberE2Batches.Batch146.exact3698.a := by decide
theorem outgoingLink3727 : CofiberE2Batches.Batch083.dependency6687.c = CofiberE2Batches.Batch146.exact3698.b := by decide
theorem linkedExact3727 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6687.c CofiberE2Batches.Batch083.dependency6686.c := by
  rw [incomingLink3727, outgoingLink3727]
  exact CofiberE2Batches.Batch146.exact3698valid.2
theorem incomingValid3727 : CofiberE2Batches.Batch083.dependency6686.Valid := CofiberE2Batches.Batch083.dependency6686valid
theorem outgoingValid3727 : CofiberE2Batches.Batch083.dependency6687.Valid := CofiberE2Batches.Batch083.dependency6687valid
theorem incomingLink3728 : CofiberE2Batches.Batch083.dependency6690.c = CofiberE2Batches.Batch146.exact3699.a := by decide
theorem outgoingLink3728 : CofiberE2Batches.Batch083.dependency6691.c = CofiberE2Batches.Batch146.exact3699.b := by decide
theorem linkedExact3728 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6691.c CofiberE2Batches.Batch083.dependency6690.c := by
  rw [incomingLink3728, outgoingLink3728]
  exact CofiberE2Batches.Batch146.exact3699valid.2
theorem incomingValid3728 : CofiberE2Batches.Batch083.dependency6690.Valid := CofiberE2Batches.Batch083.dependency6690valid
theorem outgoingValid3728 : CofiberE2Batches.Batch083.dependency6691.Valid := CofiberE2Batches.Batch083.dependency6691valid
theorem incomingLink3729 : CofiberE2Batches.Batch083.dependency6694.c = CofiberE2Batches.Batch146.exact3700.a := by decide
theorem outgoingLink3729 : CofiberE2Batches.Batch083.dependency6695.c = CofiberE2Batches.Batch146.exact3700.b := by decide
theorem linkedExact3729 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6695.c CofiberE2Batches.Batch083.dependency6694.c := by
  rw [incomingLink3729, outgoingLink3729]
  exact CofiberE2Batches.Batch146.exact3700valid.2
theorem incomingValid3729 : CofiberE2Batches.Batch083.dependency6694.Valid := CofiberE2Batches.Batch083.dependency6694valid
theorem outgoingValid3729 : CofiberE2Batches.Batch083.dependency6695.Valid := CofiberE2Batches.Batch083.dependency6695valid
theorem incomingLink3730 : CofiberE2Batches.Batch083.dependency6698.c = CofiberE2Batches.Batch146.exact3701.a := by decide
theorem outgoingLink3730 : CofiberE2Batches.Batch083.dependency6699.c = CofiberE2Batches.Batch146.exact3701.b := by decide
theorem linkedExact3730 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6699.c CofiberE2Batches.Batch083.dependency6698.c := by
  rw [incomingLink3730, outgoingLink3730]
  exact CofiberE2Batches.Batch146.exact3701valid.2
theorem incomingValid3730 : CofiberE2Batches.Batch083.dependency6698.Valid := CofiberE2Batches.Batch083.dependency6698valid
theorem outgoingValid3730 : CofiberE2Batches.Batch083.dependency6699.Valid := CofiberE2Batches.Batch083.dependency6699valid
theorem incomingLink3731 : CofiberE2Batches.Batch083.dependency6674.c = CofiberE2Batches.Batch146.exact3702.a := by decide
theorem outgoingLink3731 : CofiberE2Batches.Batch083.dependency6700.c = CofiberE2Batches.Batch146.exact3702.b := by decide
theorem linkedExact3731 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6700.c CofiberE2Batches.Batch083.dependency6674.c := by
  rw [incomingLink3731, outgoingLink3731]
  exact CofiberE2Batches.Batch146.exact3702valid.2
theorem incomingValid3731 : CofiberE2Batches.Batch083.dependency6674.Valid := CofiberE2Batches.Batch083.dependency6674valid
theorem outgoingValid3731 : CofiberE2Batches.Batch083.dependency6700.Valid := CofiberE2Batches.Batch083.dependency6700valid
theorem incomingLink3732 : CofiberE2Batches.Batch083.dependency6703.c = CofiberE2Batches.Batch146.exact3703.a := by decide
theorem outgoingLink3732 : CofiberE2Batches.Batch083.dependency6704.c = CofiberE2Batches.Batch146.exact3703.b := by decide
theorem linkedExact3732 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6704.c CofiberE2Batches.Batch083.dependency6703.c := by
  rw [incomingLink3732, outgoingLink3732]
  exact CofiberE2Batches.Batch146.exact3703valid.2
theorem incomingValid3732 : CofiberE2Batches.Batch083.dependency6703.Valid := CofiberE2Batches.Batch083.dependency6703valid
theorem outgoingValid3732 : CofiberE2Batches.Batch083.dependency6704.Valid := CofiberE2Batches.Batch083.dependency6704valid
theorem incomingLink3733 : CofiberE2Batches.Batch083.dependency6707.c = CofiberE2Batches.Batch146.exact3704.a := by decide
theorem outgoingLink3733 : CofiberE2Batches.Batch083.dependency6708.c = CofiberE2Batches.Batch146.exact3704.b := by decide
theorem linkedExact3733 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6708.c CofiberE2Batches.Batch083.dependency6707.c := by
  rw [incomingLink3733, outgoingLink3733]
  exact CofiberE2Batches.Batch146.exact3704valid.2
theorem incomingValid3733 : CofiberE2Batches.Batch083.dependency6707.Valid := CofiberE2Batches.Batch083.dependency6707valid
theorem outgoingValid3733 : CofiberE2Batches.Batch083.dependency6708.Valid := CofiberE2Batches.Batch083.dependency6708valid
theorem incomingLink3734 : CofiberE2Batches.Batch083.dependency6711.c = CofiberE2Batches.Batch146.exact3705.a := by decide
theorem outgoingLink3734 : CofiberE2Batches.Batch083.dependency6712.c = CofiberE2Batches.Batch146.exact3705.b := by decide
theorem linkedExact3734 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6712.c CofiberE2Batches.Batch083.dependency6711.c := by
  rw [incomingLink3734, outgoingLink3734]
  exact CofiberE2Batches.Batch146.exact3705valid.2
theorem incomingValid3734 : CofiberE2Batches.Batch083.dependency6711.Valid := CofiberE2Batches.Batch083.dependency6711valid
theorem outgoingValid3734 : CofiberE2Batches.Batch083.dependency6712.Valid := CofiberE2Batches.Batch083.dependency6712valid
theorem incomingLink3735 : CofiberE2Batches.Batch083.dependency6715.c = CofiberE2Batches.Batch146.exact3706.a := by decide
theorem outgoingLink3735 : CofiberE2Batches.Batch083.dependency6716.c = CofiberE2Batches.Batch146.exact3706.b := by decide
theorem linkedExact3735 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6716.c CofiberE2Batches.Batch083.dependency6715.c := by
  rw [incomingLink3735, outgoingLink3735]
  exact CofiberE2Batches.Batch146.exact3706valid.2
theorem incomingValid3735 : CofiberE2Batches.Batch083.dependency6715.Valid := CofiberE2Batches.Batch083.dependency6715valid
theorem outgoingValid3735 : CofiberE2Batches.Batch083.dependency6716.Valid := CofiberE2Batches.Batch083.dependency6716valid
theorem incomingLink3736 : CofiberE2Batches.Batch083.dependency6719.c = CofiberE2Batches.Batch146.exact3707.a := by decide
theorem outgoingLink3736 : CofiberE2Batches.Batch084.dependency6720.c = CofiberE2Batches.Batch146.exact3707.b := by decide
theorem linkedExact3736 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6720.c CofiberE2Batches.Batch083.dependency6719.c := by
  rw [incomingLink3736, outgoingLink3736]
  exact CofiberE2Batches.Batch146.exact3707valid.2
theorem incomingValid3736 : CofiberE2Batches.Batch083.dependency6719.Valid := CofiberE2Batches.Batch083.dependency6719valid
theorem outgoingValid3736 : CofiberE2Batches.Batch084.dependency6720.Valid := CofiberE2Batches.Batch084.dependency6720valid
theorem incomingLink3737 : CofiberE2Batches.Batch084.dependency6723.c = CofiberE2Batches.Batch146.exact3708.a := by decide
theorem outgoingLink3737 : CofiberE2Batches.Batch084.dependency6724.c = CofiberE2Batches.Batch146.exact3708.b := by decide
theorem linkedExact3737 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6724.c CofiberE2Batches.Batch084.dependency6723.c := by
  rw [incomingLink3737, outgoingLink3737]
  exact CofiberE2Batches.Batch146.exact3708valid.2
theorem incomingValid3737 : CofiberE2Batches.Batch084.dependency6723.Valid := CofiberE2Batches.Batch084.dependency6723valid
theorem outgoingValid3737 : CofiberE2Batches.Batch084.dependency6724.Valid := CofiberE2Batches.Batch084.dependency6724valid
theorem incomingLink3738 : CofiberE2Batches.Batch084.dependency6726.c = CofiberE2Batches.Batch146.exact3709.a := by decide
theorem outgoingLink3738 : CofiberE2Batches.Batch082.dependency6623.algebra.mat = CofiberE2Batches.Batch146.exact3709.b := by decide
theorem linkedExact3738 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch082.dependency6623.algebra.mat CofiberE2Batches.Batch084.dependency6726.c := by
  rw [incomingLink3738, outgoingLink3738]
  exact CofiberE2Batches.Batch146.exact3709valid.2
theorem incomingValid3738 : CofiberE2Batches.Batch084.dependency6726.Valid := CofiberE2Batches.Batch084.dependency6726valid
theorem outgoingValid3738 : CofiberE2Batches.Batch082.dependency6623.Valid := CofiberE2Batches.Batch082.dependency6623valid
theorem incomingLink3739 : CofiberE2Batches.Batch083.dependency6678.c = CofiberE2Batches.Batch147.exact3710.a := by decide
theorem outgoingLink3739 : CofiberE2Batches.Batch082.dependency6635.algebra.mat = CofiberE2Batches.Batch147.exact3710.b := by decide
theorem linkedExact3739 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch082.dependency6635.algebra.mat CofiberE2Batches.Batch083.dependency6678.c := by
  rw [incomingLink3739, outgoingLink3739]
  exact CofiberE2Batches.Batch147.exact3710valid.2
theorem incomingValid3739 : CofiberE2Batches.Batch083.dependency6678.Valid := CofiberE2Batches.Batch083.dependency6678valid
theorem outgoingValid3739 : CofiberE2Batches.Batch082.dependency6635.Valid := CofiberE2Batches.Batch082.dependency6635valid
theorem incomingLink3740 : CofiberE2Batches.Batch084.dependency6727.c = CofiberE2Batches.Batch147.exact3711.a := by decide
theorem outgoingLink3740 : CofiberE2Batches.Batch082.dependency6639.algebra.mat = CofiberE2Batches.Batch147.exact3711.b := by decide
theorem linkedExact3740 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch082.dependency6639.algebra.mat CofiberE2Batches.Batch084.dependency6727.c := by
  rw [incomingLink3740, outgoingLink3740]
  exact CofiberE2Batches.Batch147.exact3711valid.2
theorem incomingValid3740 : CofiberE2Batches.Batch084.dependency6727.Valid := CofiberE2Batches.Batch084.dependency6727valid
theorem outgoingValid3740 : CofiberE2Batches.Batch082.dependency6639.Valid := CofiberE2Batches.Batch082.dependency6639valid
theorem incomingLink3741 : CofiberE2Batches.Batch084.dependency6728.c = CofiberE2Batches.Batch147.exact3712.a := by decide
theorem outgoingLink3741 : CofiberE2Batches.Batch083.dependency6647.algebra.mat = CofiberE2Batches.Batch147.exact3712.b := by decide
theorem linkedExact3741 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6647.algebra.mat CofiberE2Batches.Batch084.dependency6728.c := by
  rw [incomingLink3741, outgoingLink3741]
  exact CofiberE2Batches.Batch147.exact3712valid.2
theorem incomingValid3741 : CofiberE2Batches.Batch084.dependency6728.Valid := CofiberE2Batches.Batch084.dependency6728valid
theorem outgoingValid3741 : CofiberE2Batches.Batch083.dependency6647.Valid := CofiberE2Batches.Batch083.dependency6647valid
theorem incomingLink3742 : CofiberE2Batches.Batch084.dependency6730.c = CofiberE2Batches.Batch147.exact3713.a := by decide
theorem outgoingLink3742 : CofiberE2Batches.Batch083.dependency6655.algebra.mat = CofiberE2Batches.Batch147.exact3713.b := by decide
theorem linkedExact3742 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6655.algebra.mat CofiberE2Batches.Batch084.dependency6730.c := by
  rw [incomingLink3742, outgoingLink3742]
  exact CofiberE2Batches.Batch147.exact3713valid.2
theorem incomingValid3742 : CofiberE2Batches.Batch084.dependency6730.Valid := CofiberE2Batches.Batch084.dependency6730valid
theorem outgoingValid3742 : CofiberE2Batches.Batch083.dependency6655.Valid := CofiberE2Batches.Batch083.dependency6655valid
theorem incomingLink3743 : CofiberE2Batches.Batch083.dependency6680.c = CofiberE2Batches.Batch147.exact3714.a := by decide
theorem outgoingLink3743 : CofiberE2Batches.Batch084.dependency6731.algebra.mat = CofiberE2Batches.Batch147.exact3714.b := by decide
theorem linkedExact3743 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6731.algebra.mat CofiberE2Batches.Batch083.dependency6680.c := by
  rw [incomingLink3743, outgoingLink3743]
  exact CofiberE2Batches.Batch147.exact3714valid.2
theorem incomingValid3743 : CofiberE2Batches.Batch083.dependency6680.Valid := CofiberE2Batches.Batch083.dependency6680valid
theorem outgoingValid3743 : CofiberE2Batches.Batch084.dependency6731.Valid := CofiberE2Batches.Batch084.dependency6731valid
theorem incomingLink3744 : CofiberE2Batches.Batch084.dependency6733.c = CofiberE2Batches.Batch147.exact3715.a := by decide
theorem outgoingLink3744 : CofiberE2Batches.Batch083.dependency6659.algebra.mat = CofiberE2Batches.Batch147.exact3715.b := by decide
theorem linkedExact3744 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6659.algebra.mat CofiberE2Batches.Batch084.dependency6733.c := by
  rw [incomingLink3744, outgoingLink3744]
  exact CofiberE2Batches.Batch147.exact3715valid.2
theorem incomingValid3744 : CofiberE2Batches.Batch084.dependency6733.Valid := CofiberE2Batches.Batch084.dependency6733valid
theorem outgoingValid3744 : CofiberE2Batches.Batch083.dependency6659.Valid := CofiberE2Batches.Batch083.dependency6659valid
theorem incomingLink3745 : CofiberE2Batches.Batch084.dependency6734.c = CofiberE2Batches.Batch147.exact3716.a := by decide
theorem outgoingLink3745 : CofiberE2Batches.Batch083.dependency6663.algebra.mat = CofiberE2Batches.Batch147.exact3716.b := by decide
theorem linkedExact3745 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6663.algebra.mat CofiberE2Batches.Batch084.dependency6734.c := by
  rw [incomingLink3745, outgoingLink3745]
  exact CofiberE2Batches.Batch147.exact3716valid.2
theorem incomingValid3745 : CofiberE2Batches.Batch084.dependency6734.Valid := CofiberE2Batches.Batch084.dependency6734valid
theorem outgoingValid3745 : CofiberE2Batches.Batch083.dependency6663.Valid := CofiberE2Batches.Batch083.dependency6663valid
theorem incomingLink3746 : CofiberE2Batches.Batch084.dependency6735.c = CofiberE2Batches.Batch147.exact3717.a := by decide
theorem outgoingLink3746 : CofiberE2Batches.Batch083.dependency6667.algebra.mat = CofiberE2Batches.Batch147.exact3717.b := by decide
theorem linkedExact3746 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6667.algebra.mat CofiberE2Batches.Batch084.dependency6735.c := by
  rw [incomingLink3746, outgoingLink3746]
  exact CofiberE2Batches.Batch147.exact3717valid.2
theorem incomingValid3746 : CofiberE2Batches.Batch084.dependency6735.Valid := CofiberE2Batches.Batch084.dependency6735valid
theorem outgoingValid3746 : CofiberE2Batches.Batch083.dependency6667.Valid := CofiberE2Batches.Batch083.dependency6667valid
theorem incomingLink3747 : CofiberE2Batches.Batch084.dependency6737.c = CofiberE2Batches.Batch147.exact3718.a := by decide
theorem outgoingLink3747 : CofiberE2Batches.Batch084.dependency6738.algebra.mat = CofiberE2Batches.Batch147.exact3718.b := by decide
theorem linkedExact3747 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6738.algebra.mat CofiberE2Batches.Batch084.dependency6737.c := by
  rw [incomingLink3747, outgoingLink3747]
  exact CofiberE2Batches.Batch147.exact3718valid.2
theorem incomingValid3747 : CofiberE2Batches.Batch084.dependency6737.Valid := CofiberE2Batches.Batch084.dependency6737valid
theorem outgoingValid3747 : CofiberE2Batches.Batch084.dependency6738.Valid := CofiberE2Batches.Batch084.dependency6738valid
theorem incomingLink3748 : CofiberE2Batches.Batch083.dependency6687.c = CofiberE2Batches.Batch147.exact3719.a := by decide
theorem outgoingLink3748 : CofiberE2Batches.Batch084.dependency6739.algebra.mat = CofiberE2Batches.Batch147.exact3719.b := by decide
theorem linkedExact3748 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6739.algebra.mat CofiberE2Batches.Batch083.dependency6687.c := by
  rw [incomingLink3748, outgoingLink3748]
  exact CofiberE2Batches.Batch147.exact3719valid.2
theorem incomingValid3748 : CofiberE2Batches.Batch083.dependency6687.Valid := CofiberE2Batches.Batch083.dependency6687valid
theorem outgoingValid3748 : CofiberE2Batches.Batch084.dependency6739.Valid := CofiberE2Batches.Batch084.dependency6739valid
theorem incomingLink3749 : CofiberE2Batches.Batch083.dependency6691.c = CofiberE2Batches.Batch147.exact3720.a := by decide
theorem outgoingLink3749 : CofiberE2Batches.Batch084.dependency6740.algebra.mat = CofiberE2Batches.Batch147.exact3720.b := by decide
theorem linkedExact3749 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6740.algebra.mat CofiberE2Batches.Batch083.dependency6691.c := by
  rw [incomingLink3749, outgoingLink3749]
  exact CofiberE2Batches.Batch147.exact3720valid.2
theorem incomingValid3749 : CofiberE2Batches.Batch083.dependency6691.Valid := CofiberE2Batches.Batch083.dependency6691valid
theorem outgoingValid3749 : CofiberE2Batches.Batch084.dependency6740.Valid := CofiberE2Batches.Batch084.dependency6740valid
theorem incomingLink3750 : CofiberE2Batches.Batch084.dependency6741.c = CofiberE2Batches.Batch147.exact3721.a := by decide
theorem outgoingLink3750 : CofiberE2Batches.Batch084.dependency6742.algebra.mat = CofiberE2Batches.Batch147.exact3721.b := by decide
theorem linkedExact3750 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6742.algebra.mat CofiberE2Batches.Batch084.dependency6741.c := by
  rw [incomingLink3750, outgoingLink3750]
  exact CofiberE2Batches.Batch147.exact3721valid.2
theorem incomingValid3750 : CofiberE2Batches.Batch084.dependency6741.Valid := CofiberE2Batches.Batch084.dependency6741valid
theorem outgoingValid3750 : CofiberE2Batches.Batch084.dependency6742.Valid := CofiberE2Batches.Batch084.dependency6742valid
theorem incomingLink3751 : CofiberE2Batches.Batch084.dependency6744.c = CofiberE2Batches.Batch147.exact3722.a := by decide
theorem outgoingLink3751 : CofiberE2Batches.Batch084.dependency6745.algebra.mat = CofiberE2Batches.Batch147.exact3722.b := by decide
theorem linkedExact3751 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6745.algebra.mat CofiberE2Batches.Batch084.dependency6744.c := by
  rw [incomingLink3751, outgoingLink3751]
  exact CofiberE2Batches.Batch147.exact3722valid.2
theorem incomingValid3751 : CofiberE2Batches.Batch084.dependency6744.Valid := CofiberE2Batches.Batch084.dependency6744valid
theorem outgoingValid3751 : CofiberE2Batches.Batch084.dependency6745.Valid := CofiberE2Batches.Batch084.dependency6745valid
theorem incomingLink3752 : CofiberE2Batches.Batch083.dependency6695.c = CofiberE2Batches.Batch147.exact3723.a := by decide
theorem outgoingLink3752 : CofiberE2Batches.Batch084.dependency6746.algebra.mat = CofiberE2Batches.Batch147.exact3723.b := by decide
theorem linkedExact3752 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6746.algebra.mat CofiberE2Batches.Batch083.dependency6695.c := by
  rw [incomingLink3752, outgoingLink3752]
  exact CofiberE2Batches.Batch147.exact3723valid.2
theorem incomingValid3752 : CofiberE2Batches.Batch083.dependency6695.Valid := CofiberE2Batches.Batch083.dependency6695valid
theorem outgoingValid3752 : CofiberE2Batches.Batch084.dependency6746.Valid := CofiberE2Batches.Batch084.dependency6746valid
theorem incomingLink3753 : CofiberE2Batches.Batch083.dependency6699.c = CofiberE2Batches.Batch147.exact3724.a := by decide
theorem outgoingLink3753 : CofiberE2Batches.Batch084.dependency6747.algebra.mat = CofiberE2Batches.Batch147.exact3724.b := by decide
theorem linkedExact3753 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6747.algebra.mat CofiberE2Batches.Batch083.dependency6699.c := by
  rw [incomingLink3753, outgoingLink3753]
  exact CofiberE2Batches.Batch147.exact3724valid.2
theorem incomingValid3753 : CofiberE2Batches.Batch083.dependency6699.Valid := CofiberE2Batches.Batch083.dependency6699valid
theorem outgoingValid3753 : CofiberE2Batches.Batch084.dependency6747.Valid := CofiberE2Batches.Batch084.dependency6747valid
theorem incomingLink3754 : CofiberE2Batches.Batch084.dependency6749.c = CofiberE2Batches.Batch147.exact3725.a := by decide
theorem outgoingLink3754 : CofiberE2Batches.Batch084.dependency6750.algebra.mat = CofiberE2Batches.Batch147.exact3725.b := by decide
theorem linkedExact3754 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6750.algebra.mat CofiberE2Batches.Batch084.dependency6749.c := by
  rw [incomingLink3754, outgoingLink3754]
  exact CofiberE2Batches.Batch147.exact3725valid.2
theorem incomingValid3754 : CofiberE2Batches.Batch084.dependency6749.Valid := CofiberE2Batches.Batch084.dependency6749valid
theorem outgoingValid3754 : CofiberE2Batches.Batch084.dependency6750.Valid := CofiberE2Batches.Batch084.dependency6750valid
theorem incomingLink3755 : CofiberE2Batches.Batch083.dependency6704.c = CofiberE2Batches.Batch147.exact3726.a := by decide
theorem outgoingLink3755 : CofiberE2Batches.Batch084.dependency6751.algebra.mat = CofiberE2Batches.Batch147.exact3726.b := by decide
theorem linkedExact3755 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6751.algebra.mat CofiberE2Batches.Batch083.dependency6704.c := by
  rw [incomingLink3755, outgoingLink3755]
  exact CofiberE2Batches.Batch147.exact3726valid.2
theorem incomingValid3755 : CofiberE2Batches.Batch083.dependency6704.Valid := CofiberE2Batches.Batch083.dependency6704valid
theorem outgoingValid3755 : CofiberE2Batches.Batch084.dependency6751.Valid := CofiberE2Batches.Batch084.dependency6751valid
theorem incomingLink3756 : CofiberE2Batches.Batch083.dependency6708.c = CofiberE2Batches.Batch147.exact3727.a := by decide
theorem outgoingLink3756 : CofiberE2Batches.Batch084.dependency6752.algebra.mat = CofiberE2Batches.Batch147.exact3727.b := by decide
theorem linkedExact3756 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6752.algebra.mat CofiberE2Batches.Batch083.dependency6708.c := by
  rw [incomingLink3756, outgoingLink3756]
  exact CofiberE2Batches.Batch147.exact3727valid.2
theorem incomingValid3756 : CofiberE2Batches.Batch083.dependency6708.Valid := CofiberE2Batches.Batch083.dependency6708valid
theorem outgoingValid3756 : CofiberE2Batches.Batch084.dependency6752.Valid := CofiberE2Batches.Batch084.dependency6752valid
theorem incomingLink3757 : CofiberE2Batches.Batch083.dependency6712.c = CofiberE2Batches.Batch147.exact3728.a := by decide
theorem outgoingLink3757 : CofiberE2Batches.Batch084.dependency6753.algebra.mat = CofiberE2Batches.Batch147.exact3728.b := by decide
theorem linkedExact3757 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6753.algebra.mat CofiberE2Batches.Batch083.dependency6712.c := by
  rw [incomingLink3757, outgoingLink3757]
  exact CofiberE2Batches.Batch147.exact3728valid.2
theorem incomingValid3757 : CofiberE2Batches.Batch083.dependency6712.Valid := CofiberE2Batches.Batch083.dependency6712valid
theorem outgoingValid3757 : CofiberE2Batches.Batch084.dependency6753.Valid := CofiberE2Batches.Batch084.dependency6753valid
theorem incomingLink3758 : CofiberE2Batches.Batch084.dependency6754.c = CofiberE2Batches.Batch147.exact3729.a := by decide
theorem outgoingLink3758 : CofiberE2Batches.Batch084.dependency6755.algebra.mat = CofiberE2Batches.Batch147.exact3729.b := by decide
theorem linkedExact3758 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6755.algebra.mat CofiberE2Batches.Batch084.dependency6754.c := by
  rw [incomingLink3758, outgoingLink3758]
  exact CofiberE2Batches.Batch147.exact3729valid.2
theorem incomingValid3758 : CofiberE2Batches.Batch084.dependency6754.Valid := CofiberE2Batches.Batch084.dependency6754valid
theorem outgoingValid3758 : CofiberE2Batches.Batch084.dependency6755.Valid := CofiberE2Batches.Batch084.dependency6755valid
theorem incomingLink3759 : CofiberE2Batches.Batch083.dependency6716.c = CofiberE2Batches.Batch147.exact3730.a := by decide
theorem outgoingLink3759 : CofiberE2Batches.Batch084.dependency6756.algebra.mat = CofiberE2Batches.Batch147.exact3730.b := by decide
theorem linkedExact3759 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6756.algebra.mat CofiberE2Batches.Batch083.dependency6716.c := by
  rw [incomingLink3759, outgoingLink3759]
  exact CofiberE2Batches.Batch147.exact3730valid.2
theorem incomingValid3759 : CofiberE2Batches.Batch083.dependency6716.Valid := CofiberE2Batches.Batch083.dependency6716valid
theorem outgoingValid3759 : CofiberE2Batches.Batch084.dependency6756.Valid := CofiberE2Batches.Batch084.dependency6756valid
theorem incomingLink3760 : CofiberE2Batches.Batch084.dependency6758.c = CofiberE2Batches.Batch147.exact3731.a := by decide
theorem outgoingLink3760 : CofiberE2Batches.Batch084.dependency6759.algebra.mat = CofiberE2Batches.Batch147.exact3731.b := by decide
theorem linkedExact3760 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6759.algebra.mat CofiberE2Batches.Batch084.dependency6758.c := by
  rw [incomingLink3760, outgoingLink3760]
  exact CofiberE2Batches.Batch147.exact3731valid.2
theorem incomingValid3760 : CofiberE2Batches.Batch084.dependency6758.Valid := CofiberE2Batches.Batch084.dependency6758valid
theorem outgoingValid3760 : CofiberE2Batches.Batch084.dependency6759.Valid := CofiberE2Batches.Batch084.dependency6759valid
theorem incomingLink3761 : CofiberE2Batches.Batch084.dependency6720.c = CofiberE2Batches.Batch147.exact3732.a := by decide
theorem outgoingLink3761 : CofiberE2Batches.Batch084.dependency6760.algebra.mat = CofiberE2Batches.Batch147.exact3732.b := by decide
theorem linkedExact3761 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6760.algebra.mat CofiberE2Batches.Batch084.dependency6720.c := by
  rw [incomingLink3761, outgoingLink3761]
  exact CofiberE2Batches.Batch147.exact3732valid.2
theorem incomingValid3761 : CofiberE2Batches.Batch084.dependency6720.Valid := CofiberE2Batches.Batch084.dependency6720valid
theorem outgoingValid3761 : CofiberE2Batches.Batch084.dependency6760.Valid := CofiberE2Batches.Batch084.dependency6760valid
theorem incomingLink3762 : CofiberE2Batches.Batch084.dependency6762.c = CofiberE2Batches.Batch147.exact3733.a := by decide
theorem outgoingLink3762 : CofiberE2Batches.Batch084.dependency6763.algebra.mat = CofiberE2Batches.Batch147.exact3733.b := by decide
theorem linkedExact3762 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6763.algebra.mat CofiberE2Batches.Batch084.dependency6762.c := by
  rw [incomingLink3762, outgoingLink3762]
  exact CofiberE2Batches.Batch147.exact3733valid.2
theorem incomingValid3762 : CofiberE2Batches.Batch084.dependency6762.Valid := CofiberE2Batches.Batch084.dependency6762valid
theorem outgoingValid3762 : CofiberE2Batches.Batch084.dependency6763.Valid := CofiberE2Batches.Batch084.dependency6763valid
theorem incomingLink3763 : CofiberE2Batches.Batch084.dependency6724.c = CofiberE2Batches.Batch147.exact3734.a := by decide
theorem outgoingLink3763 : CofiberE2Batches.Batch084.dependency6764.algebra.mat = CofiberE2Batches.Batch147.exact3734.b := by decide
theorem linkedExact3763 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6764.algebra.mat CofiberE2Batches.Batch084.dependency6724.c := by
  rw [incomingLink3763, outgoingLink3763]
  exact CofiberE2Batches.Batch147.exact3734valid.2
theorem incomingValid3763 : CofiberE2Batches.Batch084.dependency6724.Valid := CofiberE2Batches.Batch084.dependency6724valid
theorem outgoingValid3763 : CofiberE2Batches.Batch084.dependency6764.Valid := CofiberE2Batches.Batch084.dependency6764valid
theorem incomingLink3764 : CofiberE2Batches.Batch084.dependency6765.c = CofiberE2Batches.Batch147.exact3735.a := by decide
theorem outgoingLink3764 : CofiberE2Batches.Batch084.dependency6766.algebra.mat = CofiberE2Batches.Batch147.exact3735.b := by decide
theorem linkedExact3764 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6766.algebra.mat CofiberE2Batches.Batch084.dependency6765.c := by
  rw [incomingLink3764, outgoingLink3764]
  exact CofiberE2Batches.Batch147.exact3735valid.2
theorem incomingValid3764 : CofiberE2Batches.Batch084.dependency6765.Valid := CofiberE2Batches.Batch084.dependency6765valid
theorem outgoingValid3764 : CofiberE2Batches.Batch084.dependency6766.Valid := CofiberE2Batches.Batch084.dependency6766valid
theorem incomingLink3765 : CofiberE2Batches.Batch084.dependency6768.c = CofiberE2Batches.Batch147.exact3736.a := by decide
theorem outgoingLink3765 : CofiberE2Batches.Batch084.dependency6769.algebra.mat = CofiberE2Batches.Batch147.exact3736.b := by decide
theorem linkedExact3765 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6769.algebra.mat CofiberE2Batches.Batch084.dependency6768.c := by
  rw [incomingLink3765, outgoingLink3765]
  exact CofiberE2Batches.Batch147.exact3736valid.2
theorem incomingValid3765 : CofiberE2Batches.Batch084.dependency6768.Valid := CofiberE2Batches.Batch084.dependency6768valid
theorem outgoingValid3765 : CofiberE2Batches.Batch084.dependency6769.Valid := CofiberE2Batches.Batch084.dependency6769valid
theorem incomingLink3766 : CofiberE2Batches.Batch084.dependency6771.c = CofiberE2Batches.Batch147.exact3737.a := by decide
theorem outgoingLink3766 : CofiberE2Batches.Batch084.dependency6772.algebra.mat = CofiberE2Batches.Batch147.exact3737.b := by decide
theorem linkedExact3766 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6772.algebra.mat CofiberE2Batches.Batch084.dependency6771.c := by
  rw [incomingLink3766, outgoingLink3766]
  exact CofiberE2Batches.Batch147.exact3737valid.2
theorem incomingValid3766 : CofiberE2Batches.Batch084.dependency6771.Valid := CofiberE2Batches.Batch084.dependency6771valid
theorem outgoingValid3766 : CofiberE2Batches.Batch084.dependency6772.Valid := CofiberE2Batches.Batch084.dependency6772valid
theorem incomingLink3767 : CofiberE2Batches.Batch084.dependency6773.algebra.mat = CofiberE2Batches.Batch147.exact3738.a := by decide
theorem outgoingLink3767 : CofiberE2Batches.Batch082.dependency6617.c = CofiberE2Batches.Batch147.exact3738.b := by decide
theorem linkedExact3767 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch082.dependency6617.c CofiberE2Batches.Batch084.dependency6773.algebra.mat := by
  rw [incomingLink3767, outgoingLink3767]
  exact CofiberE2Batches.Batch147.exact3738valid.2
theorem incomingValid3767 : CofiberE2Batches.Batch084.dependency6773.Valid := CofiberE2Batches.Batch084.dependency6773valid
theorem outgoingValid3767 : CofiberE2Batches.Batch082.dependency6617.Valid := CofiberE2Batches.Batch082.dependency6617valid
theorem incomingLink3768 : CofiberE2Batches.Batch084.dependency6774.algebra.mat = CofiberE2Batches.Batch147.exact3739.a := by decide
theorem outgoingLink3768 : CofiberE2Batches.Batch082.dependency6621.c = CofiberE2Batches.Batch147.exact3739.b := by decide
theorem linkedExact3768 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch082.dependency6621.c CofiberE2Batches.Batch084.dependency6774.algebra.mat := by
  rw [incomingLink3768, outgoingLink3768]
  exact CofiberE2Batches.Batch147.exact3739valid.2
theorem incomingValid3768 : CofiberE2Batches.Batch084.dependency6774.Valid := CofiberE2Batches.Batch084.dependency6774valid
theorem outgoingValid3768 : CofiberE2Batches.Batch082.dependency6621.Valid := CofiberE2Batches.Batch082.dependency6621valid
theorem incomingLink3769 : CofiberE2Batches.Batch084.dependency6775.algebra.mat = CofiberE2Batches.Batch147.exact3740.a := by decide
theorem outgoingLink3769 : CofiberE2Batches.Batch082.dependency6629.c = CofiberE2Batches.Batch147.exact3740.b := by decide
theorem linkedExact3769 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch082.dependency6629.c CofiberE2Batches.Batch084.dependency6775.algebra.mat := by
  rw [incomingLink3769, outgoingLink3769]
  exact CofiberE2Batches.Batch147.exact3740valid.2
theorem incomingValid3769 : CofiberE2Batches.Batch084.dependency6775.Valid := CofiberE2Batches.Batch084.dependency6775valid
theorem outgoingValid3769 : CofiberE2Batches.Batch082.dependency6629.Valid := CofiberE2Batches.Batch082.dependency6629valid
theorem incomingLink3770 : CofiberE2Batches.Batch084.dependency6776.algebra.mat = CofiberE2Batches.Batch147.exact3741.a := by decide
theorem outgoingLink3770 : CofiberE2Batches.Batch084.dependency6778.c = CofiberE2Batches.Batch147.exact3741.b := by decide
theorem linkedExact3770 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6778.c CofiberE2Batches.Batch084.dependency6776.algebra.mat := by
  rw [incomingLink3770, outgoingLink3770]
  exact CofiberE2Batches.Batch147.exact3741valid.2
theorem incomingValid3770 : CofiberE2Batches.Batch084.dependency6776.Valid := CofiberE2Batches.Batch084.dependency6776valid
theorem outgoingValid3770 : CofiberE2Batches.Batch084.dependency6778.Valid := CofiberE2Batches.Batch084.dependency6778valid
theorem incomingLink3771 : CofiberE2Batches.Batch084.dependency6779.algebra.mat = CofiberE2Batches.Batch147.exact3742.a := by decide
theorem outgoingLink3771 : CofiberE2Batches.Batch082.dependency6633.c = CofiberE2Batches.Batch147.exact3742.b := by decide
theorem linkedExact3771 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch082.dependency6633.c CofiberE2Batches.Batch084.dependency6779.algebra.mat := by
  rw [incomingLink3771, outgoingLink3771]
  exact CofiberE2Batches.Batch147.exact3742valid.2
theorem incomingValid3771 : CofiberE2Batches.Batch084.dependency6779.Valid := CofiberE2Batches.Batch084.dependency6779valid
theorem outgoingValid3771 : CofiberE2Batches.Batch082.dependency6633.Valid := CofiberE2Batches.Batch082.dependency6633valid
theorem incomingLink3772 : CofiberE2Batches.Batch084.dependency6780.algebra.mat = CofiberE2Batches.Batch147.exact3743.a := by decide
theorem outgoingLink3772 : CofiberE2Batches.Batch083.dependency6641.c = CofiberE2Batches.Batch147.exact3743.b := by decide
theorem linkedExact3772 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6641.c CofiberE2Batches.Batch084.dependency6780.algebra.mat := by
  rw [incomingLink3772, outgoingLink3772]
  exact CofiberE2Batches.Batch147.exact3743valid.2
theorem incomingValid3772 : CofiberE2Batches.Batch084.dependency6780.Valid := CofiberE2Batches.Batch084.dependency6780valid
theorem outgoingValid3772 : CofiberE2Batches.Batch083.dependency6641.Valid := CofiberE2Batches.Batch083.dependency6641valid
theorem incomingLink3773 : CofiberE2Batches.Batch084.dependency6781.algebra.mat = CofiberE2Batches.Batch147.exact3744.a := by decide
theorem outgoingLink3773 : CofiberE2Batches.Batch083.dependency6645.c = CofiberE2Batches.Batch147.exact3744.b := by decide
theorem linkedExact3773 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6645.c CofiberE2Batches.Batch084.dependency6781.algebra.mat := by
  rw [incomingLink3773, outgoingLink3773]
  exact CofiberE2Batches.Batch147.exact3744valid.2
theorem incomingValid3773 : CofiberE2Batches.Batch084.dependency6781.Valid := CofiberE2Batches.Batch084.dependency6781valid
theorem outgoingValid3773 : CofiberE2Batches.Batch083.dependency6645.Valid := CofiberE2Batches.Batch083.dependency6645valid
theorem incomingLink3774 : CofiberE2Batches.Batch084.dependency6782.algebra.mat = CofiberE2Batches.Batch147.exact3745.a := by decide
theorem outgoingLink3774 : CofiberE2Batches.Batch083.dependency6649.c = CofiberE2Batches.Batch147.exact3745.b := by decide
theorem linkedExact3774 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6649.c CofiberE2Batches.Batch084.dependency6782.algebra.mat := by
  rw [incomingLink3774, outgoingLink3774]
  exact CofiberE2Batches.Batch147.exact3745valid.2
theorem incomingValid3774 : CofiberE2Batches.Batch084.dependency6782.Valid := CofiberE2Batches.Batch084.dependency6782valid
theorem outgoingValid3774 : CofiberE2Batches.Batch083.dependency6649.Valid := CofiberE2Batches.Batch083.dependency6649valid
theorem incomingLink3775 : CofiberE2Batches.Batch084.dependency6783.algebra.mat = CofiberE2Batches.Batch147.exact3746.a := by decide
theorem outgoingLink3775 : CofiberE2Batches.Batch083.dependency6653.c = CofiberE2Batches.Batch147.exact3746.b := by decide
theorem linkedExact3775 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6653.c CofiberE2Batches.Batch084.dependency6783.algebra.mat := by
  rw [incomingLink3775, outgoingLink3775]
  exact CofiberE2Batches.Batch147.exact3746valid.2
theorem incomingValid3775 : CofiberE2Batches.Batch084.dependency6783.Valid := CofiberE2Batches.Batch084.dependency6783valid
theorem outgoingValid3775 : CofiberE2Batches.Batch083.dependency6653.Valid := CofiberE2Batches.Batch083.dependency6653valid
theorem incomingLink3776 : CofiberE2Batches.Batch084.dependency6784.algebra.mat = CofiberE2Batches.Batch147.exact3747.a := by decide
theorem outgoingLink3776 : CofiberE2Batches.Batch083.dependency6657.c = CofiberE2Batches.Batch147.exact3747.b := by decide
theorem linkedExact3776 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6657.c CofiberE2Batches.Batch084.dependency6784.algebra.mat := by
  rw [incomingLink3776, outgoingLink3776]
  exact CofiberE2Batches.Batch147.exact3747valid.2
theorem incomingValid3776 : CofiberE2Batches.Batch084.dependency6784.Valid := CofiberE2Batches.Batch084.dependency6784valid
theorem outgoingValid3776 : CofiberE2Batches.Batch083.dependency6657.Valid := CofiberE2Batches.Batch083.dependency6657valid
theorem incomingLink3777 : CofiberE2Batches.Batch084.dependency6785.algebra.mat = CofiberE2Batches.Batch147.exact3748.a := by decide
theorem outgoingLink3777 : CofiberE2Batches.Batch083.dependency6685.c = CofiberE2Batches.Batch147.exact3748.b := by decide
theorem linkedExact3777 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6685.c CofiberE2Batches.Batch084.dependency6785.algebra.mat := by
  rw [incomingLink3777, outgoingLink3777]
  exact CofiberE2Batches.Batch147.exact3748valid.2
theorem incomingValid3777 : CofiberE2Batches.Batch084.dependency6785.Valid := CofiberE2Batches.Batch084.dependency6785valid
theorem outgoingValid3777 : CofiberE2Batches.Batch083.dependency6685.Valid := CofiberE2Batches.Batch083.dependency6685valid
theorem incomingLink3778 : CofiberE2Batches.Batch084.dependency6786.algebra.mat = CofiberE2Batches.Batch147.exact3749.a := by decide
theorem outgoingLink3778 : CofiberE2Batches.Batch084.dependency6788.c = CofiberE2Batches.Batch147.exact3749.b := by decide
theorem linkedExact3778 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch084.dependency6788.c CofiberE2Batches.Batch084.dependency6786.algebra.mat := by
  rw [incomingLink3778, outgoingLink3778]
  exact CofiberE2Batches.Batch147.exact3749valid.2
theorem incomingValid3778 : CofiberE2Batches.Batch084.dependency6786.Valid := CofiberE2Batches.Batch084.dependency6786valid
theorem outgoingValid3778 : CofiberE2Batches.Batch084.dependency6788.Valid := CofiberE2Batches.Batch084.dependency6788valid
theorem incomingLink3779 : CofiberE2Batches.Batch084.dependency6789.algebra.mat = CofiberE2Batches.Batch147.exact3750.a := by decide
theorem outgoingLink3779 : CofiberE2Batches.Batch083.dependency6665.c = CofiberE2Batches.Batch147.exact3750.b := by decide
theorem linkedExact3779 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch083.dependency6665.c CofiberE2Batches.Batch084.dependency6789.algebra.mat := by
  rw [incomingLink3779, outgoingLink3779]
  exact CofiberE2Batches.Batch147.exact3750valid.2
theorem incomingValid3779 : CofiberE2Batches.Batch084.dependency6789.Valid := CofiberE2Batches.Batch084.dependency6789valid
theorem outgoingValid3779 : CofiberE2Batches.Batch083.dependency6665.Valid := CofiberE2Batches.Batch083.dependency6665valid
end CofiberLinkageBatches.Batch062
