import CofiberE2Certificates.Linkage
import CofiberE2Batches.Batch007
import CofiberE2Batches.Batch008
import CofiberE2Batches.Batch009
import CofiberE2Batches.Batch105
import CofiberE2Batches.Batch106
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace CofiberLinkageBatches.Batch007
theorem incomingLink420 : CofiberE2Batches.Batch007.dependency608.algebra.mat = CofiberE2Batches.Batch105.exact420.a := by decide
theorem outgoingLink420 : CofiberE2Batches.Batch007.dependency629.c = CofiberE2Batches.Batch105.exact420.b := by decide
theorem linkedExact420 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch007.dependency629.c CofiberE2Batches.Batch007.dependency608.algebra.mat := by
  rw [incomingLink420, outgoingLink420]
  exact CofiberE2Batches.Batch105.exact420valid.2
theorem incomingValid420 : CofiberE2Batches.Batch007.dependency608.Valid := CofiberE2Batches.Batch007.dependency608valid
theorem outgoingValid420 : CofiberE2Batches.Batch007.dependency629.Valid := CofiberE2Batches.Batch007.dependency629valid
theorem incomingLink421 : CofiberE2Batches.Batch007.dependency630.algebra.mat = CofiberE2Batches.Batch105.exact421.a := by decide
theorem outgoingLink421 : CofiberE2Batches.Batch007.dependency631.c = CofiberE2Batches.Batch105.exact421.b := by decide
theorem linkedExact421 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch007.dependency631.c CofiberE2Batches.Batch007.dependency630.algebra.mat := by
  rw [incomingLink421, outgoingLink421]
  exact CofiberE2Batches.Batch105.exact421valid.2
theorem incomingValid421 : CofiberE2Batches.Batch007.dependency630.Valid := CofiberE2Batches.Batch007.dependency630valid
theorem outgoingValid421 : CofiberE2Batches.Batch007.dependency631.Valid := CofiberE2Batches.Batch007.dependency631valid
theorem incomingLink422 : CofiberE2Batches.Batch007.dependency632.algebra.mat = CofiberE2Batches.Batch105.exact422.a := by decide
theorem outgoingLink422 : CofiberE2Batches.Batch007.dependency633.c = CofiberE2Batches.Batch105.exact422.b := by decide
theorem linkedExact422 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch007.dependency633.c CofiberE2Batches.Batch007.dependency632.algebra.mat := by
  rw [incomingLink422, outgoingLink422]
  exact CofiberE2Batches.Batch105.exact422valid.2
theorem incomingValid422 : CofiberE2Batches.Batch007.dependency632.Valid := CofiberE2Batches.Batch007.dependency632valid
theorem outgoingValid422 : CofiberE2Batches.Batch007.dependency633.Valid := CofiberE2Batches.Batch007.dependency633valid
theorem incomingLink423 : CofiberE2Batches.Batch007.dependency612.algebra.mat = CofiberE2Batches.Batch105.exact423.a := by decide
theorem outgoingLink423 : CofiberE2Batches.Batch007.dependency634.c = CofiberE2Batches.Batch105.exact423.b := by decide
theorem linkedExact423 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch007.dependency634.c CofiberE2Batches.Batch007.dependency612.algebra.mat := by
  rw [incomingLink423, outgoingLink423]
  exact CofiberE2Batches.Batch105.exact423valid.2
theorem incomingValid423 : CofiberE2Batches.Batch007.dependency612.Valid := CofiberE2Batches.Batch007.dependency612valid
theorem outgoingValid423 : CofiberE2Batches.Batch007.dependency634.Valid := CofiberE2Batches.Batch007.dependency634valid
theorem incomingLink424 : CofiberE2Batches.Batch007.dependency614.algebra.mat = CofiberE2Batches.Batch105.exact424.a := by decide
theorem outgoingLink424 : CofiberE2Batches.Batch007.dependency635.c = CofiberE2Batches.Batch105.exact424.b := by decide
theorem linkedExact424 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch007.dependency635.c CofiberE2Batches.Batch007.dependency614.algebra.mat := by
  rw [incomingLink424, outgoingLink424]
  exact CofiberE2Batches.Batch105.exact424valid.2
theorem incomingValid424 : CofiberE2Batches.Batch007.dependency614.Valid := CofiberE2Batches.Batch007.dependency614valid
theorem outgoingValid424 : CofiberE2Batches.Batch007.dependency635.Valid := CofiberE2Batches.Batch007.dependency635valid
theorem incomingLink425 : CofiberE2Batches.Batch007.dependency636.algebra.mat = CofiberE2Batches.Batch105.exact425.a := by decide
theorem outgoingLink425 : CofiberE2Batches.Batch007.dependency637.c = CofiberE2Batches.Batch105.exact425.b := by decide
theorem linkedExact425 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch007.dependency637.c CofiberE2Batches.Batch007.dependency636.algebra.mat := by
  rw [incomingLink425, outgoingLink425]
  exact CofiberE2Batches.Batch105.exact425valid.2
theorem incomingValid425 : CofiberE2Batches.Batch007.dependency636.Valid := CofiberE2Batches.Batch007.dependency636valid
theorem outgoingValid425 : CofiberE2Batches.Batch007.dependency637.Valid := CofiberE2Batches.Batch007.dependency637valid
theorem incomingLink426 : CofiberE2Batches.Batch007.dependency616.algebra.mat = CofiberE2Batches.Batch105.exact426.a := by decide
theorem outgoingLink426 : CofiberE2Batches.Batch007.dependency638.c = CofiberE2Batches.Batch105.exact426.b := by decide
theorem linkedExact426 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch007.dependency638.c CofiberE2Batches.Batch007.dependency616.algebra.mat := by
  rw [incomingLink426, outgoingLink426]
  exact CofiberE2Batches.Batch105.exact426valid.2
theorem incomingValid426 : CofiberE2Batches.Batch007.dependency616.Valid := CofiberE2Batches.Batch007.dependency616valid
theorem outgoingValid426 : CofiberE2Batches.Batch007.dependency638.Valid := CofiberE2Batches.Batch007.dependency638valid
theorem incomingLink427 : CofiberE2Batches.Batch007.dependency639.algebra.mat = CofiberE2Batches.Batch105.exact427.a := by decide
theorem outgoingLink427 : CofiberE2Batches.Batch008.dependency640.c = CofiberE2Batches.Batch105.exact427.b := by decide
theorem linkedExact427 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency640.c CofiberE2Batches.Batch007.dependency639.algebra.mat := by
  rw [incomingLink427, outgoingLink427]
  exact CofiberE2Batches.Batch105.exact427valid.2
