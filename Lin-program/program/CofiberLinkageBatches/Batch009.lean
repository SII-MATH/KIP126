import CofiberE2Certificates.Linkage
import CofiberE2Batches.Batch009
import CofiberE2Batches.Batch010
import CofiberE2Batches.Batch011
import CofiberE2Batches.Batch107
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace CofiberLinkageBatches.Batch009
theorem incomingLink540 : CofiberE2Batches.Batch009.dependency775.algebra.mat = CofiberE2Batches.Batch107.exact540.a := by decide
theorem outgoingLink540 : CofiberE2Batches.Batch010.dependency811.algebra.mat = CofiberE2Batches.Batch107.exact540.b := by decide
theorem linkedExact540 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency811.algebra.mat CofiberE2Batches.Batch009.dependency775.algebra.mat := by
  rw [incomingLink540, outgoingLink540]
  exact CofiberE2Batches.Batch107.exact540valid.2
theorem incomingValid540 : CofiberE2Batches.Batch009.dependency775.Valid := CofiberE2Batches.Batch009.dependency775valid
theorem outgoingValid540 : CofiberE2Batches.Batch010.dependency811.Valid := CofiberE2Batches.Batch010.dependency811valid
theorem incomingLink541 : CofiberE2Batches.Batch009.dependency777.algebra.mat = CofiberE2Batches.Batch107.exact541.a := by decide
theorem outgoingLink541 : CofiberE2Batches.Batch010.dependency812.algebra.mat = CofiberE2Batches.Batch107.exact541.b := by decide
theorem linkedExact541 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency812.algebra.mat CofiberE2Batches.Batch009.dependency777.algebra.mat := by
  rw [incomingLink541, outgoingLink541]
  exact CofiberE2Batches.Batch107.exact541valid.2
theorem incomingValid541 : CofiberE2Batches.Batch009.dependency777.Valid := CofiberE2Batches.Batch009.dependency777valid
theorem outgoingValid541 : CofiberE2Batches.Batch010.dependency812.Valid := CofiberE2Batches.Batch010.dependency812valid
theorem incomingLink542 : CofiberE2Batches.Batch009.dependency780.algebra.mat = CofiberE2Batches.Batch107.exact542.a := by decide
theorem outgoingLink542 : CofiberE2Batches.Batch010.dependency813.algebra.mat = CofiberE2Batches.Batch107.exact542.b := by decide
theorem linkedExact542 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency813.algebra.mat CofiberE2Batches.Batch009.dependency780.algebra.mat := by
  rw [incomingLink542, outgoingLink542]
  exact CofiberE2Batches.Batch107.exact542valid.2
theorem incomingValid542 : CofiberE2Batches.Batch009.dependency780.Valid := CofiberE2Batches.Batch009.dependency780valid
theorem outgoingValid542 : CofiberE2Batches.Batch010.dependency813.Valid := CofiberE2Batches.Batch010.dependency813valid
theorem incomingLink543 : CofiberE2Batches.Batch010.dependency814.algebra.mat = CofiberE2Batches.Batch107.exact543.a := by decide
theorem outgoingLink543 : CofiberE2Batches.Batch010.dependency815.algebra.mat = CofiberE2Batches.Batch107.exact543.b := by decide
theorem linkedExact543 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency815.algebra.mat CofiberE2Batches.Batch010.dependency814.algebra.mat := by
  rw [incomingLink543, outgoingLink543]
  exact CofiberE2Batches.Batch107.exact543valid.2
theorem incomingValid543 : CofiberE2Batches.Batch010.dependency814.Valid := CofiberE2Batches.Batch010.dependency814valid
theorem outgoingValid543 : CofiberE2Batches.Batch010.dependency815.Valid := CofiberE2Batches.Batch010.dependency815valid
theorem incomingLink544 : CofiberE2Batches.Batch009.dependency783.algebra.mat = CofiberE2Batches.Batch107.exact544.a := by decide
theorem outgoingLink544 : CofiberE2Batches.Batch010.dependency816.algebra.mat = CofiberE2Batches.Batch107.exact544.b := by decide
theorem linkedExact544 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency816.algebra.mat CofiberE2Batches.Batch009.dependency783.algebra.mat := by
  rw [incomingLink544, outgoingLink544]
  exact CofiberE2Batches.Batch107.exact544valid.2
theorem incomingValid544 : CofiberE2Batches.Batch009.dependency783.Valid := CofiberE2Batches.Batch009.dependency783valid
theorem outgoingValid544 : CofiberE2Batches.Batch010.dependency816.Valid := CofiberE2Batches.Batch010.dependency816valid
theorem incomingLink545 : CofiberE2Batches.Batch010.dependency817.algebra.mat = CofiberE2Batches.Batch107.exact545.a := by decide
theorem outgoingLink545 : CofiberE2Batches.Batch010.dependency818.algebra.mat = CofiberE2Batches.Batch107.exact545.b := by decide
theorem linkedExact545 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency818.algebra.mat CofiberE2Batches.Batch010.dependency817.algebra.mat := by
  rw [incomingLink545, outgoingLink545]
  exact CofiberE2Batches.Batch107.exact545valid.2
theorem incomingValid545 : CofiberE2Batches.Batch010.dependency817.Valid := CofiberE2Batches.Batch010.dependency817valid
theorem outgoingValid545 : CofiberE2Batches.Batch010.dependency818.Valid := CofiberE2Batches.Batch010.dependency818valid
theorem incomingLink546 : CofiberE2Batches.Batch009.dependency786.algebra.mat = CofiberE2Batches.Batch107.exact546.a := by decide
theorem outgoingLink546 : CofiberE2Batches.Batch010.dependency819.algebra.mat = CofiberE2Batches.Batch107.exact546.b := by decide
theorem linkedExact546 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency819.algebra.mat CofiberE2Batches.Batch009.dependency786.algebra.mat := by
  rw [incomingLink546, outgoingLink546]
  exact CofiberE2Batches.Batch107.exact546valid.2
