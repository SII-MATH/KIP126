import CofiberE2Certificates.Linkage
import CofiberE2Batches.Batch000
import CofiberE2Batches.Batch001
import CofiberE2Batches.Batch100
import CofiberE2Batches.Batch101
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace CofiberLinkageBatches.Batch000
theorem incomingLink0 : CofiberE2Batches.Batch000.dependency0.algebra.mat = CofiberE2Batches.Batch100.exact0.a := by decide
theorem outgoingLink0 : CofiberE2Batches.Batch000.dependency1.algebra.mat = CofiberE2Batches.Batch100.exact0.b := by decide
theorem linkedExact0 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency1.algebra.mat CofiberE2Batches.Batch000.dependency0.algebra.mat := by
  rw [incomingLink0, outgoingLink0]
  exact CofiberE2Batches.Batch100.exact0valid.2
theorem incomingValid0 : CofiberE2Batches.Batch000.dependency0.Valid := CofiberE2Batches.Batch000.dependency0valid
theorem outgoingValid0 : CofiberE2Batches.Batch000.dependency1.Valid := CofiberE2Batches.Batch000.dependency1valid
theorem incomingLink1 : CofiberE2Batches.Batch000.dependency2.algebra.mat = CofiberE2Batches.Batch100.exact1.a := by decide
theorem outgoingLink1 : CofiberE2Batches.Batch000.dependency3.algebra.mat = CofiberE2Batches.Batch100.exact1.b := by decide
theorem linkedExact1 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency3.algebra.mat CofiberE2Batches.Batch000.dependency2.algebra.mat := by
  rw [incomingLink1, outgoingLink1]
  exact CofiberE2Batches.Batch100.exact1valid.2
theorem incomingValid1 : CofiberE2Batches.Batch000.dependency2.Valid := CofiberE2Batches.Batch000.dependency2valid
theorem outgoingValid1 : CofiberE2Batches.Batch000.dependency3.Valid := CofiberE2Batches.Batch000.dependency3valid
theorem incomingLink2 : CofiberE2Batches.Batch000.dependency4.algebra.mat = CofiberE2Batches.Batch100.exact2.a := by decide
theorem outgoingLink2 : CofiberE2Batches.Batch000.dependency5.algebra.mat = CofiberE2Batches.Batch100.exact2.b := by decide
theorem linkedExact2 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency5.algebra.mat CofiberE2Batches.Batch000.dependency4.algebra.mat := by
  rw [incomingLink2, outgoingLink2]
  exact CofiberE2Batches.Batch100.exact2valid.2
theorem incomingValid2 : CofiberE2Batches.Batch000.dependency4.Valid := CofiberE2Batches.Batch000.dependency4valid
theorem outgoingValid2 : CofiberE2Batches.Batch000.dependency5.Valid := CofiberE2Batches.Batch000.dependency5valid
theorem incomingLink3 : CofiberE2Batches.Batch000.dependency6.algebra.mat = CofiberE2Batches.Batch100.exact3.a := by decide
theorem outgoingLink3 : CofiberE2Batches.Batch000.dependency7.algebra.mat = CofiberE2Batches.Batch100.exact3.b := by decide
theorem linkedExact3 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency7.algebra.mat CofiberE2Batches.Batch000.dependency6.algebra.mat := by
  rw [incomingLink3, outgoingLink3]
  exact CofiberE2Batches.Batch100.exact3valid.2
theorem incomingValid3 : CofiberE2Batches.Batch000.dependency6.Valid := CofiberE2Batches.Batch000.dependency6valid
theorem outgoingValid3 : CofiberE2Batches.Batch000.dependency7.Valid := CofiberE2Batches.Batch000.dependency7valid
theorem incomingLink4 : CofiberE2Batches.Batch000.dependency8.algebra.mat = CofiberE2Batches.Batch100.exact4.a := by decide
theorem outgoingLink4 : CofiberE2Batches.Batch000.dependency9.algebra.mat = CofiberE2Batches.Batch100.exact4.b := by decide
theorem linkedExact4 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency9.algebra.mat CofiberE2Batches.Batch000.dependency8.algebra.mat := by
  rw [incomingLink4, outgoingLink4]
  exact CofiberE2Batches.Batch100.exact4valid.2
theorem incomingValid4 : CofiberE2Batches.Batch000.dependency8.Valid := CofiberE2Batches.Batch000.dependency8valid
theorem outgoingValid4 : CofiberE2Batches.Batch000.dependency9.Valid := CofiberE2Batches.Batch000.dependency9valid
theorem incomingLink5 : CofiberE2Batches.Batch000.dependency10.algebra.mat = CofiberE2Batches.Batch100.exact5.a := by decide
theorem outgoingLink5 : CofiberE2Batches.Batch000.dependency11.algebra.mat = CofiberE2Batches.Batch100.exact5.b := by decide
theorem linkedExact5 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency11.algebra.mat CofiberE2Batches.Batch000.dependency10.algebra.mat := by
  rw [incomingLink5, outgoingLink5]
  exact CofiberE2Batches.Batch100.exact5valid.2
theorem incomingValid5 : CofiberE2Batches.Batch000.dependency10.Valid := CofiberE2Batches.Batch000.dependency10valid
theorem outgoingValid5 : CofiberE2Batches.Batch000.dependency11.Valid := CofiberE2Batches.Batch000.dependency11valid
theorem incomingLink6 : CofiberE2Batches.Batch000.dependency12.algebra.mat = CofiberE2Batches.Batch100.exact6.a := by decide
theorem outgoingLink6 : CofiberE2Batches.Batch000.dependency13.algebra.mat = CofiberE2Batches.Batch100.exact6.b := by decide
theorem linkedExact6 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency13.algebra.mat CofiberE2Batches.Batch000.dependency12.algebra.mat := by
  rw [incomingLink6, outgoingLink6]
  exact CofiberE2Batches.Batch100.exact6valid.2
theorem incomingValid6 : CofiberE2Batches.Batch000.dependency12.Valid := CofiberE2Batches.Batch000.dependency12valid
theorem outgoingValid6 : CofiberE2Batches.Batch000.dependency13.Valid := CofiberE2Batches.Batch000.dependency13valid
theorem incomingLink7 : CofiberE2Batches.Batch000.dependency14.algebra.mat = CofiberE2Batches.Batch100.exact7.a := by decide
theorem outgoingLink7 : CofiberE2Batches.Batch000.dependency15.algebra.mat = CofiberE2Batches.Batch100.exact7.b := by decide
theorem linkedExact7 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency15.algebra.mat CofiberE2Batches.Batch000.dependency14.algebra.mat := by
  rw [incomingLink7, outgoingLink7]
  exact CofiberE2Batches.Batch100.exact7valid.2