theorem incomingValid427 : CofiberE2Batches.Batch007.dependency639.Valid := CofiberE2Batches.Batch007.dependency639valid
theorem outgoingValid427 : CofiberE2Batches.Batch008.dependency640.Valid := CofiberE2Batches.Batch008.dependency640valid
theorem incomingLink428 : CofiberE2Batches.Batch008.dependency641.algebra.mat = CofiberE2Batches.Batch105.exact428.a := by decide
theorem outgoingLink428 : CofiberE2Batches.Batch008.dependency642.c = CofiberE2Batches.Batch105.exact428.b := by decide
theorem linkedExact428 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency642.c CofiberE2Batches.Batch008.dependency641.algebra.mat := by
  rw [incomingLink428, outgoingLink428]
  exact CofiberE2Batches.Batch105.exact428valid.2
theorem incomingValid428 : CofiberE2Batches.Batch008.dependency641.Valid := CofiberE2Batches.Batch008.dependency641valid
theorem outgoingValid428 : CofiberE2Batches.Batch008.dependency642.Valid := CofiberE2Batches.Batch008.dependency642valid
theorem incomingLink429 : CofiberE2Batches.Batch008.dependency643.algebra.mat = CofiberE2Batches.Batch105.exact429.a := by decide
theorem outgoingLink429 : CofiberE2Batches.Batch008.dependency644.c = CofiberE2Batches.Batch105.exact429.b := by decide
theorem linkedExact429 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency644.c CofiberE2Batches.Batch008.dependency643.algebra.mat := by
  rw [incomingLink429, outgoingLink429]
  exact CofiberE2Batches.Batch105.exact429valid.2
theorem incomingValid429 : CofiberE2Batches.Batch008.dependency643.Valid := CofiberE2Batches.Batch008.dependency643valid
theorem outgoingValid429 : CofiberE2Batches.Batch008.dependency644.Valid := CofiberE2Batches.Batch008.dependency644valid
theorem incomingLink430 : CofiberE2Batches.Batch008.dependency645.algebra.mat = CofiberE2Batches.Batch105.exact430.a := by decide
theorem outgoingLink430 : CofiberE2Batches.Batch008.dependency646.c = CofiberE2Batches.Batch105.exact430.b := by decide
theorem linkedExact430 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency646.c CofiberE2Batches.Batch008.dependency645.algebra.mat := by
  rw [incomingLink430, outgoingLink430]
  exact CofiberE2Batches.Batch105.exact430valid.2
theorem incomingValid430 : CofiberE2Batches.Batch008.dependency645.Valid := CofiberE2Batches.Batch008.dependency645valid
theorem outgoingValid430 : CofiberE2Batches.Batch008.dependency646.Valid := CofiberE2Batches.Batch008.dependency646valid
theorem incomingLink431 : CofiberE2Batches.Batch008.dependency647.algebra.mat = CofiberE2Batches.Batch105.exact431.a := by decide
theorem outgoingLink431 : CofiberE2Batches.Batch008.dependency648.c = CofiberE2Batches.Batch105.exact431.b := by decide
theorem linkedExact431 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency648.c CofiberE2Batches.Batch008.dependency647.algebra.mat := by
  rw [incomingLink431, outgoingLink431]
  exact CofiberE2Batches.Batch105.exact431valid.2
theorem incomingValid431 : CofiberE2Batches.Batch008.dependency647.Valid := CofiberE2Batches.Batch008.dependency647valid
theorem outgoingValid431 : CofiberE2Batches.Batch008.dependency648.Valid := CofiberE2Batches.Batch008.dependency648valid
theorem incomingLink432 : CofiberE2Batches.Batch008.dependency650.c = CofiberE2Batches.Batch105.exact432.a := by decide
theorem outgoingLink432 : CofiberE2Batches.Batch007.dependency591.algebra.mat = CofiberE2Batches.Batch105.exact432.b := by decide
theorem linkedExact432 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch007.dependency591.algebra.mat CofiberE2Batches.Batch008.dependency650.c := by
  rw [incomingLink432, outgoingLink432]
  exact CofiberE2Batches.Batch105.exact432valid.2
theorem incomingValid432 : CofiberE2Batches.Batch008.dependency650.Valid := CofiberE2Batches.Batch008.dependency650valid
theorem outgoingValid432 : CofiberE2Batches.Batch007.dependency591.Valid := CofiberE2Batches.Batch007.dependency591valid
theorem incomingLink433 : CofiberE2Batches.Batch007.dependency620.c = CofiberE2Batches.Batch105.exact433.a := by decide
theorem outgoingLink433 : CofiberE2Batches.Batch007.dependency597.algebra.mat = CofiberE2Batches.Batch105.exact433.b := by decide
theorem linkedExact433 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch007.dependency597.algebra.mat CofiberE2Batches.Batch007.dependency620.c := by
  rw [incomingLink433, outgoingLink433]
  exact CofiberE2Batches.Batch105.exact433valid.2
theorem incomingValid433 : CofiberE2Batches.Batch007.dependency620.Valid := CofiberE2Batches.Batch007.dependency620valid
theorem outgoingValid433 : CofiberE2Batches.Batch007.dependency597.Valid := CofiberE2Batches.Batch007.dependency597valid
theorem incomingLink434 : CofiberE2Batches.Batch008.dependency651.c = CofiberE2Batches.Batch105.exact434.a := by decide
theorem outgoingLink434 : CofiberE2Batches.Batch007.dependency599.algebra.mat = CofiberE2Batches.Batch105.exact434.b := by decide
theorem linkedExact434 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch007.dependency599.algebra.mat CofiberE2Batches.Batch008.dependency651.c := by
  rw [incomingLink434, outgoingLink434]
  exact CofiberE2Batches.Batch105.exact434valid.2