theorem incomingValid546 : CofiberE2Batches.Batch009.dependency786.Valid := CofiberE2Batches.Batch009.dependency786valid
theorem outgoingValid546 : CofiberE2Batches.Batch010.dependency819.Valid := CofiberE2Batches.Batch010.dependency819valid
theorem incomingLink547 : CofiberE2Batches.Batch009.dependency789.algebra.mat = CofiberE2Batches.Batch107.exact547.a := by decide
theorem outgoingLink547 : CofiberE2Batches.Batch010.dependency820.algebra.mat = CofiberE2Batches.Batch107.exact547.b := by decide
theorem linkedExact547 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency820.algebra.mat CofiberE2Batches.Batch009.dependency789.algebra.mat := by
  rw [incomingLink547, outgoingLink547]
  exact CofiberE2Batches.Batch107.exact547valid.2
theorem incomingValid547 : CofiberE2Batches.Batch009.dependency789.Valid := CofiberE2Batches.Batch009.dependency789valid
theorem outgoingValid547 : CofiberE2Batches.Batch010.dependency820.Valid := CofiberE2Batches.Batch010.dependency820valid
theorem incomingLink548 : CofiberE2Batches.Batch010.dependency821.algebra.mat = CofiberE2Batches.Batch107.exact548.a := by decide
theorem outgoingLink548 : CofiberE2Batches.Batch010.dependency822.algebra.mat = CofiberE2Batches.Batch107.exact548.b := by decide
theorem linkedExact548 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency822.algebra.mat CofiberE2Batches.Batch010.dependency821.algebra.mat := by
  rw [incomingLink548, outgoingLink548]
  exact CofiberE2Batches.Batch107.exact548valid.2
theorem incomingValid548 : CofiberE2Batches.Batch010.dependency821.Valid := CofiberE2Batches.Batch010.dependency821valid
theorem outgoingValid548 : CofiberE2Batches.Batch010.dependency822.Valid := CofiberE2Batches.Batch010.dependency822valid
theorem incomingLink549 : CofiberE2Batches.Batch010.dependency823.algebra.mat = CofiberE2Batches.Batch107.exact549.a := by decide
theorem outgoingLink549 : CofiberE2Batches.Batch010.dependency824.algebra.mat = CofiberE2Batches.Batch107.exact549.b := by decide
theorem linkedExact549 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency824.algebra.mat CofiberE2Batches.Batch010.dependency823.algebra.mat := by
  rw [incomingLink549, outgoingLink549]
  exact CofiberE2Batches.Batch107.exact549valid.2
theorem incomingValid549 : CofiberE2Batches.Batch010.dependency823.Valid := CofiberE2Batches.Batch010.dependency823valid
theorem outgoingValid549 : CofiberE2Batches.Batch010.dependency824.Valid := CofiberE2Batches.Batch010.dependency824valid
theorem incomingLink550 : CofiberE2Batches.Batch010.dependency825.algebra.mat = CofiberE2Batches.Batch107.exact550.a := by decide
theorem outgoingLink550 : CofiberE2Batches.Batch010.dependency826.algebra.mat = CofiberE2Batches.Batch107.exact550.b := by decide
theorem linkedExact550 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency826.algebra.mat CofiberE2Batches.Batch010.dependency825.algebra.mat := by
  rw [incomingLink550, outgoingLink550]
  exact CofiberE2Batches.Batch107.exact550valid.2
theorem incomingValid550 : CofiberE2Batches.Batch010.dependency825.Valid := CofiberE2Batches.Batch010.dependency825valid
theorem outgoingValid550 : CofiberE2Batches.Batch010.dependency826.Valid := CofiberE2Batches.Batch010.dependency826valid
theorem incomingLink551 : CofiberE2Batches.Batch010.dependency827.algebra.mat = CofiberE2Batches.Batch107.exact551.a := by decide
theorem outgoingLink551 : CofiberE2Batches.Batch010.dependency828.algebra.mat = CofiberE2Batches.Batch107.exact551.b := by decide
theorem linkedExact551 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency828.algebra.mat CofiberE2Batches.Batch010.dependency827.algebra.mat := by
  rw [incomingLink551, outgoingLink551]
  exact CofiberE2Batches.Batch107.exact551valid.2
theorem incomingValid551 : CofiberE2Batches.Batch010.dependency827.Valid := CofiberE2Batches.Batch010.dependency827valid
theorem outgoingValid551 : CofiberE2Batches.Batch010.dependency828.Valid := CofiberE2Batches.Batch010.dependency828valid
theorem incomingLink552 : CofiberE2Batches.Batch010.dependency829.algebra.mat = CofiberE2Batches.Batch107.exact552.a := by decide
theorem outgoingLink552 : CofiberE2Batches.Batch010.dependency830.algebra.mat = CofiberE2Batches.Batch107.exact552.b := by decide
theorem linkedExact552 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency830.algebra.mat CofiberE2Batches.Batch010.dependency829.algebra.mat := by
  rw [incomingLink552, outgoingLink552]
  exact CofiberE2Batches.Batch107.exact552valid.2
theorem incomingValid552 : CofiberE2Batches.Batch010.dependency829.Valid := CofiberE2Batches.Batch010.dependency829valid
theorem outgoingValid552 : CofiberE2Batches.Batch010.dependency830.Valid := CofiberE2Batches.Batch010.dependency830valid
theorem incomingLink553 : CofiberE2Batches.Batch010.dependency831.algebra.mat = CofiberE2Batches.Batch107.exact553.a := by decide
theorem outgoingLink553 : CofiberE2Batches.Batch010.dependency832.algebra.mat = CofiberE2Batches.Batch107.exact553.b := by decide
theorem linkedExact553 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency832.algebra.mat CofiberE2Batches.Batch010.dependency831.algebra.mat := by
  rw [incomingLink553, outgoingLink553]
  exact CofiberE2Batches.Batch107.exact553valid.2
theorem incomingValid553 : CofiberE2Batches.Batch010.dependency831.Valid := CofiberE2Batches.Batch010.dependency831valid
theorem outgoingValid553 : CofiberE2Batches.Batch010.dependency832.Valid := CofiberE2Batches.Batch010.dependency832valid
theorem incomingLink554 : CofiberE2Batches.Batch010.dependency833.algebra.mat = CofiberE2Batches.Batch107.exact554.a := by decide
theorem outgoingLink554 : CofiberE2Batches.Batch010.dependency834.algebra.mat = CofiberE2Batches.Batch107.exact554.b := by decide
theorem linkedExact554 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency834.algebra.mat CofiberE2Batches.Batch010.dependency833.algebra.mat := by
  rw [incomingLink554, outgoingLink554]
  exact CofiberE2Batches.Batch107.exact554valid.2