theorem incomingValid7 : CofiberE2Batches.Batch000.dependency14.Valid := CofiberE2Batches.Batch000.dependency14valid
theorem outgoingValid7 : CofiberE2Batches.Batch000.dependency15.Valid := CofiberE2Batches.Batch000.dependency15valid
theorem incomingLink8 : CofiberE2Batches.Batch000.dependency16.algebra.mat = CofiberE2Batches.Batch100.exact8.a := by decide
theorem outgoingLink8 : CofiberE2Batches.Batch000.dependency17.algebra.mat = CofiberE2Batches.Batch100.exact8.b := by decide
theorem linkedExact8 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency17.algebra.mat CofiberE2Batches.Batch000.dependency16.algebra.mat := by
  rw [incomingLink8, outgoingLink8]
  exact CofiberE2Batches.Batch100.exact8valid.2
theorem incomingValid8 : CofiberE2Batches.Batch000.dependency16.Valid := CofiberE2Batches.Batch000.dependency16valid
theorem outgoingValid8 : CofiberE2Batches.Batch000.dependency17.Valid := CofiberE2Batches.Batch000.dependency17valid
theorem incomingLink9 : CofiberE2Batches.Batch000.dependency18.algebra.mat = CofiberE2Batches.Batch100.exact9.a := by decide
theorem outgoingLink9 : CofiberE2Batches.Batch000.dependency19.algebra.mat = CofiberE2Batches.Batch100.exact9.b := by decide
theorem linkedExact9 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency19.algebra.mat CofiberE2Batches.Batch000.dependency18.algebra.mat := by
  rw [incomingLink9, outgoingLink9]
  exact CofiberE2Batches.Batch100.exact9valid.2
theorem incomingValid9 : CofiberE2Batches.Batch000.dependency18.Valid := CofiberE2Batches.Batch000.dependency18valid
theorem outgoingValid9 : CofiberE2Batches.Batch000.dependency19.Valid := CofiberE2Batches.Batch000.dependency19valid
theorem incomingLink10 : CofiberE2Batches.Batch000.dependency20.algebra.mat = CofiberE2Batches.Batch100.exact10.a := by decide
theorem outgoingLink10 : CofiberE2Batches.Batch000.dependency21.algebra.mat = CofiberE2Batches.Batch100.exact10.b := by decide
theorem linkedExact10 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency21.algebra.mat CofiberE2Batches.Batch000.dependency20.algebra.mat := by
  rw [incomingLink10, outgoingLink10]
  exact CofiberE2Batches.Batch100.exact10valid.2
theorem incomingValid10 : CofiberE2Batches.Batch000.dependency20.Valid := CofiberE2Batches.Batch000.dependency20valid
theorem outgoingValid10 : CofiberE2Batches.Batch000.dependency21.Valid := CofiberE2Batches.Batch000.dependency21valid
theorem incomingLink11 : CofiberE2Batches.Batch000.dependency22.algebra.mat = CofiberE2Batches.Batch100.exact11.a := by decide
theorem outgoingLink11 : CofiberE2Batches.Batch000.dependency23.algebra.mat = CofiberE2Batches.Batch100.exact11.b := by decide
theorem linkedExact11 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency23.algebra.mat CofiberE2Batches.Batch000.dependency22.algebra.mat := by
  rw [incomingLink11, outgoingLink11]
  exact CofiberE2Batches.Batch100.exact11valid.2
theorem incomingValid11 : CofiberE2Batches.Batch000.dependency22.Valid := CofiberE2Batches.Batch000.dependency22valid
theorem outgoingValid11 : CofiberE2Batches.Batch000.dependency23.Valid := CofiberE2Batches.Batch000.dependency23valid
theorem incomingLink12 : CofiberE2Batches.Batch000.dependency24.algebra.mat = CofiberE2Batches.Batch100.exact12.a := by decide
theorem outgoingLink12 : CofiberE2Batches.Batch000.dependency25.algebra.mat = CofiberE2Batches.Batch100.exact12.b := by decide
theorem linkedExact12 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency25.algebra.mat CofiberE2Batches.Batch000.dependency24.algebra.mat := by
  rw [incomingLink12, outgoingLink12]
  exact CofiberE2Batches.Batch100.exact12valid.2
theorem incomingValid12 : CofiberE2Batches.Batch000.dependency24.Valid := CofiberE2Batches.Batch000.dependency24valid
theorem outgoingValid12 : CofiberE2Batches.Batch000.dependency25.Valid := CofiberE2Batches.Batch000.dependency25valid
theorem incomingLink13 : CofiberE2Batches.Batch000.dependency26.algebra.mat = CofiberE2Batches.Batch100.exact13.a := by decide
theorem outgoingLink13 : CofiberE2Batches.Batch000.dependency27.algebra.mat = CofiberE2Batches.Batch100.exact13.b := by decide
theorem linkedExact13 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency27.algebra.mat CofiberE2Batches.Batch000.dependency26.algebra.mat := by
  rw [incomingLink13, outgoingLink13]
  exact CofiberE2Batches.Batch100.exact13valid.2
theorem incomingValid13 : CofiberE2Batches.Batch000.dependency26.Valid := CofiberE2Batches.Batch000.dependency26valid
theorem outgoingValid13 : CofiberE2Batches.Batch000.dependency27.Valid := CofiberE2Batches.Batch000.dependency27valid
theorem incomingLink14 : CofiberE2Batches.Batch000.dependency28.algebra.mat = CofiberE2Batches.Batch100.exact14.a := by decide
theorem outgoingLink14 : CofiberE2Batches.Batch000.dependency29.algebra.mat = CofiberE2Batches.Batch100.exact14.b := by decide
theorem linkedExact14 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency29.algebra.mat CofiberE2Batches.Batch000.dependency28.algebra.mat := by
  rw [incomingLink14, outgoingLink14]
  exact CofiberE2Batches.Batch100.exact14valid.2