theorem incomingValid434 : CofiberE2Batches.Batch008.dependency651.Valid := CofiberE2Batches.Batch008.dependency651valid
theorem outgoingValid434 : CofiberE2Batches.Batch007.dependency599.Valid := CofiberE2Batches.Batch007.dependency599valid
theorem incomingLink435 : CofiberE2Batches.Batch007.dependency622.c = CofiberE2Batches.Batch105.exact435.a := by decide
theorem outgoingLink435 : CofiberE2Batches.Batch008.dependency652.algebra.mat = CofiberE2Batches.Batch105.exact435.b := by decide
theorem linkedExact435 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency652.algebra.mat CofiberE2Batches.Batch007.dependency622.c := by
  rw [incomingLink435, outgoingLink435]
  exact CofiberE2Batches.Batch105.exact435valid.2
theorem incomingValid435 : CofiberE2Batches.Batch007.dependency622.Valid := CofiberE2Batches.Batch007.dependency622valid
theorem outgoingValid435 : CofiberE2Batches.Batch008.dependency652.Valid := CofiberE2Batches.Batch008.dependency652valid
theorem incomingLink436 : CofiberE2Batches.Batch008.dependency654.c = CofiberE2Batches.Batch105.exact436.a := by decide
theorem outgoingLink436 : CofiberE2Batches.Batch007.dependency607.algebra.mat = CofiberE2Batches.Batch105.exact436.b := by decide
theorem linkedExact436 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch007.dependency607.algebra.mat CofiberE2Batches.Batch008.dependency654.c := by
  rw [incomingLink436, outgoingLink436]
  exact CofiberE2Batches.Batch105.exact436valid.2
theorem incomingValid436 : CofiberE2Batches.Batch008.dependency654.Valid := CofiberE2Batches.Batch008.dependency654valid
theorem outgoingValid436 : CofiberE2Batches.Batch007.dependency607.Valid := CofiberE2Batches.Batch007.dependency607valid
theorem incomingLink437 : CofiberE2Batches.Batch007.dependency625.c = CofiberE2Batches.Batch105.exact437.a := by decide
theorem outgoingLink437 : CofiberE2Batches.Batch008.dependency655.algebra.mat = CofiberE2Batches.Batch105.exact437.b := by decide
theorem linkedExact437 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency655.algebra.mat CofiberE2Batches.Batch007.dependency625.c := by
  rw [incomingLink437, outgoingLink437]
  exact CofiberE2Batches.Batch105.exact437valid.2
theorem incomingValid437 : CofiberE2Batches.Batch007.dependency625.Valid := CofiberE2Batches.Batch007.dependency625valid
theorem outgoingValid437 : CofiberE2Batches.Batch008.dependency655.Valid := CofiberE2Batches.Batch008.dependency655valid
theorem incomingLink438 : CofiberE2Batches.Batch008.dependency657.c = CofiberE2Batches.Batch105.exact438.a := by decide
theorem outgoingLink438 : CofiberE2Batches.Batch007.dependency609.algebra.mat = CofiberE2Batches.Batch105.exact438.b := by decide
theorem linkedExact438 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch007.dependency609.algebra.mat CofiberE2Batches.Batch008.dependency657.c := by
  rw [incomingLink438, outgoingLink438]
  exact CofiberE2Batches.Batch105.exact438valid.2
theorem incomingValid438 : CofiberE2Batches.Batch008.dependency657.Valid := CofiberE2Batches.Batch008.dependency657valid
theorem outgoingValid438 : CofiberE2Batches.Batch007.dependency609.Valid := CofiberE2Batches.Batch007.dependency609valid
theorem incomingLink439 : CofiberE2Batches.Batch007.dependency626.c = CofiberE2Batches.Batch105.exact439.a := by decide
theorem outgoingLink439 : CofiberE2Batches.Batch008.dependency658.algebra.mat = CofiberE2Batches.Batch105.exact439.b := by decide
theorem linkedExact439 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency658.algebra.mat CofiberE2Batches.Batch007.dependency626.c := by
  rw [incomingLink439, outgoingLink439]
  exact CofiberE2Batches.Batch105.exact439valid.2
theorem incomingValid439 : CofiberE2Batches.Batch007.dependency626.Valid := CofiberE2Batches.Batch007.dependency626valid
theorem outgoingValid439 : CofiberE2Batches.Batch008.dependency658.Valid := CofiberE2Batches.Batch008.dependency658valid
theorem incomingLink440 : CofiberE2Batches.Batch007.dependency629.c = CofiberE2Batches.Batch105.exact440.a := by decide
theorem outgoingLink440 : CofiberE2Batches.Batch007.dependency611.algebra.mat = CofiberE2Batches.Batch105.exact440.b := by decide
theorem linkedExact440 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch007.dependency611.algebra.mat CofiberE2Batches.Batch007.dependency629.c := by
  rw [incomingLink440, outgoingLink440]
  exact CofiberE2Batches.Batch105.exact440valid.2
theorem incomingValid440 : CofiberE2Batches.Batch007.dependency629.Valid := CofiberE2Batches.Batch007.dependency629valid
theorem outgoingValid440 : CofiberE2Batches.Batch007.dependency611.Valid := CofiberE2Batches.Batch007.dependency611valid
theorem incomingLink441 : CofiberE2Batches.Batch008.dependency659.c = CofiberE2Batches.Batch105.exact441.a := by decide
theorem outgoingLink441 : CofiberE2Batches.Batch007.dependency613.algebra.mat = CofiberE2Batches.Batch105.exact441.b := by decide
theorem linkedExact441 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch007.dependency613.algebra.mat CofiberE2Batches.Batch008.dependency659.c := by
  rw [incomingLink441, outgoingLink441]
  exact CofiberE2Batches.Batch105.exact441valid.2
theorem incomingValid441 : CofiberE2Batches.Batch008.dependency659.Valid := CofiberE2Batches.Batch008.dependency659valid
theorem outgoingValid441 : CofiberE2Batches.Batch007.dependency613.Valid := CofiberE2Batches.Batch007.dependency613valid
theorem incomingLink442 : CofiberE2Batches.Batch008.dependency661.c = CofiberE2Batches.Batch105.exact442.a := by decide
theorem outgoingLink442 : CofiberE2Batches.Batch008.dependency662.algebra.mat = CofiberE2Batches.Batch105.exact442.b := by decide
theorem linkedExact442 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency662.algebra.mat CofiberE2Batches.Batch008.dependency661.c := by
  rw [incomingLink442, outgoingLink442]
  exact CofiberE2Batches.Batch105.exact442valid.2