theorem incomingValid554 : CofiberE2Batches.Batch010.dependency833.Valid := CofiberE2Batches.Batch010.dependency833valid
theorem outgoingValid554 : CofiberE2Batches.Batch010.dependency834.Valid := CofiberE2Batches.Batch010.dependency834valid
theorem incomingLink555 : CofiberE2Batches.Batch010.dependency835.algebra.mat = CofiberE2Batches.Batch107.exact555.a := by decide
theorem outgoingLink555 : CofiberE2Batches.Batch010.dependency836.algebra.mat = CofiberE2Batches.Batch107.exact555.b := by decide
theorem linkedExact555 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency836.algebra.mat CofiberE2Batches.Batch010.dependency835.algebra.mat := by
  rw [incomingLink555, outgoingLink555]
  exact CofiberE2Batches.Batch107.exact555valid.2
theorem incomingValid555 : CofiberE2Batches.Batch010.dependency835.Valid := CofiberE2Batches.Batch010.dependency835valid
theorem outgoingValid555 : CofiberE2Batches.Batch010.dependency836.Valid := CofiberE2Batches.Batch010.dependency836valid
theorem incomingLink556 : CofiberE2Batches.Batch010.dependency837.algebra.mat = CofiberE2Batches.Batch107.exact556.a := by decide
theorem outgoingLink556 : CofiberE2Batches.Batch010.dependency838.algebra.mat = CofiberE2Batches.Batch107.exact556.b := by decide
theorem linkedExact556 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency838.algebra.mat CofiberE2Batches.Batch010.dependency837.algebra.mat := by
  rw [incomingLink556, outgoingLink556]
  exact CofiberE2Batches.Batch107.exact556valid.2
theorem incomingValid556 : CofiberE2Batches.Batch010.dependency837.Valid := CofiberE2Batches.Batch010.dependency837valid
theorem outgoingValid556 : CofiberE2Batches.Batch010.dependency838.Valid := CofiberE2Batches.Batch010.dependency838valid
theorem incomingLink557 : CofiberE2Batches.Batch010.dependency839.algebra.mat = CofiberE2Batches.Batch107.exact557.a := by decide
theorem outgoingLink557 : CofiberE2Batches.Batch010.dependency840.algebra.mat = CofiberE2Batches.Batch107.exact557.b := by decide
theorem linkedExact557 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency840.algebra.mat CofiberE2Batches.Batch010.dependency839.algebra.mat := by
  rw [incomingLink557, outgoingLink557]
  exact CofiberE2Batches.Batch107.exact557valid.2
theorem incomingValid557 : CofiberE2Batches.Batch010.dependency839.Valid := CofiberE2Batches.Batch010.dependency839valid
theorem outgoingValid557 : CofiberE2Batches.Batch010.dependency840.Valid := CofiberE2Batches.Batch010.dependency840valid
theorem incomingLink558 : CofiberE2Batches.Batch010.dependency841.algebra.mat = CofiberE2Batches.Batch107.exact558.a := by decide
theorem outgoingLink558 : CofiberE2Batches.Batch010.dependency842.algebra.mat = CofiberE2Batches.Batch107.exact558.b := by decide
theorem linkedExact558 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency842.algebra.mat CofiberE2Batches.Batch010.dependency841.algebra.mat := by
  rw [incomingLink558, outgoingLink558]
  exact CofiberE2Batches.Batch107.exact558valid.2
theorem incomingValid558 : CofiberE2Batches.Batch010.dependency841.Valid := CofiberE2Batches.Batch010.dependency841valid
theorem outgoingValid558 : CofiberE2Batches.Batch010.dependency842.Valid := CofiberE2Batches.Batch010.dependency842valid
theorem incomingLink559 : CofiberE2Batches.Batch010.dependency843.algebra.mat = CofiberE2Batches.Batch107.exact559.a := by decide
theorem outgoingLink559 : CofiberE2Batches.Batch010.dependency844.algebra.mat = CofiberE2Batches.Batch107.exact559.b := by decide
theorem linkedExact559 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency844.algebra.mat CofiberE2Batches.Batch010.dependency843.algebra.mat := by
  rw [incomingLink559, outgoingLink559]
  exact CofiberE2Batches.Batch107.exact559valid.2
theorem incomingValid559 : CofiberE2Batches.Batch010.dependency843.Valid := CofiberE2Batches.Batch010.dependency843valid
theorem outgoingValid559 : CofiberE2Batches.Batch010.dependency844.Valid := CofiberE2Batches.Batch010.dependency844valid
theorem incomingLink560 : CofiberE2Batches.Batch010.dependency845.algebra.mat = CofiberE2Batches.Batch107.exact560.a := by decide
theorem outgoingLink560 : CofiberE2Batches.Batch010.dependency846.algebra.mat = CofiberE2Batches.Batch107.exact560.b := by decide
theorem linkedExact560 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency846.algebra.mat CofiberE2Batches.Batch010.dependency845.algebra.mat := by
  rw [incomingLink560, outgoingLink560]
  exact CofiberE2Batches.Batch107.exact560valid.2
theorem incomingValid560 : CofiberE2Batches.Batch010.dependency845.Valid := CofiberE2Batches.Batch010.dependency845valid
theorem outgoingValid560 : CofiberE2Batches.Batch010.dependency846.Valid := CofiberE2Batches.Batch010.dependency846valid
theorem incomingLink561 : CofiberE2Batches.Batch010.dependency847.algebra.mat = CofiberE2Batches.Batch107.exact561.a := by decide
theorem outgoingLink561 : CofiberE2Batches.Batch010.dependency848.algebra.mat = CofiberE2Batches.Batch107.exact561.b := by decide
theorem linkedExact561 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency848.algebra.mat CofiberE2Batches.Batch010.dependency847.algebra.mat := by
  rw [incomingLink561, outgoingLink561]
  exact CofiberE2Batches.Batch107.exact561valid.2