theorem incomingValid14 : CofiberE2Batches.Batch000.dependency28.Valid := CofiberE2Batches.Batch000.dependency28valid
theorem outgoingValid14 : CofiberE2Batches.Batch000.dependency29.Valid := CofiberE2Batches.Batch000.dependency29valid
theorem incomingLink15 : CofiberE2Batches.Batch000.dependency30.algebra.mat = CofiberE2Batches.Batch100.exact15.a := by decide
theorem outgoingLink15 : CofiberE2Batches.Batch000.dependency31.algebra.mat = CofiberE2Batches.Batch100.exact15.b := by decide
theorem linkedExact15 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency31.algebra.mat CofiberE2Batches.Batch000.dependency30.algebra.mat := by
  rw [incomingLink15, outgoingLink15]
  exact CofiberE2Batches.Batch100.exact15valid.2
theorem incomingValid15 : CofiberE2Batches.Batch000.dependency30.Valid := CofiberE2Batches.Batch000.dependency30valid
theorem outgoingValid15 : CofiberE2Batches.Batch000.dependency31.Valid := CofiberE2Batches.Batch000.dependency31valid
theorem incomingLink16 : CofiberE2Batches.Batch000.dependency32.algebra.mat = CofiberE2Batches.Batch100.exact16.a := by decide
theorem outgoingLink16 : CofiberE2Batches.Batch000.dependency33.algebra.mat = CofiberE2Batches.Batch100.exact16.b := by decide
theorem linkedExact16 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency33.algebra.mat CofiberE2Batches.Batch000.dependency32.algebra.mat := by
  rw [incomingLink16, outgoingLink16]
  exact CofiberE2Batches.Batch100.exact16valid.2
theorem incomingValid16 : CofiberE2Batches.Batch000.dependency32.Valid := CofiberE2Batches.Batch000.dependency32valid
theorem outgoingValid16 : CofiberE2Batches.Batch000.dependency33.Valid := CofiberE2Batches.Batch000.dependency33valid
theorem incomingLink17 : CofiberE2Batches.Batch000.dependency34.algebra.mat = CofiberE2Batches.Batch100.exact17.a := by decide
theorem outgoingLink17 : CofiberE2Batches.Batch000.dependency35.algebra.mat = CofiberE2Batches.Batch100.exact17.b := by decide
theorem linkedExact17 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency35.algebra.mat CofiberE2Batches.Batch000.dependency34.algebra.mat := by
  rw [incomingLink17, outgoingLink17]
  exact CofiberE2Batches.Batch100.exact17valid.2
theorem incomingValid17 : CofiberE2Batches.Batch000.dependency34.Valid := CofiberE2Batches.Batch000.dependency34valid
theorem outgoingValid17 : CofiberE2Batches.Batch000.dependency35.Valid := CofiberE2Batches.Batch000.dependency35valid
theorem incomingLink18 : CofiberE2Batches.Batch000.dependency36.algebra.mat = CofiberE2Batches.Batch100.exact18.a := by decide
theorem outgoingLink18 : CofiberE2Batches.Batch000.dependency37.algebra.mat = CofiberE2Batches.Batch100.exact18.b := by decide
theorem linkedExact18 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency37.algebra.mat CofiberE2Batches.Batch000.dependency36.algebra.mat := by
  rw [incomingLink18, outgoingLink18]
  exact CofiberE2Batches.Batch100.exact18valid.2
theorem incomingValid18 : CofiberE2Batches.Batch000.dependency36.Valid := CofiberE2Batches.Batch000.dependency36valid
theorem outgoingValid18 : CofiberE2Batches.Batch000.dependency37.Valid := CofiberE2Batches.Batch000.dependency37valid
theorem incomingLink19 : CofiberE2Batches.Batch000.dependency38.algebra.mat = CofiberE2Batches.Batch100.exact19.a := by decide
theorem outgoingLink19 : CofiberE2Batches.Batch000.dependency39.algebra.mat = CofiberE2Batches.Batch100.exact19.b := by decide
theorem linkedExact19 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency39.algebra.mat CofiberE2Batches.Batch000.dependency38.algebra.mat := by
  rw [incomingLink19, outgoingLink19]
  exact CofiberE2Batches.Batch100.exact19valid.2
theorem incomingValid19 : CofiberE2Batches.Batch000.dependency38.Valid := CofiberE2Batches.Batch000.dependency38valid
theorem outgoingValid19 : CofiberE2Batches.Batch000.dependency39.Valid := CofiberE2Batches.Batch000.dependency39valid
theorem incomingLink20 : CofiberE2Batches.Batch000.dependency40.algebra.mat = CofiberE2Batches.Batch100.exact20.a := by decide
theorem outgoingLink20 : CofiberE2Batches.Batch000.dependency41.algebra.mat = CofiberE2Batches.Batch100.exact20.b := by decide
theorem linkedExact20 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency41.algebra.mat CofiberE2Batches.Batch000.dependency40.algebra.mat := by
  rw [incomingLink20, outgoingLink20]
  exact CofiberE2Batches.Batch100.exact20valid.2
theorem incomingValid20 : CofiberE2Batches.Batch000.dependency40.Valid := CofiberE2Batches.Batch000.dependency40valid
theorem outgoingValid20 : CofiberE2Batches.Batch000.dependency41.Valid := CofiberE2Batches.Batch000.dependency41valid
theorem incomingLink21 : CofiberE2Batches.Batch000.dependency42.algebra.mat = CofiberE2Batches.Batch100.exact21.a := by decide
theorem outgoingLink21 : CofiberE2Batches.Batch000.dependency43.algebra.mat = CofiberE2Batches.Batch100.exact21.b := by decide
theorem linkedExact21 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency43.algebra.mat CofiberE2Batches.Batch000.dependency42.algebra.mat := by
  rw [incomingLink21, outgoingLink21]
  exact CofiberE2Batches.Batch100.exact21valid.2
theorem incomingValid21 : CofiberE2Batches.Batch000.dependency42.Valid := CofiberE2Batches.Batch000.dependency42valid
theorem outgoingValid21 : CofiberE2Batches.Batch000.dependency43.Valid := CofiberE2Batches.Batch000.dependency43valid
theorem incomingLink22 : CofiberE2Batches.Batch000.dependency44.algebra.mat = CofiberE2Batches.Batch100.exact22.a := by decide
theorem outgoingLink22 : CofiberE2Batches.Batch000.dependency45.algebra.mat = CofiberE2Batches.Batch100.exact22.b := by decide
theorem linkedExact22 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency45.algebra.mat CofiberE2Batches.Batch000.dependency44.algebra.mat := by
  rw [incomingLink22, outgoingLink22]
  exact CofiberE2Batches.Batch100.exact22valid.2