theorem incomingValid442 : CofiberE2Batches.Batch008.dependency661.Valid := CofiberE2Batches.Batch008.dependency661valid
theorem outgoingValid442 : CofiberE2Batches.Batch008.dependency662.Valid := CofiberE2Batches.Batch008.dependency662valid
theorem incomingLink443 : CofiberE2Batches.Batch007.dependency631.c = CofiberE2Batches.Batch105.exact443.a := by decide
theorem outgoingLink443 : CofiberE2Batches.Batch008.dependency663.algebra.mat = CofiberE2Batches.Batch105.exact443.b := by decide
theorem linkedExact443 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency663.algebra.mat CofiberE2Batches.Batch007.dependency631.c := by
  rw [incomingLink443, outgoingLink443]
  exact CofiberE2Batches.Batch105.exact443valid.2
theorem incomingValid443 : CofiberE2Batches.Batch007.dependency631.Valid := CofiberE2Batches.Batch007.dependency631valid
theorem outgoingValid443 : CofiberE2Batches.Batch008.dependency663.Valid := CofiberE2Batches.Batch008.dependency663valid
theorem incomingLink444 : CofiberE2Batches.Batch007.dependency633.c = CofiberE2Batches.Batch105.exact444.a := by decide
theorem outgoingLink444 : CofiberE2Batches.Batch008.dependency664.algebra.mat = CofiberE2Batches.Batch105.exact444.b := by decide
theorem linkedExact444 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency664.algebra.mat CofiberE2Batches.Batch007.dependency633.c := by
  rw [incomingLink444, outgoingLink444]
  exact CofiberE2Batches.Batch105.exact444valid.2
theorem incomingValid444 : CofiberE2Batches.Batch007.dependency633.Valid := CofiberE2Batches.Batch007.dependency633valid
theorem outgoingValid444 : CofiberE2Batches.Batch008.dependency664.Valid := CofiberE2Batches.Batch008.dependency664valid
theorem incomingLink445 : CofiberE2Batches.Batch008.dependency665.c = CofiberE2Batches.Batch105.exact445.a := by decide
theorem outgoingLink445 : CofiberE2Batches.Batch008.dependency666.algebra.mat = CofiberE2Batches.Batch105.exact445.b := by decide
theorem linkedExact445 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency666.algebra.mat CofiberE2Batches.Batch008.dependency665.c := by
  rw [incomingLink445, outgoingLink445]
  exact CofiberE2Batches.Batch105.exact445valid.2
theorem incomingValid445 : CofiberE2Batches.Batch008.dependency665.Valid := CofiberE2Batches.Batch008.dependency665valid
theorem outgoingValid445 : CofiberE2Batches.Batch008.dependency666.Valid := CofiberE2Batches.Batch008.dependency666valid
theorem incomingLink446 : CofiberE2Batches.Batch008.dependency668.c = CofiberE2Batches.Batch105.exact446.a := by decide
theorem outgoingLink446 : CofiberE2Batches.Batch008.dependency669.algebra.mat = CofiberE2Batches.Batch105.exact446.b := by decide
theorem linkedExact446 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency669.algebra.mat CofiberE2Batches.Batch008.dependency668.c := by
  rw [incomingLink446, outgoingLink446]
  exact CofiberE2Batches.Batch105.exact446valid.2
theorem incomingValid446 : CofiberE2Batches.Batch008.dependency668.Valid := CofiberE2Batches.Batch008.dependency668valid
theorem outgoingValid446 : CofiberE2Batches.Batch008.dependency669.Valid := CofiberE2Batches.Batch008.dependency669valid
theorem incomingLink447 : CofiberE2Batches.Batch008.dependency671.c = CofiberE2Batches.Batch105.exact447.a := by decide
theorem outgoingLink447 : CofiberE2Batches.Batch008.dependency672.algebra.mat = CofiberE2Batches.Batch105.exact447.b := by decide
theorem linkedExact447 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency672.algebra.mat CofiberE2Batches.Batch008.dependency671.c := by
  rw [incomingLink447, outgoingLink447]
  exact CofiberE2Batches.Batch105.exact447valid.2
theorem incomingValid447 : CofiberE2Batches.Batch008.dependency671.Valid := CofiberE2Batches.Batch008.dependency671valid
theorem outgoingValid447 : CofiberE2Batches.Batch008.dependency672.Valid := CofiberE2Batches.Batch008.dependency672valid
theorem incomingLink448 : CofiberE2Batches.Batch007.dependency637.c = CofiberE2Batches.Batch105.exact448.a := by decide
theorem outgoingLink448 : CofiberE2Batches.Batch008.dependency673.algebra.mat = CofiberE2Batches.Batch105.exact448.b := by decide
theorem linkedExact448 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency673.algebra.mat CofiberE2Batches.Batch007.dependency637.c := by
  rw [incomingLink448, outgoingLink448]
  exact CofiberE2Batches.Batch105.exact448valid.2
theorem incomingValid448 : CofiberE2Batches.Batch007.dependency637.Valid := CofiberE2Batches.Batch007.dependency637valid
theorem outgoingValid448 : CofiberE2Batches.Batch008.dependency673.Valid := CofiberE2Batches.Batch008.dependency673valid
theorem incomingLink449 : CofiberE2Batches.Batch008.dependency675.c = CofiberE2Batches.Batch105.exact449.a := by decide
theorem outgoingLink449 : CofiberE2Batches.Batch008.dependency676.algebra.mat = CofiberE2Batches.Batch105.exact449.b := by decide
theorem linkedExact449 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency676.algebra.mat CofiberE2Batches.Batch008.dependency675.c := by
  rw [incomingLink449, outgoingLink449]
  exact CofiberE2Batches.Batch105.exact449valid.2