theorem incomingValid561 : CofiberE2Batches.Batch010.dependency847.Valid := CofiberE2Batches.Batch010.dependency847valid
theorem outgoingValid561 : CofiberE2Batches.Batch010.dependency848.Valid := CofiberE2Batches.Batch010.dependency848valid
theorem incomingLink562 : CofiberE2Batches.Batch010.dependency849.algebra.mat = CofiberE2Batches.Batch107.exact562.a := by decide
theorem outgoingLink562 : CofiberE2Batches.Batch010.dependency850.algebra.mat = CofiberE2Batches.Batch107.exact562.b := by decide
theorem linkedExact562 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency850.algebra.mat CofiberE2Batches.Batch010.dependency849.algebra.mat := by
  rw [incomingLink562, outgoingLink562]
  exact CofiberE2Batches.Batch107.exact562valid.2
theorem incomingValid562 : CofiberE2Batches.Batch010.dependency849.Valid := CofiberE2Batches.Batch010.dependency849valid
theorem outgoingValid562 : CofiberE2Batches.Batch010.dependency850.Valid := CofiberE2Batches.Batch010.dependency850valid
theorem incomingLink563 : CofiberE2Batches.Batch010.dependency851.algebra.mat = CofiberE2Batches.Batch107.exact563.a := by decide
theorem outgoingLink563 : CofiberE2Batches.Batch010.dependency852.algebra.mat = CofiberE2Batches.Batch107.exact563.b := by decide
theorem linkedExact563 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency852.algebra.mat CofiberE2Batches.Batch010.dependency851.algebra.mat := by
  rw [incomingLink563, outgoingLink563]
  exact CofiberE2Batches.Batch107.exact563valid.2
theorem incomingValid563 : CofiberE2Batches.Batch010.dependency851.Valid := CofiberE2Batches.Batch010.dependency851valid
theorem outgoingValid563 : CofiberE2Batches.Batch010.dependency852.Valid := CofiberE2Batches.Batch010.dependency852valid
theorem incomingLink564 : CofiberE2Batches.Batch010.dependency853.algebra.mat = CofiberE2Batches.Batch107.exact564.a := by decide
theorem outgoingLink564 : CofiberE2Batches.Batch010.dependency854.algebra.mat = CofiberE2Batches.Batch107.exact564.b := by decide
theorem linkedExact564 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency854.algebra.mat CofiberE2Batches.Batch010.dependency853.algebra.mat := by
  rw [incomingLink564, outgoingLink564]
  exact CofiberE2Batches.Batch107.exact564valid.2
theorem incomingValid564 : CofiberE2Batches.Batch010.dependency853.Valid := CofiberE2Batches.Batch010.dependency853valid
theorem outgoingValid564 : CofiberE2Batches.Batch010.dependency854.Valid := CofiberE2Batches.Batch010.dependency854valid
theorem incomingLink565 : CofiberE2Batches.Batch010.dependency855.algebra.mat = CofiberE2Batches.Batch107.exact565.a := by decide
theorem outgoingLink565 : CofiberE2Batches.Batch010.dependency856.algebra.mat = CofiberE2Batches.Batch107.exact565.b := by decide
theorem linkedExact565 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency856.algebra.mat CofiberE2Batches.Batch010.dependency855.algebra.mat := by
  rw [incomingLink565, outgoingLink565]
  exact CofiberE2Batches.Batch107.exact565valid.2
theorem incomingValid565 : CofiberE2Batches.Batch010.dependency855.Valid := CofiberE2Batches.Batch010.dependency855valid
theorem outgoingValid565 : CofiberE2Batches.Batch010.dependency856.Valid := CofiberE2Batches.Batch010.dependency856valid
theorem incomingLink566 : CofiberE2Batches.Batch010.dependency857.algebra.mat = CofiberE2Batches.Batch107.exact566.a := by decide
theorem outgoingLink566 : CofiberE2Batches.Batch010.dependency858.algebra.mat = CofiberE2Batches.Batch107.exact566.b := by decide
theorem linkedExact566 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency858.algebra.mat CofiberE2Batches.Batch010.dependency857.algebra.mat := by
  rw [incomingLink566, outgoingLink566]
  exact CofiberE2Batches.Batch107.exact566valid.2
theorem incomingValid566 : CofiberE2Batches.Batch010.dependency857.Valid := CofiberE2Batches.Batch010.dependency857valid
theorem outgoingValid566 : CofiberE2Batches.Batch010.dependency858.Valid := CofiberE2Batches.Batch010.dependency858valid
theorem incomingLink567 : CofiberE2Batches.Batch010.dependency859.algebra.mat = CofiberE2Batches.Batch107.exact567.a := by decide
theorem outgoingLink567 : CofiberE2Batches.Batch010.dependency860.algebra.mat = CofiberE2Batches.Batch107.exact567.b := by decide
theorem linkedExact567 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency860.algebra.mat CofiberE2Batches.Batch010.dependency859.algebra.mat := by
  rw [incomingLink567, outgoingLink567]
  exact CofiberE2Batches.Batch107.exact567valid.2
theorem incomingValid567 : CofiberE2Batches.Batch010.dependency859.Valid := CofiberE2Batches.Batch010.dependency859valid
theorem outgoingValid567 : CofiberE2Batches.Batch010.dependency860.Valid := CofiberE2Batches.Batch010.dependency860valid
theorem incomingLink568 : CofiberE2Batches.Batch010.dependency861.algebra.mat = CofiberE2Batches.Batch107.exact568.a := by decide
theorem outgoingLink568 : CofiberE2Batches.Batch010.dependency862.algebra.mat = CofiberE2Batches.Batch107.exact568.b := by decide
theorem linkedExact568 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency862.algebra.mat CofiberE2Batches.Batch010.dependency861.algebra.mat := by
  rw [incomingLink568, outgoingLink568]
  exact CofiberE2Batches.Batch107.exact568valid.2
theorem incomingValid568 : CofiberE2Batches.Batch010.dependency861.Valid := CofiberE2Batches.Batch010.dependency861valid
theorem outgoingValid568 : CofiberE2Batches.Batch010.dependency862.Valid := CofiberE2Batches.Batch010.dependency862valid
theorem incomingLink569 : CofiberE2Batches.Batch010.dependency863.algebra.mat = CofiberE2Batches.Batch107.exact569.a := by decide
theorem outgoingLink569 : CofiberE2Batches.Batch010.dependency864.algebra.mat = CofiberE2Batches.Batch107.exact569.b := by decide
theorem linkedExact569 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency864.algebra.mat CofiberE2Batches.Batch010.dependency863.algebra.mat := by
  rw [incomingLink569, outgoingLink569]
  exact CofiberE2Batches.Batch107.exact569valid.2