theorem incomingValid22 : CofiberE2Batches.Batch000.dependency44.Valid := CofiberE2Batches.Batch000.dependency44valid
theorem outgoingValid22 : CofiberE2Batches.Batch000.dependency45.Valid := CofiberE2Batches.Batch000.dependency45valid
theorem incomingLink23 : CofiberE2Batches.Batch000.dependency46.algebra.mat = CofiberE2Batches.Batch100.exact23.a := by decide
theorem outgoingLink23 : CofiberE2Batches.Batch000.dependency47.algebra.mat = CofiberE2Batches.Batch100.exact23.b := by decide
theorem linkedExact23 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency47.algebra.mat CofiberE2Batches.Batch000.dependency46.algebra.mat := by
  rw [incomingLink23, outgoingLink23]
  exact CofiberE2Batches.Batch100.exact23valid.2
theorem incomingValid23 : CofiberE2Batches.Batch000.dependency46.Valid := CofiberE2Batches.Batch000.dependency46valid
theorem outgoingValid23 : CofiberE2Batches.Batch000.dependency47.Valid := CofiberE2Batches.Batch000.dependency47valid
theorem incomingLink24 : CofiberE2Batches.Batch000.dependency48.algebra.mat = CofiberE2Batches.Batch100.exact24.a := by decide
theorem outgoingLink24 : CofiberE2Batches.Batch000.dependency49.algebra.mat = CofiberE2Batches.Batch100.exact24.b := by decide
theorem linkedExact24 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency49.algebra.mat CofiberE2Batches.Batch000.dependency48.algebra.mat := by
  rw [incomingLink24, outgoingLink24]
  exact CofiberE2Batches.Batch100.exact24valid.2
theorem incomingValid24 : CofiberE2Batches.Batch000.dependency48.Valid := CofiberE2Batches.Batch000.dependency48valid
theorem outgoingValid24 : CofiberE2Batches.Batch000.dependency49.Valid := CofiberE2Batches.Batch000.dependency49valid
theorem incomingLink25 : CofiberE2Batches.Batch000.dependency50.algebra.mat = CofiberE2Batches.Batch100.exact25.a := by decide
theorem outgoingLink25 : CofiberE2Batches.Batch000.dependency51.algebra.mat = CofiberE2Batches.Batch100.exact25.b := by decide
theorem linkedExact25 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency51.algebra.mat CofiberE2Batches.Batch000.dependency50.algebra.mat := by
  rw [incomingLink25, outgoingLink25]
  exact CofiberE2Batches.Batch100.exact25valid.2
theorem incomingValid25 : CofiberE2Batches.Batch000.dependency50.Valid := CofiberE2Batches.Batch000.dependency50valid
theorem outgoingValid25 : CofiberE2Batches.Batch000.dependency51.Valid := CofiberE2Batches.Batch000.dependency51valid
theorem incomingLink26 : CofiberE2Batches.Batch000.dependency1.algebra.mat = CofiberE2Batches.Batch100.exact26.a := by decide
theorem outgoingLink26 : CofiberE2Batches.Batch000.dependency52.algebra.mat = CofiberE2Batches.Batch100.exact26.b := by decide
theorem linkedExact26 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency52.algebra.mat CofiberE2Batches.Batch000.dependency1.algebra.mat := by
  rw [incomingLink26, outgoingLink26]
  exact CofiberE2Batches.Batch100.exact26valid.2
theorem incomingValid26 : CofiberE2Batches.Batch000.dependency1.Valid := CofiberE2Batches.Batch000.dependency1valid
theorem outgoingValid26 : CofiberE2Batches.Batch000.dependency52.Valid := CofiberE2Batches.Batch000.dependency52valid
theorem incomingLink27 : CofiberE2Batches.Batch000.dependency5.algebra.mat = CofiberE2Batches.Batch100.exact27.a := by decide
theorem outgoingLink27 : CofiberE2Batches.Batch000.dependency53.algebra.mat = CofiberE2Batches.Batch100.exact27.b := by decide
theorem linkedExact27 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency53.algebra.mat CofiberE2Batches.Batch000.dependency5.algebra.mat := by
  rw [incomingLink27, outgoingLink27]
  exact CofiberE2Batches.Batch100.exact27valid.2
theorem incomingValid27 : CofiberE2Batches.Batch000.dependency5.Valid := CofiberE2Batches.Batch000.dependency5valid
theorem outgoingValid27 : CofiberE2Batches.Batch000.dependency53.Valid := CofiberE2Batches.Batch000.dependency53valid
theorem incomingLink28 : CofiberE2Batches.Batch000.dependency54.algebra.mat = CofiberE2Batches.Batch100.exact28.a := by decide
theorem outgoingLink28 : CofiberE2Batches.Batch000.dependency55.algebra.mat = CofiberE2Batches.Batch100.exact28.b := by decide
theorem linkedExact28 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency55.algebra.mat CofiberE2Batches.Batch000.dependency54.algebra.mat := by
  rw [incomingLink28, outgoingLink28]
  exact CofiberE2Batches.Batch100.exact28valid.2
theorem incomingValid28 : CofiberE2Batches.Batch000.dependency54.Valid := CofiberE2Batches.Batch000.dependency54valid
theorem outgoingValid28 : CofiberE2Batches.Batch000.dependency55.Valid := CofiberE2Batches.Batch000.dependency55valid
theorem incomingLink29 : CofiberE2Batches.Batch000.dependency7.algebra.mat = CofiberE2Batches.Batch100.exact29.a := by decide
theorem outgoingLink29 : CofiberE2Batches.Batch000.dependency56.algebra.mat = CofiberE2Batches.Batch100.exact29.b := by decide
theorem linkedExact29 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency56.algebra.mat CofiberE2Batches.Batch000.dependency7.algebra.mat := by
  rw [incomingLink29, outgoingLink29]
  exact CofiberE2Batches.Batch100.exact29valid.2