theorem incomingValid449 : CofiberE2Batches.Batch008.dependency675.Valid := CofiberE2Batches.Batch008.dependency675valid
theorem outgoingValid449 : CofiberE2Batches.Batch008.dependency676.Valid := CofiberE2Batches.Batch008.dependency676valid
theorem incomingLink450 : CofiberE2Batches.Batch008.dependency640.c = CofiberE2Batches.Batch105.exact450.a := by decide
theorem outgoingLink450 : CofiberE2Batches.Batch008.dependency677.algebra.mat = CofiberE2Batches.Batch105.exact450.b := by decide
theorem linkedExact450 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency677.algebra.mat CofiberE2Batches.Batch008.dependency640.c := by
  rw [incomingLink450, outgoingLink450]
  exact CofiberE2Batches.Batch105.exact450valid.2
theorem incomingValid450 : CofiberE2Batches.Batch008.dependency640.Valid := CofiberE2Batches.Batch008.dependency640valid
theorem outgoingValid450 : CofiberE2Batches.Batch008.dependency677.Valid := CofiberE2Batches.Batch008.dependency677valid
theorem incomingLink451 : CofiberE2Batches.Batch008.dependency642.c = CofiberE2Batches.Batch105.exact451.a := by decide
theorem outgoingLink451 : CofiberE2Batches.Batch008.dependency678.algebra.mat = CofiberE2Batches.Batch105.exact451.b := by decide
theorem linkedExact451 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency678.algebra.mat CofiberE2Batches.Batch008.dependency642.c := by
  rw [incomingLink451, outgoingLink451]
  exact CofiberE2Batches.Batch105.exact451valid.2
theorem incomingValid451 : CofiberE2Batches.Batch008.dependency642.Valid := CofiberE2Batches.Batch008.dependency642valid
theorem outgoingValid451 : CofiberE2Batches.Batch008.dependency678.Valid := CofiberE2Batches.Batch008.dependency678valid
theorem incomingLink452 : CofiberE2Batches.Batch008.dependency644.c = CofiberE2Batches.Batch105.exact452.a := by decide
theorem outgoingLink452 : CofiberE2Batches.Batch008.dependency679.algebra.mat = CofiberE2Batches.Batch105.exact452.b := by decide
theorem linkedExact452 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency679.algebra.mat CofiberE2Batches.Batch008.dependency644.c := by
  rw [incomingLink452, outgoingLink452]
  exact CofiberE2Batches.Batch105.exact452valid.2
theorem incomingValid452 : CofiberE2Batches.Batch008.dependency644.Valid := CofiberE2Batches.Batch008.dependency644valid
theorem outgoingValid452 : CofiberE2Batches.Batch008.dependency679.Valid := CofiberE2Batches.Batch008.dependency679valid
theorem incomingLink453 : CofiberE2Batches.Batch008.dependency646.c = CofiberE2Batches.Batch105.exact453.a := by decide
theorem outgoingLink453 : CofiberE2Batches.Batch008.dependency680.algebra.mat = CofiberE2Batches.Batch105.exact453.b := by decide
theorem linkedExact453 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency680.algebra.mat CofiberE2Batches.Batch008.dependency646.c := by
  rw [incomingLink453, outgoingLink453]
  exact CofiberE2Batches.Batch105.exact453valid.2
theorem incomingValid453 : CofiberE2Batches.Batch008.dependency646.Valid := CofiberE2Batches.Batch008.dependency646valid
theorem outgoingValid453 : CofiberE2Batches.Batch008.dependency680.Valid := CofiberE2Batches.Batch008.dependency680valid
theorem incomingLink454 : CofiberE2Batches.Batch008.dependency648.c = CofiberE2Batches.Batch105.exact454.a := by decide
theorem outgoingLink454 : CofiberE2Batches.Batch008.dependency681.algebra.mat = CofiberE2Batches.Batch105.exact454.b := by decide
theorem linkedExact454 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency681.algebra.mat CofiberE2Batches.Batch008.dependency648.c := by
  rw [incomingLink454, outgoingLink454]
  exact CofiberE2Batches.Batch105.exact454valid.2
theorem incomingValid454 : CofiberE2Batches.Batch008.dependency648.Valid := CofiberE2Batches.Batch008.dependency648valid
theorem outgoingValid454 : CofiberE2Batches.Batch008.dependency681.Valid := CofiberE2Batches.Batch008.dependency681valid
theorem incomingLink455 : CofiberE2Batches.Batch008.dependency682.c = CofiberE2Batches.Batch105.exact455.a := by decide
theorem outgoingLink455 : CofiberE2Batches.Batch008.dependency683.algebra.mat = CofiberE2Batches.Batch105.exact455.b := by decide
theorem linkedExact455 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency683.algebra.mat CofiberE2Batches.Batch008.dependency682.c := by
  rw [incomingLink455, outgoingLink455]
  exact CofiberE2Batches.Batch105.exact455valid.2
theorem incomingValid455 : CofiberE2Batches.Batch008.dependency682.Valid := CofiberE2Batches.Batch008.dependency682valid
theorem outgoingValid455 : CofiberE2Batches.Batch008.dependency683.Valid := CofiberE2Batches.Batch008.dependency683valid
theorem incomingLink456 : CofiberE2Batches.Batch008.dependency685.c = CofiberE2Batches.Batch105.exact456.a := by decide
theorem outgoingLink456 : CofiberE2Batches.Batch008.dependency686.algebra.mat = CofiberE2Batches.Batch105.exact456.b := by decide
theorem linkedExact456 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency686.algebra.mat CofiberE2Batches.Batch008.dependency685.c := by
  rw [incomingLink456, outgoingLink456]
  exact CofiberE2Batches.Batch105.exact456valid.2
theorem incomingValid456 : CofiberE2Batches.Batch008.dependency685.Valid := CofiberE2Batches.Batch008.dependency685valid
theorem outgoingValid456 : CofiberE2Batches.Batch008.dependency686.Valid := CofiberE2Batches.Batch008.dependency686valid
theorem incomingLink457 : CofiberE2Batches.Batch008.dependency688.c = CofiberE2Batches.Batch105.exact457.a := by decide
theorem outgoingLink457 : CofiberE2Batches.Batch008.dependency689.algebra.mat = CofiberE2Batches.Batch105.exact457.b := by decide
theorem linkedExact457 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency689.algebra.mat CofiberE2Batches.Batch008.dependency688.c := by
  rw [incomingLink457, outgoingLink457]
  exact CofiberE2Batches.Batch105.exact457valid.2