theorem incomingValid569 : CofiberE2Batches.Batch010.dependency863.Valid := CofiberE2Batches.Batch010.dependency863valid
theorem outgoingValid569 : CofiberE2Batches.Batch010.dependency864.Valid := CofiberE2Batches.Batch010.dependency864valid
theorem incomingLink570 : CofiberE2Batches.Batch010.dependency865.algebra.mat = CofiberE2Batches.Batch107.exact570.a := by decide
theorem outgoingLink570 : CofiberE2Batches.Batch010.dependency866.algebra.mat = CofiberE2Batches.Batch107.exact570.b := by decide
theorem linkedExact570 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency866.algebra.mat CofiberE2Batches.Batch010.dependency865.algebra.mat := by
  rw [incomingLink570, outgoingLink570]
  exact CofiberE2Batches.Batch107.exact570valid.2
theorem incomingValid570 : CofiberE2Batches.Batch010.dependency865.Valid := CofiberE2Batches.Batch010.dependency865valid
theorem outgoingValid570 : CofiberE2Batches.Batch010.dependency866.Valid := CofiberE2Batches.Batch010.dependency866valid
theorem incomingLink571 : CofiberE2Batches.Batch010.dependency867.algebra.mat = CofiberE2Batches.Batch107.exact571.a := by decide
theorem outgoingLink571 : CofiberE2Batches.Batch010.dependency868.algebra.mat = CofiberE2Batches.Batch107.exact571.b := by decide
theorem linkedExact571 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency868.algebra.mat CofiberE2Batches.Batch010.dependency867.algebra.mat := by
  rw [incomingLink571, outgoingLink571]
  exact CofiberE2Batches.Batch107.exact571valid.2
theorem incomingValid571 : CofiberE2Batches.Batch010.dependency867.Valid := CofiberE2Batches.Batch010.dependency867valid
theorem outgoingValid571 : CofiberE2Batches.Batch010.dependency868.Valid := CofiberE2Batches.Batch010.dependency868valid
theorem incomingLink572 : CofiberE2Batches.Batch010.dependency869.algebra.mat = CofiberE2Batches.Batch107.exact572.a := by decide
theorem outgoingLink572 : CofiberE2Batches.Batch010.dependency870.algebra.mat = CofiberE2Batches.Batch107.exact572.b := by decide
theorem linkedExact572 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency870.algebra.mat CofiberE2Batches.Batch010.dependency869.algebra.mat := by
  rw [incomingLink572, outgoingLink572]
  exact CofiberE2Batches.Batch107.exact572valid.2
theorem incomingValid572 : CofiberE2Batches.Batch010.dependency869.Valid := CofiberE2Batches.Batch010.dependency869valid
theorem outgoingValid572 : CofiberE2Batches.Batch010.dependency870.Valid := CofiberE2Batches.Batch010.dependency870valid
theorem incomingLink573 : CofiberE2Batches.Batch010.dependency871.algebra.mat = CofiberE2Batches.Batch107.exact573.a := by decide
theorem outgoingLink573 : CofiberE2Batches.Batch010.dependency872.algebra.mat = CofiberE2Batches.Batch107.exact573.b := by decide
theorem linkedExact573 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency872.algebra.mat CofiberE2Batches.Batch010.dependency871.algebra.mat := by
  rw [incomingLink573, outgoingLink573]
  exact CofiberE2Batches.Batch107.exact573valid.2
theorem incomingValid573 : CofiberE2Batches.Batch010.dependency871.Valid := CofiberE2Batches.Batch010.dependency871valid
theorem outgoingValid573 : CofiberE2Batches.Batch010.dependency872.Valid := CofiberE2Batches.Batch010.dependency872valid
theorem incomingLink574 : CofiberE2Batches.Batch010.dependency873.algebra.mat = CofiberE2Batches.Batch107.exact574.a := by decide
theorem outgoingLink574 : CofiberE2Batches.Batch010.dependency874.algebra.mat = CofiberE2Batches.Batch107.exact574.b := by decide
theorem linkedExact574 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency874.algebra.mat CofiberE2Batches.Batch010.dependency873.algebra.mat := by
  rw [incomingLink574, outgoingLink574]
  exact CofiberE2Batches.Batch107.exact574valid.2
theorem incomingValid574 : CofiberE2Batches.Batch010.dependency873.Valid := CofiberE2Batches.Batch010.dependency873valid
theorem outgoingValid574 : CofiberE2Batches.Batch010.dependency874.Valid := CofiberE2Batches.Batch010.dependency874valid
theorem incomingLink575 : CofiberE2Batches.Batch010.dependency875.algebra.mat = CofiberE2Batches.Batch107.exact575.a := by decide
theorem outgoingLink575 : CofiberE2Batches.Batch010.dependency876.algebra.mat = CofiberE2Batches.Batch107.exact575.b := by decide
theorem linkedExact575 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency876.algebra.mat CofiberE2Batches.Batch010.dependency875.algebra.mat := by
  rw [incomingLink575, outgoingLink575]
  exact CofiberE2Batches.Batch107.exact575valid.2
theorem incomingValid575 : CofiberE2Batches.Batch010.dependency875.Valid := CofiberE2Batches.Batch010.dependency875valid
theorem outgoingValid575 : CofiberE2Batches.Batch010.dependency876.Valid := CofiberE2Batches.Batch010.dependency876valid
theorem incomingLink576 : CofiberE2Batches.Batch010.dependency877.algebra.mat = CofiberE2Batches.Batch107.exact576.a := by decide
theorem outgoingLink576 : CofiberE2Batches.Batch010.dependency878.algebra.mat = CofiberE2Batches.Batch107.exact576.b := by decide
theorem linkedExact576 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch010.dependency878.algebra.mat CofiberE2Batches.Batch010.dependency877.algebra.mat := by
  rw [incomingLink576, outgoingLink576]
  exact CofiberE2Batches.Batch107.exact576valid.2