theorem incomingValid29 : CofiberE2Batches.Batch000.dependency7.Valid := CofiberE2Batches.Batch000.dependency7valid
theorem outgoingValid29 : CofiberE2Batches.Batch000.dependency56.Valid := CofiberE2Batches.Batch000.dependency56valid
theorem incomingLink30 : CofiberE2Batches.Batch000.dependency9.algebra.mat = CofiberE2Batches.Batch100.exact30.a := by decide
theorem outgoingLink30 : CofiberE2Batches.Batch000.dependency57.algebra.mat = CofiberE2Batches.Batch100.exact30.b := by decide
theorem linkedExact30 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency57.algebra.mat CofiberE2Batches.Batch000.dependency9.algebra.mat := by
  rw [incomingLink30, outgoingLink30]
  exact CofiberE2Batches.Batch100.exact30valid.2
theorem incomingValid30 : CofiberE2Batches.Batch000.dependency9.Valid := CofiberE2Batches.Batch000.dependency9valid
theorem outgoingValid30 : CofiberE2Batches.Batch000.dependency57.Valid := CofiberE2Batches.Batch000.dependency57valid
theorem incomingLink31 : CofiberE2Batches.Batch000.dependency13.algebra.mat = CofiberE2Batches.Batch100.exact31.a := by decide
theorem outgoingLink31 : CofiberE2Batches.Batch000.dependency58.algebra.mat = CofiberE2Batches.Batch100.exact31.b := by decide
theorem linkedExact31 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency58.algebra.mat CofiberE2Batches.Batch000.dependency13.algebra.mat := by
  rw [incomingLink31, outgoingLink31]
  exact CofiberE2Batches.Batch100.exact31valid.2
theorem incomingValid31 : CofiberE2Batches.Batch000.dependency13.Valid := CofiberE2Batches.Batch000.dependency13valid
theorem outgoingValid31 : CofiberE2Batches.Batch000.dependency58.Valid := CofiberE2Batches.Batch000.dependency58valid
theorem incomingLink32 : CofiberE2Batches.Batch000.dependency15.algebra.mat = CofiberE2Batches.Batch100.exact32.a := by decide
theorem outgoingLink32 : CofiberE2Batches.Batch000.dependency59.algebra.mat = CofiberE2Batches.Batch100.exact32.b := by decide
theorem linkedExact32 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency59.algebra.mat CofiberE2Batches.Batch000.dependency15.algebra.mat := by
  rw [incomingLink32, outgoingLink32]
  exact CofiberE2Batches.Batch100.exact32valid.2
theorem incomingValid32 : CofiberE2Batches.Batch000.dependency15.Valid := CofiberE2Batches.Batch000.dependency15valid
theorem outgoingValid32 : CofiberE2Batches.Batch000.dependency59.Valid := CofiberE2Batches.Batch000.dependency59valid
theorem incomingLink33 : CofiberE2Batches.Batch000.dependency17.algebra.mat = CofiberE2Batches.Batch100.exact33.a := by decide
theorem outgoingLink33 : CofiberE2Batches.Batch000.dependency60.algebra.mat = CofiberE2Batches.Batch100.exact33.b := by decide
theorem linkedExact33 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency60.algebra.mat CofiberE2Batches.Batch000.dependency17.algebra.mat := by
  rw [incomingLink33, outgoingLink33]
  exact CofiberE2Batches.Batch100.exact33valid.2
theorem incomingValid33 : CofiberE2Batches.Batch000.dependency17.Valid := CofiberE2Batches.Batch000.dependency17valid
theorem outgoingValid33 : CofiberE2Batches.Batch000.dependency60.Valid := CofiberE2Batches.Batch000.dependency60valid
theorem incomingLink34 : CofiberE2Batches.Batch000.dependency19.algebra.mat = CofiberE2Batches.Batch100.exact34.a := by decide
theorem outgoingLink34 : CofiberE2Batches.Batch000.dependency61.algebra.mat = CofiberE2Batches.Batch100.exact34.b := by decide
theorem linkedExact34 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency61.algebra.mat CofiberE2Batches.Batch000.dependency19.algebra.mat := by
  rw [incomingLink34, outgoingLink34]
  exact CofiberE2Batches.Batch100.exact34valid.2
theorem incomingValid34 : CofiberE2Batches.Batch000.dependency19.Valid := CofiberE2Batches.Batch000.dependency19valid
theorem outgoingValid34 : CofiberE2Batches.Batch000.dependency61.Valid := CofiberE2Batches.Batch000.dependency61valid
theorem incomingLink35 : CofiberE2Batches.Batch000.dependency21.algebra.mat = CofiberE2Batches.Batch100.exact35.a := by decide
theorem outgoingLink35 : CofiberE2Batches.Batch000.dependency62.algebra.mat = CofiberE2Batches.Batch100.exact35.b := by decide
theorem linkedExact35 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency62.algebra.mat CofiberE2Batches.Batch000.dependency21.algebra.mat := by
  rw [incomingLink35, outgoingLink35]
  exact CofiberE2Batches.Batch100.exact35valid.2
theorem incomingValid35 : CofiberE2Batches.Batch000.dependency21.Valid := CofiberE2Batches.Batch000.dependency21valid
theorem outgoingValid35 : CofiberE2Batches.Batch000.dependency62.Valid := CofiberE2Batches.Batch000.dependency62valid
theorem incomingLink36 : CofiberE2Batches.Batch000.dependency63.algebra.mat = CofiberE2Batches.Batch100.exact36.a := by decide
theorem outgoingLink36 : CofiberE2Batches.Batch000.dependency64.algebra.mat = CofiberE2Batches.Batch100.exact36.b := by decide
theorem linkedExact36 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency64.algebra.mat CofiberE2Batches.Batch000.dependency63.algebra.mat := by
  rw [incomingLink36, outgoingLink36]
  exact CofiberE2Batches.Batch100.exact36valid.2
theorem incomingValid36 : CofiberE2Batches.Batch000.dependency63.Valid := CofiberE2Batches.Batch000.dependency63valid
theorem outgoingValid36 : CofiberE2Batches.Batch000.dependency64.Valid := CofiberE2Batches.Batch000.dependency64valid
theorem incomingLink37 : CofiberE2Batches.Batch000.dependency65.algebra.mat = CofiberE2Batches.Batch100.exact37.a := by decide
theorem outgoingLink37 : CofiberE2Batches.Batch000.dependency66.algebra.mat = CofiberE2Batches.Batch100.exact37.b := by decide
theorem linkedExact37 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency66.algebra.mat CofiberE2Batches.Batch000.dependency65.algebra.mat := by
  rw [incomingLink37, outgoingLink37]
  exact CofiberE2Batches.Batch100.exact37valid.2