theorem incomingValid457 : CofiberE2Batches.Batch008.dependency688.Valid := CofiberE2Batches.Batch008.dependency688valid
theorem outgoingValid457 : CofiberE2Batches.Batch008.dependency689.Valid := CofiberE2Batches.Batch008.dependency689valid
theorem incomingLink458 : CofiberE2Batches.Batch008.dependency690.algebra.mat = CofiberE2Batches.Batch105.exact458.a := by decide
theorem outgoingLink458 : CofiberE2Batches.Batch008.dependency691.algebra.mat = CofiberE2Batches.Batch105.exact458.b := by decide
theorem linkedExact458 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency691.algebra.mat CofiberE2Batches.Batch008.dependency690.algebra.mat := by
  rw [incomingLink458, outgoingLink458]
  exact CofiberE2Batches.Batch105.exact458valid.2
theorem incomingValid458 : CofiberE2Batches.Batch008.dependency690.Valid := CofiberE2Batches.Batch008.dependency690valid
theorem outgoingValid458 : CofiberE2Batches.Batch008.dependency691.Valid := CofiberE2Batches.Batch008.dependency691valid
theorem incomingLink459 : CofiberE2Batches.Batch008.dependency692.algebra.mat = CofiberE2Batches.Batch106.exact459.a := by decide
theorem outgoingLink459 : CofiberE2Batches.Batch008.dependency693.algebra.mat = CofiberE2Batches.Batch106.exact459.b := by decide
theorem linkedExact459 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency693.algebra.mat CofiberE2Batches.Batch008.dependency692.algebra.mat := by
  rw [incomingLink459, outgoingLink459]
  exact CofiberE2Batches.Batch106.exact459valid.2
theorem incomingValid459 : CofiberE2Batches.Batch008.dependency692.Valid := CofiberE2Batches.Batch008.dependency692valid
theorem outgoingValid459 : CofiberE2Batches.Batch008.dependency693.Valid := CofiberE2Batches.Batch008.dependency693valid
theorem incomingLink460 : CofiberE2Batches.Batch008.dependency694.algebra.mat = CofiberE2Batches.Batch106.exact460.a := by decide
theorem outgoingLink460 : CofiberE2Batches.Batch008.dependency695.algebra.mat = CofiberE2Batches.Batch106.exact460.b := by decide
theorem linkedExact460 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency695.algebra.mat CofiberE2Batches.Batch008.dependency694.algebra.mat := by
  rw [incomingLink460, outgoingLink460]
  exact CofiberE2Batches.Batch106.exact460valid.2
theorem incomingValid460 : CofiberE2Batches.Batch008.dependency694.Valid := CofiberE2Batches.Batch008.dependency694valid
theorem outgoingValid460 : CofiberE2Batches.Batch008.dependency695.Valid := CofiberE2Batches.Batch008.dependency695valid
theorem incomingLink461 : CofiberE2Batches.Batch008.dependency696.algebra.mat = CofiberE2Batches.Batch106.exact461.a := by decide
theorem outgoingLink461 : CofiberE2Batches.Batch008.dependency697.algebra.mat = CofiberE2Batches.Batch106.exact461.b := by decide
theorem linkedExact461 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency697.algebra.mat CofiberE2Batches.Batch008.dependency696.algebra.mat := by
  rw [incomingLink461, outgoingLink461]
  exact CofiberE2Batches.Batch106.exact461valid.2
theorem incomingValid461 : CofiberE2Batches.Batch008.dependency696.Valid := CofiberE2Batches.Batch008.dependency696valid
theorem outgoingValid461 : CofiberE2Batches.Batch008.dependency697.Valid := CofiberE2Batches.Batch008.dependency697valid
theorem incomingLink462 : CofiberE2Batches.Batch008.dependency698.algebra.mat = CofiberE2Batches.Batch106.exact462.a := by decide
theorem outgoingLink462 : CofiberE2Batches.Batch008.dependency699.algebra.mat = CofiberE2Batches.Batch106.exact462.b := by decide
theorem linkedExact462 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency699.algebra.mat CofiberE2Batches.Batch008.dependency698.algebra.mat := by
  rw [incomingLink462, outgoingLink462]
  exact CofiberE2Batches.Batch106.exact462valid.2
theorem incomingValid462 : CofiberE2Batches.Batch008.dependency698.Valid := CofiberE2Batches.Batch008.dependency698valid
theorem outgoingValid462 : CofiberE2Batches.Batch008.dependency699.Valid := CofiberE2Batches.Batch008.dependency699valid
theorem incomingLink463 : CofiberE2Batches.Batch008.dependency700.algebra.mat = CofiberE2Batches.Batch106.exact463.a := by decide
theorem outgoingLink463 : CofiberE2Batches.Batch008.dependency701.algebra.mat = CofiberE2Batches.Batch106.exact463.b := by decide
theorem linkedExact463 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency701.algebra.mat CofiberE2Batches.Batch008.dependency700.algebra.mat := by
  rw [incomingLink463, outgoingLink463]
  exact CofiberE2Batches.Batch106.exact463valid.2
theorem incomingValid463 : CofiberE2Batches.Batch008.dependency700.Valid := CofiberE2Batches.Batch008.dependency700valid
theorem outgoingValid463 : CofiberE2Batches.Batch008.dependency701.Valid := CofiberE2Batches.Batch008.dependency701valid
theorem incomingLink464 : CofiberE2Batches.Batch008.dependency702.algebra.mat = CofiberE2Batches.Batch106.exact464.a := by decide
theorem outgoingLink464 : CofiberE2Batches.Batch008.dependency703.algebra.mat = CofiberE2Batches.Batch106.exact464.b := by decide
theorem linkedExact464 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency703.algebra.mat CofiberE2Batches.Batch008.dependency702.algebra.mat := by
  rw [incomingLink464, outgoingLink464]
  exact CofiberE2Batches.Batch106.exact464valid.2
theorem incomingValid464 : CofiberE2Batches.Batch008.dependency702.Valid := CofiberE2Batches.Batch008.dependency702valid
theorem outgoingValid464 : CofiberE2Batches.Batch008.dependency703.Valid := CofiberE2Batches.Batch008.dependency703valid
theorem incomingLink465 : CofiberE2Batches.Batch008.dependency704.algebra.mat = CofiberE2Batches.Batch106.exact465.a := by decide
theorem outgoingLink465 : CofiberE2Batches.Batch008.dependency705.algebra.mat = CofiberE2Batches.Batch106.exact465.b := by decide
theorem linkedExact465 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency705.algebra.mat CofiberE2Batches.Batch008.dependency704.algebra.mat := by
  rw [incomingLink465, outgoingLink465]
  exact CofiberE2Batches.Batch106.exact465valid.2