theorem incomingValid576 : CofiberE2Batches.Batch010.dependency877.Valid := CofiberE2Batches.Batch010.dependency877valid
theorem outgoingValid576 : CofiberE2Batches.Batch010.dependency878.Valid := CofiberE2Batches.Batch010.dependency878valid
theorem incomingLink577 : CofiberE2Batches.Batch010.dependency879.algebra.mat = CofiberE2Batches.Batch107.exact577.a := by decide
theorem outgoingLink577 : CofiberE2Batches.Batch011.dependency880.algebra.mat = CofiberE2Batches.Batch107.exact577.b := by decide
theorem linkedExact577 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency880.algebra.mat CofiberE2Batches.Batch010.dependency879.algebra.mat := by
  rw [incomingLink577, outgoingLink577]
  exact CofiberE2Batches.Batch107.exact577valid.2
theorem incomingValid577 : CofiberE2Batches.Batch010.dependency879.Valid := CofiberE2Batches.Batch010.dependency879valid
theorem outgoingValid577 : CofiberE2Batches.Batch011.dependency880.Valid := CofiberE2Batches.Batch011.dependency880valid
theorem incomingLink578 : CofiberE2Batches.Batch011.dependency881.algebra.mat = CofiberE2Batches.Batch107.exact578.a := by decide
theorem outgoingLink578 : CofiberE2Batches.Batch011.dependency882.algebra.mat = CofiberE2Batches.Batch107.exact578.b := by decide
theorem linkedExact578 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency882.algebra.mat CofiberE2Batches.Batch011.dependency881.algebra.mat := by
  rw [incomingLink578, outgoingLink578]
  exact CofiberE2Batches.Batch107.exact578valid.2
theorem incomingValid578 : CofiberE2Batches.Batch011.dependency881.Valid := CofiberE2Batches.Batch011.dependency881valid
theorem outgoingValid578 : CofiberE2Batches.Batch011.dependency882.Valid := CofiberE2Batches.Batch011.dependency882valid
theorem incomingLink579 : CofiberE2Batches.Batch011.dependency883.algebra.mat = CofiberE2Batches.Batch107.exact579.a := by decide
theorem outgoingLink579 : CofiberE2Batches.Batch011.dependency884.algebra.mat = CofiberE2Batches.Batch107.exact579.b := by decide
theorem linkedExact579 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency884.algebra.mat CofiberE2Batches.Batch011.dependency883.algebra.mat := by
  rw [incomingLink579, outgoingLink579]
  exact CofiberE2Batches.Batch107.exact579valid.2
theorem incomingValid579 : CofiberE2Batches.Batch011.dependency883.Valid := CofiberE2Batches.Batch011.dependency883valid
theorem outgoingValid579 : CofiberE2Batches.Batch011.dependency884.Valid := CofiberE2Batches.Batch011.dependency884valid
theorem incomingLink580 : CofiberE2Batches.Batch011.dependency885.algebra.mat = CofiberE2Batches.Batch107.exact580.a := by decide
theorem outgoingLink580 : CofiberE2Batches.Batch011.dependency886.algebra.mat = CofiberE2Batches.Batch107.exact580.b := by decide
theorem linkedExact580 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency886.algebra.mat CofiberE2Batches.Batch011.dependency885.algebra.mat := by
  rw [incomingLink580, outgoingLink580]
  exact CofiberE2Batches.Batch107.exact580valid.2
theorem incomingValid580 : CofiberE2Batches.Batch011.dependency885.Valid := CofiberE2Batches.Batch011.dependency885valid
theorem outgoingValid580 : CofiberE2Batches.Batch011.dependency886.Valid := CofiberE2Batches.Batch011.dependency886valid
theorem incomingLink581 : CofiberE2Batches.Batch011.dependency887.algebra.mat = CofiberE2Batches.Batch107.exact581.a := by decide
theorem outgoingLink581 : CofiberE2Batches.Batch011.dependency888.algebra.mat = CofiberE2Batches.Batch107.exact581.b := by decide
theorem linkedExact581 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency888.algebra.mat CofiberE2Batches.Batch011.dependency887.algebra.mat := by
  rw [incomingLink581, outgoingLink581]
  exact CofiberE2Batches.Batch107.exact581valid.2
theorem incomingValid581 : CofiberE2Batches.Batch011.dependency887.Valid := CofiberE2Batches.Batch011.dependency887valid
theorem outgoingValid581 : CofiberE2Batches.Batch011.dependency888.Valid := CofiberE2Batches.Batch011.dependency888valid
theorem incomingLink582 : CofiberE2Batches.Batch011.dependency889.algebra.mat = CofiberE2Batches.Batch107.exact582.a := by decide
theorem outgoingLink582 : CofiberE2Batches.Batch011.dependency890.algebra.mat = CofiberE2Batches.Batch107.exact582.b := by decide
theorem linkedExact582 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency890.algebra.mat CofiberE2Batches.Batch011.dependency889.algebra.mat := by
  rw [incomingLink582, outgoingLink582]
  exact CofiberE2Batches.Batch107.exact582valid.2
theorem incomingValid582 : CofiberE2Batches.Batch011.dependency889.Valid := CofiberE2Batches.Batch011.dependency889valid
theorem outgoingValid582 : CofiberE2Batches.Batch011.dependency890.Valid := CofiberE2Batches.Batch011.dependency890valid
theorem incomingLink583 : CofiberE2Batches.Batch011.dependency891.algebra.mat = CofiberE2Batches.Batch107.exact583.a := by decide
theorem outgoingLink583 : CofiberE2Batches.Batch011.dependency892.algebra.mat = CofiberE2Batches.Batch107.exact583.b := by decide
theorem linkedExact583 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency892.algebra.mat CofiberE2Batches.Batch011.dependency891.algebra.mat := by
  rw [incomingLink583, outgoingLink583]
  exact CofiberE2Batches.Batch107.exact583valid.2
theorem incomingValid583 : CofiberE2Batches.Batch011.dependency891.Valid := CofiberE2Batches.Batch011.dependency891valid
theorem outgoingValid583 : CofiberE2Batches.Batch011.dependency892.Valid := CofiberE2Batches.Batch011.dependency892valid
theorem incomingLink584 : CofiberE2Batches.Batch011.dependency893.algebra.mat = CofiberE2Batches.Batch107.exact584.a := by decide
theorem outgoingLink584 : CofiberE2Batches.Batch011.dependency894.algebra.mat = CofiberE2Batches.Batch107.exact584.b := by decide
theorem linkedExact584 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency894.algebra.mat CofiberE2Batches.Batch011.dependency893.algebra.mat := by
  rw [incomingLink584, outgoingLink584]
  exact CofiberE2Batches.Batch107.exact584valid.2