theorem incomingValid37 : CofiberE2Batches.Batch000.dependency65.Valid := CofiberE2Batches.Batch000.dependency65valid
theorem outgoingValid37 : CofiberE2Batches.Batch000.dependency66.Valid := CofiberE2Batches.Batch000.dependency66valid
theorem incomingLink38 : CofiberE2Batches.Batch000.dependency29.algebra.mat = CofiberE2Batches.Batch100.exact38.a := by decide
theorem outgoingLink38 : CofiberE2Batches.Batch000.dependency67.algebra.mat = CofiberE2Batches.Batch100.exact38.b := by decide
theorem linkedExact38 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency67.algebra.mat CofiberE2Batches.Batch000.dependency29.algebra.mat := by
  rw [incomingLink38, outgoingLink38]
  exact CofiberE2Batches.Batch100.exact38valid.2
theorem incomingValid38 : CofiberE2Batches.Batch000.dependency29.Valid := CofiberE2Batches.Batch000.dependency29valid
theorem outgoingValid38 : CofiberE2Batches.Batch000.dependency67.Valid := CofiberE2Batches.Batch000.dependency67valid
theorem incomingLink39 : CofiberE2Batches.Batch000.dependency31.algebra.mat = CofiberE2Batches.Batch100.exact39.a := by decide
theorem outgoingLink39 : CofiberE2Batches.Batch000.dependency68.algebra.mat = CofiberE2Batches.Batch100.exact39.b := by decide
theorem linkedExact39 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency68.algebra.mat CofiberE2Batches.Batch000.dependency31.algebra.mat := by
  rw [incomingLink39, outgoingLink39]
  exact CofiberE2Batches.Batch100.exact39valid.2
theorem incomingValid39 : CofiberE2Batches.Batch000.dependency31.Valid := CofiberE2Batches.Batch000.dependency31valid
theorem outgoingValid39 : CofiberE2Batches.Batch000.dependency68.Valid := CofiberE2Batches.Batch000.dependency68valid
theorem incomingLink40 : CofiberE2Batches.Batch000.dependency69.algebra.mat = CofiberE2Batches.Batch100.exact40.a := by decide
theorem outgoingLink40 : CofiberE2Batches.Batch000.dependency70.algebra.mat = CofiberE2Batches.Batch100.exact40.b := by decide
theorem linkedExact40 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency70.algebra.mat CofiberE2Batches.Batch000.dependency69.algebra.mat := by
  rw [incomingLink40, outgoingLink40]
  exact CofiberE2Batches.Batch100.exact40valid.2
theorem incomingValid40 : CofiberE2Batches.Batch000.dependency69.Valid := CofiberE2Batches.Batch000.dependency69valid
theorem outgoingValid40 : CofiberE2Batches.Batch000.dependency70.Valid := CofiberE2Batches.Batch000.dependency70valid
theorem incomingLink41 : CofiberE2Batches.Batch000.dependency71.algebra.mat = CofiberE2Batches.Batch100.exact41.a := by decide
theorem outgoingLink41 : CofiberE2Batches.Batch000.dependency2.algebra.mat = CofiberE2Batches.Batch100.exact41.b := by decide
theorem linkedExact41 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency2.algebra.mat CofiberE2Batches.Batch000.dependency71.algebra.mat := by
  rw [incomingLink41, outgoingLink41]
  exact CofiberE2Batches.Batch100.exact41valid.2
theorem incomingValid41 : CofiberE2Batches.Batch000.dependency71.Valid := CofiberE2Batches.Batch000.dependency71valid
theorem outgoingValid41 : CofiberE2Batches.Batch000.dependency2.Valid := CofiberE2Batches.Batch000.dependency2valid
theorem incomingLink42 : CofiberE2Batches.Batch000.dependency53.algebra.mat = CofiberE2Batches.Batch100.exact42.a := by decide
theorem outgoingLink42 : CofiberE2Batches.Batch000.dependency10.algebra.mat = CofiberE2Batches.Batch100.exact42.b := by decide
theorem linkedExact42 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency10.algebra.mat CofiberE2Batches.Batch000.dependency53.algebra.mat := by
  rw [incomingLink42, outgoingLink42]
  exact CofiberE2Batches.Batch100.exact42valid.2
theorem incomingValid42 : CofiberE2Batches.Batch000.dependency53.Valid := CofiberE2Batches.Batch000.dependency53valid
theorem outgoingValid42 : CofiberE2Batches.Batch000.dependency10.Valid := CofiberE2Batches.Batch000.dependency10valid
theorem incomingLink43 : CofiberE2Batches.Batch000.dependency55.algebra.mat = CofiberE2Batches.Batch100.exact43.a := by decide
theorem outgoingLink43 : CofiberE2Batches.Batch000.dependency72.algebra.mat = CofiberE2Batches.Batch100.exact43.b := by decide
theorem linkedExact43 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency72.algebra.mat CofiberE2Batches.Batch000.dependency55.algebra.mat := by
  rw [incomingLink43, outgoingLink43]
  exact CofiberE2Batches.Batch100.exact43valid.2
theorem incomingValid43 : CofiberE2Batches.Batch000.dependency55.Valid := CofiberE2Batches.Batch000.dependency55valid
theorem outgoingValid43 : CofiberE2Batches.Batch000.dependency72.Valid := CofiberE2Batches.Batch000.dependency72valid
theorem incomingLink44 : CofiberE2Batches.Batch000.dependency73.algebra.mat = CofiberE2Batches.Batch100.exact44.a := by decide
theorem outgoingLink44 : CofiberE2Batches.Batch000.dependency14.algebra.mat = CofiberE2Batches.Batch100.exact44.b := by decide
theorem linkedExact44 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency14.algebra.mat CofiberE2Batches.Batch000.dependency73.algebra.mat := by
  rw [incomingLink44, outgoingLink44]
  exact CofiberE2Batches.Batch100.exact44valid.2