theorem incomingValid465 : CofiberE2Batches.Batch008.dependency704.Valid := CofiberE2Batches.Batch008.dependency704valid
theorem outgoingValid465 : CofiberE2Batches.Batch008.dependency705.Valid := CofiberE2Batches.Batch008.dependency705valid
theorem incomingLink466 : CofiberE2Batches.Batch008.dependency706.algebra.mat = CofiberE2Batches.Batch106.exact466.a := by decide
theorem outgoingLink466 : CofiberE2Batches.Batch008.dependency707.algebra.mat = CofiberE2Batches.Batch106.exact466.b := by decide
theorem linkedExact466 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency707.algebra.mat CofiberE2Batches.Batch008.dependency706.algebra.mat := by
  rw [incomingLink466, outgoingLink466]
  exact CofiberE2Batches.Batch106.exact466valid.2
theorem incomingValid466 : CofiberE2Batches.Batch008.dependency706.Valid := CofiberE2Batches.Batch008.dependency706valid
theorem outgoingValid466 : CofiberE2Batches.Batch008.dependency707.Valid := CofiberE2Batches.Batch008.dependency707valid
theorem incomingLink467 : CofiberE2Batches.Batch008.dependency708.algebra.mat = CofiberE2Batches.Batch106.exact467.a := by decide
theorem outgoingLink467 : CofiberE2Batches.Batch008.dependency709.algebra.mat = CofiberE2Batches.Batch106.exact467.b := by decide
theorem linkedExact467 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency709.algebra.mat CofiberE2Batches.Batch008.dependency708.algebra.mat := by
  rw [incomingLink467, outgoingLink467]
  exact CofiberE2Batches.Batch106.exact467valid.2
theorem incomingValid467 : CofiberE2Batches.Batch008.dependency708.Valid := CofiberE2Batches.Batch008.dependency708valid
theorem outgoingValid467 : CofiberE2Batches.Batch008.dependency709.Valid := CofiberE2Batches.Batch008.dependency709valid
theorem incomingLink468 : CofiberE2Batches.Batch008.dependency710.algebra.mat = CofiberE2Batches.Batch106.exact468.a := by decide
theorem outgoingLink468 : CofiberE2Batches.Batch008.dependency711.algebra.mat = CofiberE2Batches.Batch106.exact468.b := by decide
theorem linkedExact468 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency711.algebra.mat CofiberE2Batches.Batch008.dependency710.algebra.mat := by
  rw [incomingLink468, outgoingLink468]
  exact CofiberE2Batches.Batch106.exact468valid.2
theorem incomingValid468 : CofiberE2Batches.Batch008.dependency710.Valid := CofiberE2Batches.Batch008.dependency710valid
theorem outgoingValid468 : CofiberE2Batches.Batch008.dependency711.Valid := CofiberE2Batches.Batch008.dependency711valid
theorem incomingLink469 : CofiberE2Batches.Batch008.dependency712.algebra.mat = CofiberE2Batches.Batch106.exact469.a := by decide
theorem outgoingLink469 : CofiberE2Batches.Batch008.dependency713.algebra.mat = CofiberE2Batches.Batch106.exact469.b := by decide
theorem linkedExact469 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency713.algebra.mat CofiberE2Batches.Batch008.dependency712.algebra.mat := by
  rw [incomingLink469, outgoingLink469]
  exact CofiberE2Batches.Batch106.exact469valid.2
theorem incomingValid469 : CofiberE2Batches.Batch008.dependency712.Valid := CofiberE2Batches.Batch008.dependency712valid
theorem outgoingValid469 : CofiberE2Batches.Batch008.dependency713.Valid := CofiberE2Batches.Batch008.dependency713valid
theorem incomingLink470 : CofiberE2Batches.Batch008.dependency714.algebra.mat = CofiberE2Batches.Batch106.exact470.a := by decide
theorem outgoingLink470 : CofiberE2Batches.Batch008.dependency715.algebra.mat = CofiberE2Batches.Batch106.exact470.b := by decide
theorem linkedExact470 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency715.algebra.mat CofiberE2Batches.Batch008.dependency714.algebra.mat := by
  rw [incomingLink470, outgoingLink470]
  exact CofiberE2Batches.Batch106.exact470valid.2
theorem incomingValid470 : CofiberE2Batches.Batch008.dependency714.Valid := CofiberE2Batches.Batch008.dependency714valid
theorem outgoingValid470 : CofiberE2Batches.Batch008.dependency715.Valid := CofiberE2Batches.Batch008.dependency715valid
theorem incomingLink471 : CofiberE2Batches.Batch008.dependency716.algebra.mat = CofiberE2Batches.Batch106.exact471.a := by decide
theorem outgoingLink471 : CofiberE2Batches.Batch008.dependency717.algebra.mat = CofiberE2Batches.Batch106.exact471.b := by decide
theorem linkedExact471 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency717.algebra.mat CofiberE2Batches.Batch008.dependency716.algebra.mat := by
  rw [incomingLink471, outgoingLink471]
  exact CofiberE2Batches.Batch106.exact471valid.2
theorem incomingValid471 : CofiberE2Batches.Batch008.dependency716.Valid := CofiberE2Batches.Batch008.dependency716valid
theorem outgoingValid471 : CofiberE2Batches.Batch008.dependency717.Valid := CofiberE2Batches.Batch008.dependency717valid
theorem incomingLink472 : CofiberE2Batches.Batch008.dependency718.algebra.mat = CofiberE2Batches.Batch106.exact472.a := by decide
theorem outgoingLink472 : CofiberE2Batches.Batch008.dependency719.algebra.mat = CofiberE2Batches.Batch106.exact472.b := by decide
theorem linkedExact472 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch008.dependency719.algebra.mat CofiberE2Batches.Batch008.dependency718.algebra.mat := by
  rw [incomingLink472, outgoingLink472]
  exact CofiberE2Batches.Batch106.exact472valid.2