theorem incomingValid584 : CofiberE2Batches.Batch011.dependency893.Valid := CofiberE2Batches.Batch011.dependency893valid
theorem outgoingValid584 : CofiberE2Batches.Batch011.dependency894.Valid := CofiberE2Batches.Batch011.dependency894valid
theorem incomingLink585 : CofiberE2Batches.Batch011.dependency895.algebra.mat = CofiberE2Batches.Batch107.exact585.a := by decide
theorem outgoingLink585 : CofiberE2Batches.Batch011.dependency896.algebra.mat = CofiberE2Batches.Batch107.exact585.b := by decide
theorem linkedExact585 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency896.algebra.mat CofiberE2Batches.Batch011.dependency895.algebra.mat := by
  rw [incomingLink585, outgoingLink585]
  exact CofiberE2Batches.Batch107.exact585valid.2
theorem incomingValid585 : CofiberE2Batches.Batch011.dependency895.Valid := CofiberE2Batches.Batch011.dependency895valid
theorem outgoingValid585 : CofiberE2Batches.Batch011.dependency896.Valid := CofiberE2Batches.Batch011.dependency896valid
theorem incomingLink586 : CofiberE2Batches.Batch011.dependency897.algebra.mat = CofiberE2Batches.Batch107.exact586.a := by decide
theorem outgoingLink586 : CofiberE2Batches.Batch011.dependency898.algebra.mat = CofiberE2Batches.Batch107.exact586.b := by decide
theorem linkedExact586 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency898.algebra.mat CofiberE2Batches.Batch011.dependency897.algebra.mat := by
  rw [incomingLink586, outgoingLink586]
  exact CofiberE2Batches.Batch107.exact586valid.2
theorem incomingValid586 : CofiberE2Batches.Batch011.dependency897.Valid := CofiberE2Batches.Batch011.dependency897valid
theorem outgoingValid586 : CofiberE2Batches.Batch011.dependency898.Valid := CofiberE2Batches.Batch011.dependency898valid
theorem incomingLink587 : CofiberE2Batches.Batch010.dependency826.algebra.mat = CofiberE2Batches.Batch107.exact587.a := by decide
theorem outgoingLink587 : CofiberE2Batches.Batch011.dependency900.c = CofiberE2Batches.Batch107.exact587.b := by decide
theorem linkedExact587 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency900.c CofiberE2Batches.Batch010.dependency826.algebra.mat := by
  rw [incomingLink587, outgoingLink587]
  exact CofiberE2Batches.Batch107.exact587valid.2
theorem incomingValid587 : CofiberE2Batches.Batch010.dependency826.Valid := CofiberE2Batches.Batch010.dependency826valid
theorem outgoingValid587 : CofiberE2Batches.Batch011.dependency900.Valid := CofiberE2Batches.Batch011.dependency900valid
theorem incomingLink588 : CofiberE2Batches.Batch010.dependency828.algebra.mat = CofiberE2Batches.Batch107.exact588.a := by decide
theorem outgoingLink588 : CofiberE2Batches.Batch011.dependency902.c = CofiberE2Batches.Batch107.exact588.b := by decide
theorem linkedExact588 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency902.c CofiberE2Batches.Batch010.dependency828.algebra.mat := by
  rw [incomingLink588, outgoingLink588]
  exact CofiberE2Batches.Batch107.exact588valid.2
theorem incomingValid588 : CofiberE2Batches.Batch010.dependency828.Valid := CofiberE2Batches.Batch010.dependency828valid
theorem outgoingValid588 : CofiberE2Batches.Batch011.dependency902.Valid := CofiberE2Batches.Batch011.dependency902valid
theorem incomingLink589 : CofiberE2Batches.Batch010.dependency830.algebra.mat = CofiberE2Batches.Batch107.exact589.a := by decide
theorem outgoingLink589 : CofiberE2Batches.Batch011.dependency903.c = CofiberE2Batches.Batch107.exact589.b := by decide
theorem linkedExact589 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency903.c CofiberE2Batches.Batch010.dependency830.algebra.mat := by
  rw [incomingLink589, outgoingLink589]
  exact CofiberE2Batches.Batch107.exact589valid.2
theorem incomingValid589 : CofiberE2Batches.Batch010.dependency830.Valid := CofiberE2Batches.Batch010.dependency830valid
theorem outgoingValid589 : CofiberE2Batches.Batch011.dependency903.Valid := CofiberE2Batches.Batch011.dependency903valid
theorem incomingLink590 : CofiberE2Batches.Batch010.dependency832.algebra.mat = CofiberE2Batches.Batch107.exact590.a := by decide
theorem outgoingLink590 : CofiberE2Batches.Batch011.dependency904.c = CofiberE2Batches.Batch107.exact590.b := by decide
theorem linkedExact590 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency904.c CofiberE2Batches.Batch010.dependency832.algebra.mat := by
  rw [incomingLink590, outgoingLink590]
  exact CofiberE2Batches.Batch107.exact590valid.2
theorem incomingValid590 : CofiberE2Batches.Batch010.dependency832.Valid := CofiberE2Batches.Batch010.dependency832valid
theorem outgoingValid590 : CofiberE2Batches.Batch011.dependency904.Valid := CofiberE2Batches.Batch011.dependency904valid
theorem incomingLink591 : CofiberE2Batches.Batch010.dependency836.algebra.mat = CofiberE2Batches.Batch107.exact591.a := by decide
theorem outgoingLink591 : CofiberE2Batches.Batch011.dependency905.c = CofiberE2Batches.Batch107.exact591.b := by decide
theorem linkedExact591 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency905.c CofiberE2Batches.Batch010.dependency836.algebra.mat := by
  rw [incomingLink591, outgoingLink591]
  exact CofiberE2Batches.Batch107.exact591valid.2
theorem incomingValid591 : CofiberE2Batches.Batch010.dependency836.Valid := CofiberE2Batches.Batch010.dependency836valid
theorem outgoingValid591 : CofiberE2Batches.Batch011.dependency905.Valid := CofiberE2Batches.Batch011.dependency905valid
theorem incomingLink592 : CofiberE2Batches.Batch010.dependency838.algebra.mat = CofiberE2Batches.Batch107.exact592.a := by decide
theorem outgoingLink592 : CofiberE2Batches.Batch011.dependency907.c = CofiberE2Batches.Batch107.exact592.b := by decide
theorem linkedExact592 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency907.c CofiberE2Batches.Batch010.dependency838.algebra.mat := by
  rw [incomingLink592, outgoingLink592]
  exact CofiberE2Batches.Batch107.exact592valid.2