theorem incomingValid44 : CofiberE2Batches.Batch000.dependency73.Valid := CofiberE2Batches.Batch000.dependency73valid
theorem outgoingValid44 : CofiberE2Batches.Batch000.dependency14.Valid := CofiberE2Batches.Batch000.dependency14valid
theorem incomingLink45 : CofiberE2Batches.Batch000.dependency74.algebra.mat = CofiberE2Batches.Batch100.exact45.a := by decide
theorem outgoingLink45 : CofiberE2Batches.Batch000.dependency18.algebra.mat = CofiberE2Batches.Batch100.exact45.b := by decide
theorem linkedExact45 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency18.algebra.mat CofiberE2Batches.Batch000.dependency74.algebra.mat := by
  rw [incomingLink45, outgoingLink45]
  exact CofiberE2Batches.Batch100.exact45valid.2
theorem incomingValid45 : CofiberE2Batches.Batch000.dependency74.Valid := CofiberE2Batches.Batch000.dependency74valid
theorem outgoingValid45 : CofiberE2Batches.Batch000.dependency18.Valid := CofiberE2Batches.Batch000.dependency18valid
theorem incomingLink46 : CofiberE2Batches.Batch000.dependency75.algebra.mat = CofiberE2Batches.Batch100.exact46.a := by decide
theorem outgoingLink46 : CofiberE2Batches.Batch000.dependency22.algebra.mat = CofiberE2Batches.Batch100.exact46.b := by decide
theorem linkedExact46 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency22.algebra.mat CofiberE2Batches.Batch000.dependency75.algebra.mat := by
  rw [incomingLink46, outgoingLink46]
  exact CofiberE2Batches.Batch100.exact46valid.2
theorem incomingValid46 : CofiberE2Batches.Batch000.dependency75.Valid := CofiberE2Batches.Batch000.dependency75valid
theorem outgoingValid46 : CofiberE2Batches.Batch000.dependency22.Valid := CofiberE2Batches.Batch000.dependency22valid
theorem incomingLink47 : CofiberE2Batches.Batch000.dependency59.algebra.mat = CofiberE2Batches.Batch100.exact47.a := by decide
theorem outgoingLink47 : CofiberE2Batches.Batch000.dependency76.algebra.mat = CofiberE2Batches.Batch100.exact47.b := by decide
theorem linkedExact47 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency76.algebra.mat CofiberE2Batches.Batch000.dependency59.algebra.mat := by
  rw [incomingLink47, outgoingLink47]
  exact CofiberE2Batches.Batch100.exact47valid.2
theorem incomingValid47 : CofiberE2Batches.Batch000.dependency59.Valid := CofiberE2Batches.Batch000.dependency59valid
theorem outgoingValid47 : CofiberE2Batches.Batch000.dependency76.Valid := CofiberE2Batches.Batch000.dependency76valid
theorem incomingLink48 : CofiberE2Batches.Batch000.dependency77.algebra.mat = CofiberE2Batches.Batch100.exact48.a := by decide
theorem outgoingLink48 : CofiberE2Batches.Batch000.dependency24.algebra.mat = CofiberE2Batches.Batch100.exact48.b := by decide
theorem linkedExact48 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency24.algebra.mat CofiberE2Batches.Batch000.dependency77.algebra.mat := by
  rw [incomingLink48, outgoingLink48]
  exact CofiberE2Batches.Batch100.exact48valid.2
theorem incomingValid48 : CofiberE2Batches.Batch000.dependency77.Valid := CofiberE2Batches.Batch000.dependency77valid
theorem outgoingValid48 : CofiberE2Batches.Batch000.dependency24.Valid := CofiberE2Batches.Batch000.dependency24valid
theorem incomingLink49 : CofiberE2Batches.Batch000.dependency61.algebra.mat = CofiberE2Batches.Batch100.exact49.a := by decide
theorem outgoingLink49 : CofiberE2Batches.Batch000.dependency78.algebra.mat = CofiberE2Batches.Batch100.exact49.b := by decide
theorem linkedExact49 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency78.algebra.mat CofiberE2Batches.Batch000.dependency61.algebra.mat := by
  rw [incomingLink49, outgoingLink49]
  exact CofiberE2Batches.Batch100.exact49valid.2
theorem incomingValid49 : CofiberE2Batches.Batch000.dependency61.Valid := CofiberE2Batches.Batch000.dependency61valid
theorem outgoingValid49 : CofiberE2Batches.Batch000.dependency78.Valid := CofiberE2Batches.Batch000.dependency78valid
theorem incomingLink50 : CofiberE2Batches.Batch000.dependency62.algebra.mat = CofiberE2Batches.Batch100.exact50.a := by decide
theorem outgoingLink50 : CofiberE2Batches.Batch000.dependency26.algebra.mat = CofiberE2Batches.Batch100.exact50.b := by decide
theorem linkedExact50 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency26.algebra.mat CofiberE2Batches.Batch000.dependency62.algebra.mat := by
  rw [incomingLink50, outgoingLink50]
  exact CofiberE2Batches.Batch100.exact50valid.2
theorem incomingValid50 : CofiberE2Batches.Batch000.dependency62.Valid := CofiberE2Batches.Batch000.dependency62valid
theorem outgoingValid50 : CofiberE2Batches.Batch000.dependency26.Valid := CofiberE2Batches.Batch000.dependency26valid
theorem incomingLink51 : CofiberE2Batches.Batch000.dependency64.algebra.mat = CofiberE2Batches.Batch100.exact51.a := by decide
theorem outgoingLink51 : CofiberE2Batches.Batch000.dependency28.algebra.mat = CofiberE2Batches.Batch100.exact51.b := by decide
theorem linkedExact51 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency28.algebra.mat CofiberE2Batches.Batch000.dependency64.algebra.mat := by
  rw [incomingLink51, outgoingLink51]
  exact CofiberE2Batches.Batch100.exact51valid.2
theorem incomingValid51 : CofiberE2Batches.Batch000.dependency64.Valid := CofiberE2Batches.Batch000.dependency64valid
theorem outgoingValid51 : CofiberE2Batches.Batch000.dependency28.Valid := CofiberE2Batches.Batch000.dependency28valid
theorem incomingLink52 : CofiberE2Batches.Batch000.dependency79.algebra.mat = CofiberE2Batches.Batch100.exact52.a := by decide
theorem outgoingLink52 : CofiberE2Batches.Batch000.dependency32.algebra.mat = CofiberE2Batches.Batch100.exact52.b := by decide
theorem linkedExact52 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency32.algebra.mat CofiberE2Batches.Batch000.dependency79.algebra.mat := by
  rw [incomingLink52, outgoingLink52]
  exact CofiberE2Batches.Batch100.exact52valid.2