theorem incomingValid472 : CofiberE2Batches.Batch008.dependency718.Valid := CofiberE2Batches.Batch008.dependency718valid
theorem outgoingValid472 : CofiberE2Batches.Batch008.dependency719.Valid := CofiberE2Batches.Batch008.dependency719valid
theorem incomingLink473 : CofiberE2Batches.Batch009.dependency720.algebra.mat = CofiberE2Batches.Batch106.exact473.a := by decide
theorem outgoingLink473 : CofiberE2Batches.Batch009.dependency721.algebra.mat = CofiberE2Batches.Batch106.exact473.b := by decide
theorem linkedExact473 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch009.dependency721.algebra.mat CofiberE2Batches.Batch009.dependency720.algebra.mat := by
  rw [incomingLink473, outgoingLink473]
  exact CofiberE2Batches.Batch106.exact473valid.2
theorem incomingValid473 : CofiberE2Batches.Batch009.dependency720.Valid := CofiberE2Batches.Batch009.dependency720valid
theorem outgoingValid473 : CofiberE2Batches.Batch009.dependency721.Valid := CofiberE2Batches.Batch009.dependency721valid
theorem incomingLink474 : CofiberE2Batches.Batch009.dependency722.algebra.mat = CofiberE2Batches.Batch106.exact474.a := by decide
theorem outgoingLink474 : CofiberE2Batches.Batch009.dependency723.algebra.mat = CofiberE2Batches.Batch106.exact474.b := by decide
theorem linkedExact474 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch009.dependency723.algebra.mat CofiberE2Batches.Batch009.dependency722.algebra.mat := by
  rw [incomingLink474, outgoingLink474]
  exact CofiberE2Batches.Batch106.exact474valid.2
theorem incomingValid474 : CofiberE2Batches.Batch009.dependency722.Valid := CofiberE2Batches.Batch009.dependency722valid
theorem outgoingValid474 : CofiberE2Batches.Batch009.dependency723.Valid := CofiberE2Batches.Batch009.dependency723valid
theorem incomingLink475 : CofiberE2Batches.Batch009.dependency724.algebra.mat = CofiberE2Batches.Batch106.exact475.a := by decide
theorem outgoingLink475 : CofiberE2Batches.Batch009.dependency725.algebra.mat = CofiberE2Batches.Batch106.exact475.b := by decide
theorem linkedExact475 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch009.dependency725.algebra.mat CofiberE2Batches.Batch009.dependency724.algebra.mat := by
  rw [incomingLink475, outgoingLink475]
  exact CofiberE2Batches.Batch106.exact475valid.2
theorem incomingValid475 : CofiberE2Batches.Batch009.dependency724.Valid := CofiberE2Batches.Batch009.dependency724valid
theorem outgoingValid475 : CofiberE2Batches.Batch009.dependency725.Valid := CofiberE2Batches.Batch009.dependency725valid
theorem incomingLink476 : CofiberE2Batches.Batch009.dependency726.algebra.mat = CofiberE2Batches.Batch106.exact476.a := by decide
theorem outgoingLink476 : CofiberE2Batches.Batch009.dependency727.algebra.mat = CofiberE2Batches.Batch106.exact476.b := by decide
theorem linkedExact476 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch009.dependency727.algebra.mat CofiberE2Batches.Batch009.dependency726.algebra.mat := by
  rw [incomingLink476, outgoingLink476]
  exact CofiberE2Batches.Batch106.exact476valid.2
theorem incomingValid476 : CofiberE2Batches.Batch009.dependency726.Valid := CofiberE2Batches.Batch009.dependency726valid
theorem outgoingValid476 : CofiberE2Batches.Batch009.dependency727.Valid := CofiberE2Batches.Batch009.dependency727valid
theorem incomingLink477 : CofiberE2Batches.Batch009.dependency728.algebra.mat = CofiberE2Batches.Batch106.exact477.a := by decide
theorem outgoingLink477 : CofiberE2Batches.Batch009.dependency729.algebra.mat = CofiberE2Batches.Batch106.exact477.b := by decide
theorem linkedExact477 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch009.dependency729.algebra.mat CofiberE2Batches.Batch009.dependency728.algebra.mat := by
  rw [incomingLink477, outgoingLink477]
  exact CofiberE2Batches.Batch106.exact477valid.2
theorem incomingValid477 : CofiberE2Batches.Batch009.dependency728.Valid := CofiberE2Batches.Batch009.dependency728valid
theorem outgoingValid477 : CofiberE2Batches.Batch009.dependency729.Valid := CofiberE2Batches.Batch009.dependency729valid
theorem incomingLink478 : CofiberE2Batches.Batch009.dependency730.algebra.mat = CofiberE2Batches.Batch106.exact478.a := by decide
theorem outgoingLink478 : CofiberE2Batches.Batch009.dependency731.algebra.mat = CofiberE2Batches.Batch106.exact478.b := by decide
theorem linkedExact478 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch009.dependency731.algebra.mat CofiberE2Batches.Batch009.dependency730.algebra.mat := by
  rw [incomingLink478, outgoingLink478]
  exact CofiberE2Batches.Batch106.exact478valid.2
theorem incomingValid478 : CofiberE2Batches.Batch009.dependency730.Valid := CofiberE2Batches.Batch009.dependency730valid
theorem outgoingValid478 : CofiberE2Batches.Batch009.dependency731.Valid := CofiberE2Batches.Batch009.dependency731valid
theorem incomingLink479 : CofiberE2Batches.Batch009.dependency732.algebra.mat = CofiberE2Batches.Batch106.exact479.a := by decide
theorem outgoingLink479 : CofiberE2Batches.Batch009.dependency733.algebra.mat = CofiberE2Batches.Batch106.exact479.b := by decide
theorem linkedExact479 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch009.dependency733.algebra.mat CofiberE2Batches.Batch009.dependency732.algebra.mat := by
  rw [incomingLink479, outgoingLink479]
  exact CofiberE2Batches.Batch106.exact479valid.2
theorem incomingValid479 : CofiberE2Batches.Batch009.dependency732.Valid := CofiberE2Batches.Batch009.dependency732valid
theorem outgoingValid479 : CofiberE2Batches.Batch009.dependency733.Valid := CofiberE2Batches.Batch009.dependency733valid
end CofiberLinkageBatches.Batch007