theorem incomingValid592 : CofiberE2Batches.Batch010.dependency838.Valid := CofiberE2Batches.Batch010.dependency838valid
theorem outgoingValid592 : CofiberE2Batches.Batch011.dependency907.Valid := CofiberE2Batches.Batch011.dependency907valid
theorem incomingLink593 : CofiberE2Batches.Batch010.dependency840.algebra.mat = CofiberE2Batches.Batch107.exact593.a := by decide
theorem outgoingLink593 : CofiberE2Batches.Batch011.dependency908.c = CofiberE2Batches.Batch107.exact593.b := by decide
theorem linkedExact593 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency908.c CofiberE2Batches.Batch010.dependency840.algebra.mat := by
  rw [incomingLink593, outgoingLink593]
  exact CofiberE2Batches.Batch107.exact593valid.2
theorem incomingValid593 : CofiberE2Batches.Batch010.dependency840.Valid := CofiberE2Batches.Batch010.dependency840valid
theorem outgoingValid593 : CofiberE2Batches.Batch011.dependency908.Valid := CofiberE2Batches.Batch011.dependency908valid
theorem incomingLink594 : CofiberE2Batches.Batch010.dependency842.algebra.mat = CofiberE2Batches.Batch107.exact594.a := by decide
theorem outgoingLink594 : CofiberE2Batches.Batch011.dependency910.c = CofiberE2Batches.Batch107.exact594.b := by decide
theorem linkedExact594 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency910.c CofiberE2Batches.Batch010.dependency842.algebra.mat := by
  rw [incomingLink594, outgoingLink594]
  exact CofiberE2Batches.Batch107.exact594valid.2
theorem incomingValid594 : CofiberE2Batches.Batch010.dependency842.Valid := CofiberE2Batches.Batch010.dependency842valid
theorem outgoingValid594 : CofiberE2Batches.Batch011.dependency910.Valid := CofiberE2Batches.Batch011.dependency910valid
theorem incomingLink595 : CofiberE2Batches.Batch010.dependency848.algebra.mat = CofiberE2Batches.Batch107.exact595.a := by decide
theorem outgoingLink595 : CofiberE2Batches.Batch011.dependency912.c = CofiberE2Batches.Batch107.exact595.b := by decide
theorem linkedExact595 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency912.c CofiberE2Batches.Batch010.dependency848.algebra.mat := by
  rw [incomingLink595, outgoingLink595]
  exact CofiberE2Batches.Batch107.exact595valid.2
theorem incomingValid595 : CofiberE2Batches.Batch010.dependency848.Valid := CofiberE2Batches.Batch010.dependency848valid
theorem outgoingValid595 : CofiberE2Batches.Batch011.dependency912.Valid := CofiberE2Batches.Batch011.dependency912valid
theorem incomingLink596 : CofiberE2Batches.Batch010.dependency850.algebra.mat = CofiberE2Batches.Batch107.exact596.a := by decide
theorem outgoingLink596 : CofiberE2Batches.Batch011.dependency913.c = CofiberE2Batches.Batch107.exact596.b := by decide
theorem linkedExact596 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency913.c CofiberE2Batches.Batch010.dependency850.algebra.mat := by
  rw [incomingLink596, outgoingLink596]
  exact CofiberE2Batches.Batch107.exact596valid.2
theorem incomingValid596 : CofiberE2Batches.Batch010.dependency850.Valid := CofiberE2Batches.Batch010.dependency850valid
theorem outgoingValid596 : CofiberE2Batches.Batch011.dependency913.Valid := CofiberE2Batches.Batch011.dependency913valid
theorem incomingLink597 : CofiberE2Batches.Batch010.dependency852.algebra.mat = CofiberE2Batches.Batch107.exact597.a := by decide
theorem outgoingLink597 : CofiberE2Batches.Batch011.dependency914.c = CofiberE2Batches.Batch107.exact597.b := by decide
theorem linkedExact597 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency914.c CofiberE2Batches.Batch010.dependency852.algebra.mat := by
  rw [incomingLink597, outgoingLink597]
  exact CofiberE2Batches.Batch107.exact597valid.2
theorem incomingValid597 : CofiberE2Batches.Batch010.dependency852.Valid := CofiberE2Batches.Batch010.dependency852valid
theorem outgoingValid597 : CofiberE2Batches.Batch011.dependency914.Valid := CofiberE2Batches.Batch011.dependency914valid
theorem incomingLink598 : CofiberE2Batches.Batch010.dependency854.algebra.mat = CofiberE2Batches.Batch107.exact598.a := by decide
theorem outgoingLink598 : CofiberE2Batches.Batch011.dependency916.c = CofiberE2Batches.Batch107.exact598.b := by decide
theorem linkedExact598 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency916.c CofiberE2Batches.Batch010.dependency854.algebra.mat := by
  rw [incomingLink598, outgoingLink598]
  exact CofiberE2Batches.Batch107.exact598valid.2
theorem incomingValid598 : CofiberE2Batches.Batch010.dependency854.Valid := CofiberE2Batches.Batch010.dependency854valid
theorem outgoingValid598 : CofiberE2Batches.Batch011.dependency916.Valid := CofiberE2Batches.Batch011.dependency916valid
theorem incomingLink599 : CofiberE2Batches.Batch010.dependency856.algebra.mat = CofiberE2Batches.Batch107.exact599.a := by decide
theorem outgoingLink599 : CofiberE2Batches.Batch011.dependency917.c = CofiberE2Batches.Batch107.exact599.b := by decide
theorem linkedExact599 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch011.dependency917.c CofiberE2Batches.Batch010.dependency856.algebra.mat := by
  rw [incomingLink599, outgoingLink599]
  exact CofiberE2Batches.Batch107.exact599valid.2
theorem incomingValid599 : CofiberE2Batches.Batch010.dependency856.Valid := CofiberE2Batches.Batch010.dependency856valid
theorem outgoingValid599 : CofiberE2Batches.Batch011.dependency917.Valid := CofiberE2Batches.Batch011.dependency917valid
end CofiberLinkageBatches.Batch009