theorem incomingValid52 : CofiberE2Batches.Batch000.dependency79.Valid := CofiberE2Batches.Batch000.dependency79valid
theorem outgoingValid52 : CofiberE2Batches.Batch000.dependency32.Valid := CofiberE2Batches.Batch000.dependency32valid
theorem incomingLink53 : CofiberE2Batches.Batch000.dependency66.algebra.mat = CofiberE2Batches.Batch100.exact53.a := by decide
theorem outgoingLink53 : CofiberE2Batches.Batch001.dependency80.algebra.mat = CofiberE2Batches.Batch100.exact53.b := by decide
theorem linkedExact53 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency80.algebra.mat CofiberE2Batches.Batch000.dependency66.algebra.mat := by
  rw [incomingLink53, outgoingLink53]
  exact CofiberE2Batches.Batch100.exact53valid.2
theorem incomingValid53 : CofiberE2Batches.Batch000.dependency66.Valid := CofiberE2Batches.Batch000.dependency66valid
theorem outgoingValid53 : CofiberE2Batches.Batch001.dependency80.Valid := CofiberE2Batches.Batch001.dependency80valid
theorem incomingLink54 : CofiberE2Batches.Batch000.dependency67.algebra.mat = CofiberE2Batches.Batch100.exact54.a := by decide
theorem outgoingLink54 : CofiberE2Batches.Batch000.dependency34.algebra.mat = CofiberE2Batches.Batch100.exact54.b := by decide
theorem linkedExact54 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency34.algebra.mat CofiberE2Batches.Batch000.dependency67.algebra.mat := by
  rw [incomingLink54, outgoingLink54]
  exact CofiberE2Batches.Batch100.exact54valid.2
theorem incomingValid54 : CofiberE2Batches.Batch000.dependency67.Valid := CofiberE2Batches.Batch000.dependency67valid
theorem outgoingValid54 : CofiberE2Batches.Batch000.dependency34.Valid := CofiberE2Batches.Batch000.dependency34valid
theorem incomingLink55 : CofiberE2Batches.Batch000.dependency68.algebra.mat = CofiberE2Batches.Batch100.exact55.a := by decide
theorem outgoingLink55 : CofiberE2Batches.Batch001.dependency81.algebra.mat = CofiberE2Batches.Batch100.exact55.b := by decide
theorem linkedExact55 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency81.algebra.mat CofiberE2Batches.Batch000.dependency68.algebra.mat := by
  rw [incomingLink55, outgoingLink55]
  exact CofiberE2Batches.Batch100.exact55valid.2
theorem incomingValid55 : CofiberE2Batches.Batch000.dependency68.Valid := CofiberE2Batches.Batch000.dependency68valid
theorem outgoingValid55 : CofiberE2Batches.Batch001.dependency81.Valid := CofiberE2Batches.Batch001.dependency81valid
theorem incomingLink56 : CofiberE2Batches.Batch001.dependency82.algebra.mat = CofiberE2Batches.Batch100.exact56.a := by decide
theorem outgoingLink56 : CofiberE2Batches.Batch001.dependency83.algebra.mat = CofiberE2Batches.Batch100.exact56.b := by decide
theorem linkedExact56 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency83.algebra.mat CofiberE2Batches.Batch001.dependency82.algebra.mat := by
  rw [incomingLink56, outgoingLink56]
  exact CofiberE2Batches.Batch100.exact56valid.2
theorem incomingValid56 : CofiberE2Batches.Batch001.dependency82.Valid := CofiberE2Batches.Batch001.dependency82valid
theorem outgoingValid56 : CofiberE2Batches.Batch001.dependency83.Valid := CofiberE2Batches.Batch001.dependency83valid
theorem incomingLink57 : CofiberE2Batches.Batch001.dependency84.algebra.mat = CofiberE2Batches.Batch100.exact57.a := by decide
theorem outgoingLink57 : CofiberE2Batches.Batch000.dependency36.algebra.mat = CofiberE2Batches.Batch100.exact57.b := by decide
theorem linkedExact57 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency36.algebra.mat CofiberE2Batches.Batch001.dependency84.algebra.mat := by
  rw [incomingLink57, outgoingLink57]
  exact CofiberE2Batches.Batch100.exact57valid.2
theorem incomingValid57 : CofiberE2Batches.Batch001.dependency84.Valid := CofiberE2Batches.Batch001.dependency84valid
theorem outgoingValid57 : CofiberE2Batches.Batch000.dependency36.Valid := CofiberE2Batches.Batch000.dependency36valid
theorem incomingLink58 : CofiberE2Batches.Batch000.dependency70.algebra.mat = CofiberE2Batches.Batch100.exact58.a := by decide
theorem outgoingLink58 : CofiberE2Batches.Batch001.dependency85.algebra.mat = CofiberE2Batches.Batch100.exact58.b := by decide
theorem linkedExact58 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency85.algebra.mat CofiberE2Batches.Batch000.dependency70.algebra.mat := by
  rw [incomingLink58, outgoingLink58]
  exact CofiberE2Batches.Batch100.exact58valid.2
theorem incomingValid58 : CofiberE2Batches.Batch000.dependency70.Valid := CofiberE2Batches.Batch000.dependency70valid
theorem outgoingValid58 : CofiberE2Batches.Batch001.dependency85.Valid := CofiberE2Batches.Batch001.dependency85valid
theorem incomingLink59 : CofiberE2Batches.Batch001.dependency86.algebra.mat = CofiberE2Batches.Batch101.exact59.a := by decide
theorem outgoingLink59 : CofiberE2Batches.Batch000.dependency38.algebra.mat = CofiberE2Batches.Batch101.exact59.b := by decide
theorem linkedExact59 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency38.algebra.mat CofiberE2Batches.Batch001.dependency86.algebra.mat := by
  rw [incomingLink59, outgoingLink59]
  exact CofiberE2Batches.Batch101.exact59valid.2
theorem incomingValid59 : CofiberE2Batches.Batch001.dependency86.Valid := CofiberE2Batches.Batch001.dependency86valid
theorem outgoingValid59 : CofiberE2Batches.Batch000.dependency38.Valid := CofiberE2Batches.Batch000.dependency38valid
end CofiberLinkageBatches.Batch000
