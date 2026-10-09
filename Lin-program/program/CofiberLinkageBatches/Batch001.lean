import CofiberE2Certificates.Linkage
import CofiberE2Batches.Batch000
import CofiberE2Batches.Batch001
import CofiberE2Batches.Batch002
import CofiberE2Batches.Batch101
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace CofiberLinkageBatches.Batch001
theorem incomingLink60 : CofiberE2Batches.Batch001.dependency87.algebra.mat = CofiberE2Batches.Batch101.exact60.a := by decide
theorem outgoingLink60 : CofiberE2Batches.Batch000.dependency40.algebra.mat = CofiberE2Batches.Batch101.exact60.b := by decide
theorem linkedExact60 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency40.algebra.mat CofiberE2Batches.Batch001.dependency87.algebra.mat := by
  rw [incomingLink60, outgoingLink60]
  exact CofiberE2Batches.Batch101.exact60valid.2
theorem incomingValid60 : CofiberE2Batches.Batch001.dependency87.Valid := CofiberE2Batches.Batch001.dependency87valid
theorem outgoingValid60 : CofiberE2Batches.Batch000.dependency40.Valid := CofiberE2Batches.Batch000.dependency40valid
theorem incomingLink61 : CofiberE2Batches.Batch001.dependency88.algebra.mat = CofiberE2Batches.Batch101.exact61.a := by decide
theorem outgoingLink61 : CofiberE2Batches.Batch000.dependency42.algebra.mat = CofiberE2Batches.Batch101.exact61.b := by decide
theorem linkedExact61 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency42.algebra.mat CofiberE2Batches.Batch001.dependency88.algebra.mat := by
  rw [incomingLink61, outgoingLink61]
  exact CofiberE2Batches.Batch101.exact61valid.2
theorem incomingValid61 : CofiberE2Batches.Batch001.dependency88.Valid := CofiberE2Batches.Batch001.dependency88valid
theorem outgoingValid61 : CofiberE2Batches.Batch000.dependency42.Valid := CofiberE2Batches.Batch000.dependency42valid
theorem incomingLink62 : CofiberE2Batches.Batch001.dependency89.algebra.mat = CofiberE2Batches.Batch101.exact62.a := by decide
theorem outgoingLink62 : CofiberE2Batches.Batch000.dependency44.algebra.mat = CofiberE2Batches.Batch101.exact62.b := by decide
theorem linkedExact62 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency44.algebra.mat CofiberE2Batches.Batch001.dependency89.algebra.mat := by
  rw [incomingLink62, outgoingLink62]
  exact CofiberE2Batches.Batch101.exact62valid.2
theorem incomingValid62 : CofiberE2Batches.Batch001.dependency89.Valid := CofiberE2Batches.Batch001.dependency89valid
theorem outgoingValid62 : CofiberE2Batches.Batch000.dependency44.Valid := CofiberE2Batches.Batch000.dependency44valid
theorem incomingLink63 : CofiberE2Batches.Batch001.dependency90.algebra.mat = CofiberE2Batches.Batch101.exact63.a := by decide
theorem outgoingLink63 : CofiberE2Batches.Batch000.dependency46.algebra.mat = CofiberE2Batches.Batch101.exact63.b := by decide
theorem linkedExact63 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency46.algebra.mat CofiberE2Batches.Batch001.dependency90.algebra.mat := by
  rw [incomingLink63, outgoingLink63]
  exact CofiberE2Batches.Batch101.exact63valid.2
theorem incomingValid63 : CofiberE2Batches.Batch001.dependency90.Valid := CofiberE2Batches.Batch001.dependency90valid
theorem outgoingValid63 : CofiberE2Batches.Batch000.dependency46.Valid := CofiberE2Batches.Batch000.dependency46valid
theorem incomingLink64 : CofiberE2Batches.Batch001.dependency91.algebra.mat = CofiberE2Batches.Batch101.exact64.a := by decide
theorem outgoingLink64 : CofiberE2Batches.Batch000.dependency48.algebra.mat = CofiberE2Batches.Batch101.exact64.b := by decide
theorem linkedExact64 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency48.algebra.mat CofiberE2Batches.Batch001.dependency91.algebra.mat := by
  rw [incomingLink64, outgoingLink64]
  exact CofiberE2Batches.Batch101.exact64valid.2
theorem incomingValid64 : CofiberE2Batches.Batch001.dependency91.Valid := CofiberE2Batches.Batch001.dependency91valid
theorem outgoingValid64 : CofiberE2Batches.Batch000.dependency48.Valid := CofiberE2Batches.Batch000.dependency48valid
theorem incomingLink65 : CofiberE2Batches.Batch001.dependency92.algebra.mat = CofiberE2Batches.Batch101.exact65.a := by decide
theorem outgoingLink65 : CofiberE2Batches.Batch000.dependency50.algebra.mat = CofiberE2Batches.Batch101.exact65.b := by decide
theorem linkedExact65 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch000.dependency50.algebra.mat CofiberE2Batches.Batch001.dependency92.algebra.mat := by
  rw [incomingLink65, outgoingLink65]
  exact CofiberE2Batches.Batch101.exact65valid.2
theorem incomingValid65 : CofiberE2Batches.Batch001.dependency92.Valid := CofiberE2Batches.Batch001.dependency92valid
theorem outgoingValid65 : CofiberE2Batches.Batch000.dependency50.Valid := CofiberE2Batches.Batch000.dependency50valid
theorem incomingLink66 : CofiberE2Batches.Batch001.dependency93.algebra.mat = CofiberE2Batches.Batch101.exact66.a := by decide
theorem outgoingLink66 : CofiberE2Batches.Batch001.dependency94.algebra.mat = CofiberE2Batches.Batch101.exact66.b := by decide
theorem linkedExact66 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency94.algebra.mat CofiberE2Batches.Batch001.dependency93.algebra.mat := by
  rw [incomingLink66, outgoingLink66]
  exact CofiberE2Batches.Batch101.exact66valid.2
theorem incomingValid66 : CofiberE2Batches.Batch001.dependency93.Valid := CofiberE2Batches.Batch001.dependency93valid
theorem outgoingValid66 : CofiberE2Batches.Batch001.dependency94.Valid := CofiberE2Batches.Batch001.dependency94valid
theorem incomingLink67 : CofiberE2Batches.Batch001.dependency95.algebra.mat = CofiberE2Batches.Batch101.exact67.a := by decide
theorem outgoingLink67 : CofiberE2Batches.Batch001.dependency96.algebra.mat = CofiberE2Batches.Batch101.exact67.b := by decide
theorem linkedExact67 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency96.algebra.mat CofiberE2Batches.Batch001.dependency95.algebra.mat := by
  rw [incomingLink67, outgoingLink67]
  exact CofiberE2Batches.Batch101.exact67valid.2
theorem incomingValid67 : CofiberE2Batches.Batch001.dependency95.Valid := CofiberE2Batches.Batch001.dependency95valid
theorem outgoingValid67 : CofiberE2Batches.Batch001.dependency96.Valid := CofiberE2Batches.Batch001.dependency96valid
theorem incomingLink68 : CofiberE2Batches.Batch001.dependency97.algebra.mat = CofiberE2Batches.Batch101.exact68.a := by decide
theorem outgoingLink68 : CofiberE2Batches.Batch001.dependency98.algebra.mat = CofiberE2Batches.Batch101.exact68.b := by decide
theorem linkedExact68 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency98.algebra.mat CofiberE2Batches.Batch001.dependency97.algebra.mat := by
  rw [incomingLink68, outgoingLink68]
  exact CofiberE2Batches.Batch101.exact68valid.2
theorem incomingValid68 : CofiberE2Batches.Batch001.dependency97.Valid := CofiberE2Batches.Batch001.dependency97valid
theorem outgoingValid68 : CofiberE2Batches.Batch001.dependency98.Valid := CofiberE2Batches.Batch001.dependency98valid
theorem incomingLink69 : CofiberE2Batches.Batch001.dependency99.algebra.mat = CofiberE2Batches.Batch101.exact69.a := by decide
theorem outgoingLink69 : CofiberE2Batches.Batch001.dependency100.algebra.mat = CofiberE2Batches.Batch101.exact69.b := by decide
theorem linkedExact69 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency100.algebra.mat CofiberE2Batches.Batch001.dependency99.algebra.mat := by
  rw [incomingLink69, outgoingLink69]
  exact CofiberE2Batches.Batch101.exact69valid.2
theorem incomingValid69 : CofiberE2Batches.Batch001.dependency99.Valid := CofiberE2Batches.Batch001.dependency99valid
theorem outgoingValid69 : CofiberE2Batches.Batch001.dependency100.Valid := CofiberE2Batches.Batch001.dependency100valid
theorem incomingLink70 : CofiberE2Batches.Batch001.dependency101.algebra.mat = CofiberE2Batches.Batch101.exact70.a := by decide
theorem outgoingLink70 : CofiberE2Batches.Batch001.dependency102.algebra.mat = CofiberE2Batches.Batch101.exact70.b := by decide
theorem linkedExact70 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency102.algebra.mat CofiberE2Batches.Batch001.dependency101.algebra.mat := by
  rw [incomingLink70, outgoingLink70]
  exact CofiberE2Batches.Batch101.exact70valid.2
theorem incomingValid70 : CofiberE2Batches.Batch001.dependency101.Valid := CofiberE2Batches.Batch001.dependency101valid
theorem outgoingValid70 : CofiberE2Batches.Batch001.dependency102.Valid := CofiberE2Batches.Batch001.dependency102valid
theorem incomingLink71 : CofiberE2Batches.Batch001.dependency103.algebra.mat = CofiberE2Batches.Batch101.exact71.a := by decide
theorem outgoingLink71 : CofiberE2Batches.Batch001.dependency104.algebra.mat = CofiberE2Batches.Batch101.exact71.b := by decide
theorem linkedExact71 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency104.algebra.mat CofiberE2Batches.Batch001.dependency103.algebra.mat := by
  rw [incomingLink71, outgoingLink71]
  exact CofiberE2Batches.Batch101.exact71valid.2
theorem incomingValid71 : CofiberE2Batches.Batch001.dependency103.Valid := CofiberE2Batches.Batch001.dependency103valid
theorem outgoingValid71 : CofiberE2Batches.Batch001.dependency104.Valid := CofiberE2Batches.Batch001.dependency104valid
theorem incomingLink72 : CofiberE2Batches.Batch001.dependency105.algebra.mat = CofiberE2Batches.Batch101.exact72.a := by decide
theorem outgoingLink72 : CofiberE2Batches.Batch001.dependency106.algebra.mat = CofiberE2Batches.Batch101.exact72.b := by decide
theorem linkedExact72 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency106.algebra.mat CofiberE2Batches.Batch001.dependency105.algebra.mat := by
  rw [incomingLink72, outgoingLink72]
  exact CofiberE2Batches.Batch101.exact72valid.2
theorem incomingValid72 : CofiberE2Batches.Batch001.dependency105.Valid := CofiberE2Batches.Batch001.dependency105valid
theorem outgoingValid72 : CofiberE2Batches.Batch001.dependency106.Valid := CofiberE2Batches.Batch001.dependency106valid
theorem incomingLink73 : CofiberE2Batches.Batch001.dependency107.algebra.mat = CofiberE2Batches.Batch101.exact73.a := by decide
theorem outgoingLink73 : CofiberE2Batches.Batch001.dependency108.algebra.mat = CofiberE2Batches.Batch101.exact73.b := by decide
theorem linkedExact73 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency108.algebra.mat CofiberE2Batches.Batch001.dependency107.algebra.mat := by
  rw [incomingLink73, outgoingLink73]
  exact CofiberE2Batches.Batch101.exact73valid.2
theorem incomingValid73 : CofiberE2Batches.Batch001.dependency107.Valid := CofiberE2Batches.Batch001.dependency107valid
theorem outgoingValid73 : CofiberE2Batches.Batch001.dependency108.Valid := CofiberE2Batches.Batch001.dependency108valid
theorem incomingLink74 : CofiberE2Batches.Batch001.dependency109.algebra.mat = CofiberE2Batches.Batch101.exact74.a := by decide
theorem outgoingLink74 : CofiberE2Batches.Batch001.dependency110.algebra.mat = CofiberE2Batches.Batch101.exact74.b := by decide
theorem linkedExact74 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency110.algebra.mat CofiberE2Batches.Batch001.dependency109.algebra.mat := by
  rw [incomingLink74, outgoingLink74]
  exact CofiberE2Batches.Batch101.exact74valid.2
theorem incomingValid74 : CofiberE2Batches.Batch001.dependency109.Valid := CofiberE2Batches.Batch001.dependency109valid
theorem outgoingValid74 : CofiberE2Batches.Batch001.dependency110.Valid := CofiberE2Batches.Batch001.dependency110valid
theorem incomingLink75 : CofiberE2Batches.Batch001.dependency111.algebra.mat = CofiberE2Batches.Batch101.exact75.a := by decide
theorem outgoingLink75 : CofiberE2Batches.Batch001.dependency112.algebra.mat = CofiberE2Batches.Batch101.exact75.b := by decide
theorem linkedExact75 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency112.algebra.mat CofiberE2Batches.Batch001.dependency111.algebra.mat := by
  rw [incomingLink75, outgoingLink75]
  exact CofiberE2Batches.Batch101.exact75valid.2
theorem incomingValid75 : CofiberE2Batches.Batch001.dependency111.Valid := CofiberE2Batches.Batch001.dependency111valid
theorem outgoingValid75 : CofiberE2Batches.Batch001.dependency112.Valid := CofiberE2Batches.Batch001.dependency112valid
theorem incomingLink76 : CofiberE2Batches.Batch001.dependency113.algebra.mat = CofiberE2Batches.Batch101.exact76.a := by decide
theorem outgoingLink76 : CofiberE2Batches.Batch001.dependency114.algebra.mat = CofiberE2Batches.Batch101.exact76.b := by decide
theorem linkedExact76 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency114.algebra.mat CofiberE2Batches.Batch001.dependency113.algebra.mat := by
  rw [incomingLink76, outgoingLink76]
  exact CofiberE2Batches.Batch101.exact76valid.2
theorem incomingValid76 : CofiberE2Batches.Batch001.dependency113.Valid := CofiberE2Batches.Batch001.dependency113valid
theorem outgoingValid76 : CofiberE2Batches.Batch001.dependency114.Valid := CofiberE2Batches.Batch001.dependency114valid
theorem incomingLink77 : CofiberE2Batches.Batch001.dependency115.algebra.mat = CofiberE2Batches.Batch101.exact77.a := by decide
theorem outgoingLink77 : CofiberE2Batches.Batch001.dependency116.algebra.mat = CofiberE2Batches.Batch101.exact77.b := by decide
theorem linkedExact77 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency116.algebra.mat CofiberE2Batches.Batch001.dependency115.algebra.mat := by
  rw [incomingLink77, outgoingLink77]
  exact CofiberE2Batches.Batch101.exact77valid.2
theorem incomingValid77 : CofiberE2Batches.Batch001.dependency115.Valid := CofiberE2Batches.Batch001.dependency115valid
theorem outgoingValid77 : CofiberE2Batches.Batch001.dependency116.Valid := CofiberE2Batches.Batch001.dependency116valid
theorem incomingLink78 : CofiberE2Batches.Batch001.dependency117.algebra.mat = CofiberE2Batches.Batch101.exact78.a := by decide
theorem outgoingLink78 : CofiberE2Batches.Batch001.dependency118.algebra.mat = CofiberE2Batches.Batch101.exact78.b := by decide
theorem linkedExact78 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency118.algebra.mat CofiberE2Batches.Batch001.dependency117.algebra.mat := by
  rw [incomingLink78, outgoingLink78]
  exact CofiberE2Batches.Batch101.exact78valid.2
theorem incomingValid78 : CofiberE2Batches.Batch001.dependency117.Valid := CofiberE2Batches.Batch001.dependency117valid
theorem outgoingValid78 : CofiberE2Batches.Batch001.dependency118.Valid := CofiberE2Batches.Batch001.dependency118valid
theorem incomingLink79 : CofiberE2Batches.Batch001.dependency119.algebra.mat = CofiberE2Batches.Batch101.exact79.a := by decide
theorem outgoingLink79 : CofiberE2Batches.Batch001.dependency120.algebra.mat = CofiberE2Batches.Batch101.exact79.b := by decide
theorem linkedExact79 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency120.algebra.mat CofiberE2Batches.Batch001.dependency119.algebra.mat := by
  rw [incomingLink79, outgoingLink79]
  exact CofiberE2Batches.Batch101.exact79valid.2
theorem incomingValid79 : CofiberE2Batches.Batch001.dependency119.Valid := CofiberE2Batches.Batch001.dependency119valid
theorem outgoingValid79 : CofiberE2Batches.Batch001.dependency120.Valid := CofiberE2Batches.Batch001.dependency120valid
theorem incomingLink80 : CofiberE2Batches.Batch001.dependency121.algebra.mat = CofiberE2Batches.Batch101.exact80.a := by decide
theorem outgoingLink80 : CofiberE2Batches.Batch001.dependency122.algebra.mat = CofiberE2Batches.Batch101.exact80.b := by decide
theorem linkedExact80 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency122.algebra.mat CofiberE2Batches.Batch001.dependency121.algebra.mat := by
  rw [incomingLink80, outgoingLink80]
  exact CofiberE2Batches.Batch101.exact80valid.2
theorem incomingValid80 : CofiberE2Batches.Batch001.dependency121.Valid := CofiberE2Batches.Batch001.dependency121valid
theorem outgoingValid80 : CofiberE2Batches.Batch001.dependency122.Valid := CofiberE2Batches.Batch001.dependency122valid
theorem incomingLink81 : CofiberE2Batches.Batch001.dependency123.algebra.mat = CofiberE2Batches.Batch101.exact81.a := by decide
theorem outgoingLink81 : CofiberE2Batches.Batch001.dependency124.algebra.mat = CofiberE2Batches.Batch101.exact81.b := by decide
theorem linkedExact81 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency124.algebra.mat CofiberE2Batches.Batch001.dependency123.algebra.mat := by
  rw [incomingLink81, outgoingLink81]
  exact CofiberE2Batches.Batch101.exact81valid.2
theorem incomingValid81 : CofiberE2Batches.Batch001.dependency123.Valid := CofiberE2Batches.Batch001.dependency123valid
theorem outgoingValid81 : CofiberE2Batches.Batch001.dependency124.Valid := CofiberE2Batches.Batch001.dependency124valid
theorem incomingLink82 : CofiberE2Batches.Batch001.dependency125.algebra.mat = CofiberE2Batches.Batch101.exact82.a := by decide
theorem outgoingLink82 : CofiberE2Batches.Batch001.dependency126.algebra.mat = CofiberE2Batches.Batch101.exact82.b := by decide
theorem linkedExact82 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency126.algebra.mat CofiberE2Batches.Batch001.dependency125.algebra.mat := by
  rw [incomingLink82, outgoingLink82]
  exact CofiberE2Batches.Batch101.exact82valid.2
theorem incomingValid82 : CofiberE2Batches.Batch001.dependency125.Valid := CofiberE2Batches.Batch001.dependency125valid
theorem outgoingValid82 : CofiberE2Batches.Batch001.dependency126.Valid := CofiberE2Batches.Batch001.dependency126valid
theorem incomingLink83 : CofiberE2Batches.Batch001.dependency127.algebra.mat = CofiberE2Batches.Batch101.exact83.a := by decide
theorem outgoingLink83 : CofiberE2Batches.Batch001.dependency128.algebra.mat = CofiberE2Batches.Batch101.exact83.b := by decide
theorem linkedExact83 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency128.algebra.mat CofiberE2Batches.Batch001.dependency127.algebra.mat := by
  rw [incomingLink83, outgoingLink83]
  exact CofiberE2Batches.Batch101.exact83valid.2
theorem incomingValid83 : CofiberE2Batches.Batch001.dependency127.Valid := CofiberE2Batches.Batch001.dependency127valid
theorem outgoingValid83 : CofiberE2Batches.Batch001.dependency128.Valid := CofiberE2Batches.Batch001.dependency128valid
theorem incomingLink84 : CofiberE2Batches.Batch001.dependency129.algebra.mat = CofiberE2Batches.Batch101.exact84.a := by decide
theorem outgoingLink84 : CofiberE2Batches.Batch001.dependency130.algebra.mat = CofiberE2Batches.Batch101.exact84.b := by decide
theorem linkedExact84 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency130.algebra.mat CofiberE2Batches.Batch001.dependency129.algebra.mat := by
  rw [incomingLink84, outgoingLink84]
  exact CofiberE2Batches.Batch101.exact84valid.2
theorem incomingValid84 : CofiberE2Batches.Batch001.dependency129.Valid := CofiberE2Batches.Batch001.dependency129valid
theorem outgoingValid84 : CofiberE2Batches.Batch001.dependency130.Valid := CofiberE2Batches.Batch001.dependency130valid
theorem incomingLink85 : CofiberE2Batches.Batch001.dependency131.algebra.mat = CofiberE2Batches.Batch101.exact85.a := by decide
theorem outgoingLink85 : CofiberE2Batches.Batch001.dependency132.algebra.mat = CofiberE2Batches.Batch101.exact85.b := by decide
theorem linkedExact85 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency132.algebra.mat CofiberE2Batches.Batch001.dependency131.algebra.mat := by
  rw [incomingLink85, outgoingLink85]
  exact CofiberE2Batches.Batch101.exact85valid.2
theorem incomingValid85 : CofiberE2Batches.Batch001.dependency131.Valid := CofiberE2Batches.Batch001.dependency131valid
theorem outgoingValid85 : CofiberE2Batches.Batch001.dependency132.Valid := CofiberE2Batches.Batch001.dependency132valid
theorem incomingLink86 : CofiberE2Batches.Batch001.dependency133.algebra.mat = CofiberE2Batches.Batch101.exact86.a := by decide
theorem outgoingLink86 : CofiberE2Batches.Batch001.dependency134.algebra.mat = CofiberE2Batches.Batch101.exact86.b := by decide
theorem linkedExact86 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency134.algebra.mat CofiberE2Batches.Batch001.dependency133.algebra.mat := by
  rw [incomingLink86, outgoingLink86]
  exact CofiberE2Batches.Batch101.exact86valid.2
theorem incomingValid86 : CofiberE2Batches.Batch001.dependency133.Valid := CofiberE2Batches.Batch001.dependency133valid
theorem outgoingValid86 : CofiberE2Batches.Batch001.dependency134.Valid := CofiberE2Batches.Batch001.dependency134valid
theorem incomingLink87 : CofiberE2Batches.Batch001.dependency135.algebra.mat = CofiberE2Batches.Batch101.exact87.a := by decide
theorem outgoingLink87 : CofiberE2Batches.Batch001.dependency136.algebra.mat = CofiberE2Batches.Batch101.exact87.b := by decide
theorem linkedExact87 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency136.algebra.mat CofiberE2Batches.Batch001.dependency135.algebra.mat := by
  rw [incomingLink87, outgoingLink87]
  exact CofiberE2Batches.Batch101.exact87valid.2
theorem incomingValid87 : CofiberE2Batches.Batch001.dependency135.Valid := CofiberE2Batches.Batch001.dependency135valid
theorem outgoingValid87 : CofiberE2Batches.Batch001.dependency136.Valid := CofiberE2Batches.Batch001.dependency136valid
theorem incomingLink88 : CofiberE2Batches.Batch001.dependency137.algebra.mat = CofiberE2Batches.Batch101.exact88.a := by decide
theorem outgoingLink88 : CofiberE2Batches.Batch001.dependency138.algebra.mat = CofiberE2Batches.Batch101.exact88.b := by decide
theorem linkedExact88 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency138.algebra.mat CofiberE2Batches.Batch001.dependency137.algebra.mat := by
  rw [incomingLink88, outgoingLink88]
  exact CofiberE2Batches.Batch101.exact88valid.2
theorem incomingValid88 : CofiberE2Batches.Batch001.dependency137.Valid := CofiberE2Batches.Batch001.dependency137valid
theorem outgoingValid88 : CofiberE2Batches.Batch001.dependency138.Valid := CofiberE2Batches.Batch001.dependency138valid
theorem incomingLink89 : CofiberE2Batches.Batch001.dependency139.algebra.mat = CofiberE2Batches.Batch101.exact89.a := by decide
theorem outgoingLink89 : CofiberE2Batches.Batch001.dependency140.algebra.mat = CofiberE2Batches.Batch101.exact89.b := by decide
theorem linkedExact89 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency140.algebra.mat CofiberE2Batches.Batch001.dependency139.algebra.mat := by
  rw [incomingLink89, outgoingLink89]
  exact CofiberE2Batches.Batch101.exact89valid.2
theorem incomingValid89 : CofiberE2Batches.Batch001.dependency139.Valid := CofiberE2Batches.Batch001.dependency139valid
theorem outgoingValid89 : CofiberE2Batches.Batch001.dependency140.Valid := CofiberE2Batches.Batch001.dependency140valid
theorem incomingLink90 : CofiberE2Batches.Batch001.dependency141.algebra.mat = CofiberE2Batches.Batch101.exact90.a := by decide
theorem outgoingLink90 : CofiberE2Batches.Batch001.dependency142.algebra.mat = CofiberE2Batches.Batch101.exact90.b := by decide
theorem linkedExact90 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency142.algebra.mat CofiberE2Batches.Batch001.dependency141.algebra.mat := by
  rw [incomingLink90, outgoingLink90]
  exact CofiberE2Batches.Batch101.exact90valid.2
theorem incomingValid90 : CofiberE2Batches.Batch001.dependency141.Valid := CofiberE2Batches.Batch001.dependency141valid
theorem outgoingValid90 : CofiberE2Batches.Batch001.dependency142.Valid := CofiberE2Batches.Batch001.dependency142valid
theorem incomingLink91 : CofiberE2Batches.Batch001.dependency143.algebra.mat = CofiberE2Batches.Batch101.exact91.a := by decide
theorem outgoingLink91 : CofiberE2Batches.Batch001.dependency144.algebra.mat = CofiberE2Batches.Batch101.exact91.b := by decide
theorem linkedExact91 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency144.algebra.mat CofiberE2Batches.Batch001.dependency143.algebra.mat := by
  rw [incomingLink91, outgoingLink91]
  exact CofiberE2Batches.Batch101.exact91valid.2
theorem incomingValid91 : CofiberE2Batches.Batch001.dependency143.Valid := CofiberE2Batches.Batch001.dependency143valid
theorem outgoingValid91 : CofiberE2Batches.Batch001.dependency144.Valid := CofiberE2Batches.Batch001.dependency144valid
theorem incomingLink92 : CofiberE2Batches.Batch001.dependency145.algebra.mat = CofiberE2Batches.Batch101.exact92.a := by decide
theorem outgoingLink92 : CofiberE2Batches.Batch001.dependency146.algebra.mat = CofiberE2Batches.Batch101.exact92.b := by decide
theorem linkedExact92 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency146.algebra.mat CofiberE2Batches.Batch001.dependency145.algebra.mat := by
  rw [incomingLink92, outgoingLink92]
  exact CofiberE2Batches.Batch101.exact92valid.2
theorem incomingValid92 : CofiberE2Batches.Batch001.dependency145.Valid := CofiberE2Batches.Batch001.dependency145valid
theorem outgoingValid92 : CofiberE2Batches.Batch001.dependency146.Valid := CofiberE2Batches.Batch001.dependency146valid
theorem incomingLink93 : CofiberE2Batches.Batch001.dependency96.algebra.mat = CofiberE2Batches.Batch101.exact93.a := by decide
theorem outgoingLink93 : CofiberE2Batches.Batch001.dependency147.algebra.mat = CofiberE2Batches.Batch101.exact93.b := by decide
theorem linkedExact93 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency147.algebra.mat CofiberE2Batches.Batch001.dependency96.algebra.mat := by
  rw [incomingLink93, outgoingLink93]
  exact CofiberE2Batches.Batch101.exact93valid.2
theorem incomingValid93 : CofiberE2Batches.Batch001.dependency96.Valid := CofiberE2Batches.Batch001.dependency96valid
theorem outgoingValid93 : CofiberE2Batches.Batch001.dependency147.Valid := CofiberE2Batches.Batch001.dependency147valid
theorem incomingLink94 : CofiberE2Batches.Batch001.dependency98.algebra.mat = CofiberE2Batches.Batch101.exact94.a := by decide
theorem outgoingLink94 : CofiberE2Batches.Batch001.dependency148.algebra.mat = CofiberE2Batches.Batch101.exact94.b := by decide
theorem linkedExact94 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency148.algebra.mat CofiberE2Batches.Batch001.dependency98.algebra.mat := by
  rw [incomingLink94, outgoingLink94]
  exact CofiberE2Batches.Batch101.exact94valid.2
theorem incomingValid94 : CofiberE2Batches.Batch001.dependency98.Valid := CofiberE2Batches.Batch001.dependency98valid
theorem outgoingValid94 : CofiberE2Batches.Batch001.dependency148.Valid := CofiberE2Batches.Batch001.dependency148valid
theorem incomingLink95 : CofiberE2Batches.Batch001.dependency149.algebra.mat = CofiberE2Batches.Batch101.exact95.a := by decide
theorem outgoingLink95 : CofiberE2Batches.Batch001.dependency150.algebra.mat = CofiberE2Batches.Batch101.exact95.b := by decide
theorem linkedExact95 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency150.algebra.mat CofiberE2Batches.Batch001.dependency149.algebra.mat := by
  rw [incomingLink95, outgoingLink95]
  exact CofiberE2Batches.Batch101.exact95valid.2
theorem incomingValid95 : CofiberE2Batches.Batch001.dependency149.Valid := CofiberE2Batches.Batch001.dependency149valid
theorem outgoingValid95 : CofiberE2Batches.Batch001.dependency150.Valid := CofiberE2Batches.Batch001.dependency150valid
theorem incomingLink96 : CofiberE2Batches.Batch001.dependency102.algebra.mat = CofiberE2Batches.Batch101.exact96.a := by decide
theorem outgoingLink96 : CofiberE2Batches.Batch001.dependency151.algebra.mat = CofiberE2Batches.Batch101.exact96.b := by decide
theorem linkedExact96 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency151.algebra.mat CofiberE2Batches.Batch001.dependency102.algebra.mat := by
  rw [incomingLink96, outgoingLink96]
  exact CofiberE2Batches.Batch101.exact96valid.2
theorem incomingValid96 : CofiberE2Batches.Batch001.dependency102.Valid := CofiberE2Batches.Batch001.dependency102valid
theorem outgoingValid96 : CofiberE2Batches.Batch001.dependency151.Valid := CofiberE2Batches.Batch001.dependency151valid
theorem incomingLink97 : CofiberE2Batches.Batch001.dependency152.algebra.mat = CofiberE2Batches.Batch101.exact97.a := by decide
theorem outgoingLink97 : CofiberE2Batches.Batch001.dependency153.algebra.mat = CofiberE2Batches.Batch101.exact97.b := by decide
theorem linkedExact97 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency153.algebra.mat CofiberE2Batches.Batch001.dependency152.algebra.mat := by
  rw [incomingLink97, outgoingLink97]
  exact CofiberE2Batches.Batch101.exact97valid.2
theorem incomingValid97 : CofiberE2Batches.Batch001.dependency152.Valid := CofiberE2Batches.Batch001.dependency152valid
theorem outgoingValid97 : CofiberE2Batches.Batch001.dependency153.Valid := CofiberE2Batches.Batch001.dependency153valid
theorem incomingLink98 : CofiberE2Batches.Batch001.dependency104.algebra.mat = CofiberE2Batches.Batch101.exact98.a := by decide
theorem outgoingLink98 : CofiberE2Batches.Batch001.dependency154.algebra.mat = CofiberE2Batches.Batch101.exact98.b := by decide
theorem linkedExact98 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency154.algebra.mat CofiberE2Batches.Batch001.dependency104.algebra.mat := by
  rw [incomingLink98, outgoingLink98]
  exact CofiberE2Batches.Batch101.exact98valid.2
theorem incomingValid98 : CofiberE2Batches.Batch001.dependency104.Valid := CofiberE2Batches.Batch001.dependency104valid
theorem outgoingValid98 : CofiberE2Batches.Batch001.dependency154.Valid := CofiberE2Batches.Batch001.dependency154valid
theorem incomingLink99 : CofiberE2Batches.Batch001.dependency106.algebra.mat = CofiberE2Batches.Batch101.exact99.a := by decide
theorem outgoingLink99 : CofiberE2Batches.Batch001.dependency155.algebra.mat = CofiberE2Batches.Batch101.exact99.b := by decide
theorem linkedExact99 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency155.algebra.mat CofiberE2Batches.Batch001.dependency106.algebra.mat := by
  rw [incomingLink99, outgoingLink99]
  exact CofiberE2Batches.Batch101.exact99valid.2
theorem incomingValid99 : CofiberE2Batches.Batch001.dependency106.Valid := CofiberE2Batches.Batch001.dependency106valid
theorem outgoingValid99 : CofiberE2Batches.Batch001.dependency155.Valid := CofiberE2Batches.Batch001.dependency155valid
theorem incomingLink100 : CofiberE2Batches.Batch001.dependency108.algebra.mat = CofiberE2Batches.Batch101.exact100.a := by decide
theorem outgoingLink100 : CofiberE2Batches.Batch001.dependency156.algebra.mat = CofiberE2Batches.Batch101.exact100.b := by decide
theorem linkedExact100 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency156.algebra.mat CofiberE2Batches.Batch001.dependency108.algebra.mat := by
  rw [incomingLink100, outgoingLink100]
  exact CofiberE2Batches.Batch101.exact100valid.2
theorem incomingValid100 : CofiberE2Batches.Batch001.dependency108.Valid := CofiberE2Batches.Batch001.dependency108valid
theorem outgoingValid100 : CofiberE2Batches.Batch001.dependency156.Valid := CofiberE2Batches.Batch001.dependency156valid
theorem incomingLink101 : CofiberE2Batches.Batch001.dependency110.algebra.mat = CofiberE2Batches.Batch101.exact101.a := by decide
theorem outgoingLink101 : CofiberE2Batches.Batch001.dependency157.algebra.mat = CofiberE2Batches.Batch101.exact101.b := by decide
theorem linkedExact101 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency157.algebra.mat CofiberE2Batches.Batch001.dependency110.algebra.mat := by
  rw [incomingLink101, outgoingLink101]
  exact CofiberE2Batches.Batch101.exact101valid.2
theorem incomingValid101 : CofiberE2Batches.Batch001.dependency110.Valid := CofiberE2Batches.Batch001.dependency110valid
theorem outgoingValid101 : CofiberE2Batches.Batch001.dependency157.Valid := CofiberE2Batches.Batch001.dependency157valid
theorem incomingLink102 : CofiberE2Batches.Batch001.dependency158.algebra.mat = CofiberE2Batches.Batch101.exact102.a := by decide
theorem outgoingLink102 : CofiberE2Batches.Batch001.dependency159.algebra.mat = CofiberE2Batches.Batch101.exact102.b := by decide
theorem linkedExact102 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch001.dependency159.algebra.mat CofiberE2Batches.Batch001.dependency158.algebra.mat := by
  rw [incomingLink102, outgoingLink102]
  exact CofiberE2Batches.Batch101.exact102valid.2
theorem incomingValid102 : CofiberE2Batches.Batch001.dependency158.Valid := CofiberE2Batches.Batch001.dependency158valid
theorem outgoingValid102 : CofiberE2Batches.Batch001.dependency159.Valid := CofiberE2Batches.Batch001.dependency159valid
theorem incomingLink103 : CofiberE2Batches.Batch001.dependency112.algebra.mat = CofiberE2Batches.Batch101.exact103.a := by decide
theorem outgoingLink103 : CofiberE2Batches.Batch002.dependency160.algebra.mat = CofiberE2Batches.Batch101.exact103.b := by decide
theorem linkedExact103 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency160.algebra.mat CofiberE2Batches.Batch001.dependency112.algebra.mat := by
  rw [incomingLink103, outgoingLink103]
  exact CofiberE2Batches.Batch101.exact103valid.2
theorem incomingValid103 : CofiberE2Batches.Batch001.dependency112.Valid := CofiberE2Batches.Batch001.dependency112valid
theorem outgoingValid103 : CofiberE2Batches.Batch002.dependency160.Valid := CofiberE2Batches.Batch002.dependency160valid
theorem incomingLink104 : CofiberE2Batches.Batch001.dependency114.algebra.mat = CofiberE2Batches.Batch101.exact104.a := by decide
theorem outgoingLink104 : CofiberE2Batches.Batch002.dependency161.algebra.mat = CofiberE2Batches.Batch101.exact104.b := by decide
theorem linkedExact104 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency161.algebra.mat CofiberE2Batches.Batch001.dependency114.algebra.mat := by
  rw [incomingLink104, outgoingLink104]
  exact CofiberE2Batches.Batch101.exact104valid.2
theorem incomingValid104 : CofiberE2Batches.Batch001.dependency114.Valid := CofiberE2Batches.Batch001.dependency114valid
theorem outgoingValid104 : CofiberE2Batches.Batch002.dependency161.Valid := CofiberE2Batches.Batch002.dependency161valid
theorem incomingLink105 : CofiberE2Batches.Batch001.dependency116.algebra.mat = CofiberE2Batches.Batch101.exact105.a := by decide
theorem outgoingLink105 : CofiberE2Batches.Batch002.dependency162.algebra.mat = CofiberE2Batches.Batch101.exact105.b := by decide
theorem linkedExact105 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency162.algebra.mat CofiberE2Batches.Batch001.dependency116.algebra.mat := by
  rw [incomingLink105, outgoingLink105]
  exact CofiberE2Batches.Batch101.exact105valid.2
theorem incomingValid105 : CofiberE2Batches.Batch001.dependency116.Valid := CofiberE2Batches.Batch001.dependency116valid
theorem outgoingValid105 : CofiberE2Batches.Batch002.dependency162.Valid := CofiberE2Batches.Batch002.dependency162valid
theorem incomingLink106 : CofiberE2Batches.Batch002.dependency163.algebra.mat = CofiberE2Batches.Batch101.exact106.a := by decide
theorem outgoingLink106 : CofiberE2Batches.Batch002.dependency164.algebra.mat = CofiberE2Batches.Batch101.exact106.b := by decide
theorem linkedExact106 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency164.algebra.mat CofiberE2Batches.Batch002.dependency163.algebra.mat := by
  rw [incomingLink106, outgoingLink106]
  exact CofiberE2Batches.Batch101.exact106valid.2
theorem incomingValid106 : CofiberE2Batches.Batch002.dependency163.Valid := CofiberE2Batches.Batch002.dependency163valid
theorem outgoingValid106 : CofiberE2Batches.Batch002.dependency164.Valid := CofiberE2Batches.Batch002.dependency164valid
theorem incomingLink107 : CofiberE2Batches.Batch001.dependency118.algebra.mat = CofiberE2Batches.Batch101.exact107.a := by decide
theorem outgoingLink107 : CofiberE2Batches.Batch002.dependency165.algebra.mat = CofiberE2Batches.Batch101.exact107.b := by decide
theorem linkedExact107 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency165.algebra.mat CofiberE2Batches.Batch001.dependency118.algebra.mat := by
  rw [incomingLink107, outgoingLink107]
  exact CofiberE2Batches.Batch101.exact107valid.2
theorem incomingValid107 : CofiberE2Batches.Batch001.dependency118.Valid := CofiberE2Batches.Batch001.dependency118valid
theorem outgoingValid107 : CofiberE2Batches.Batch002.dependency165.Valid := CofiberE2Batches.Batch002.dependency165valid
theorem incomingLink108 : CofiberE2Batches.Batch002.dependency166.algebra.mat = CofiberE2Batches.Batch101.exact108.a := by decide
theorem outgoingLink108 : CofiberE2Batches.Batch002.dependency167.algebra.mat = CofiberE2Batches.Batch101.exact108.b := by decide
theorem linkedExact108 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency167.algebra.mat CofiberE2Batches.Batch002.dependency166.algebra.mat := by
  rw [incomingLink108, outgoingLink108]
  exact CofiberE2Batches.Batch101.exact108valid.2
theorem incomingValid108 : CofiberE2Batches.Batch002.dependency166.Valid := CofiberE2Batches.Batch002.dependency166valid
theorem outgoingValid108 : CofiberE2Batches.Batch002.dependency167.Valid := CofiberE2Batches.Batch002.dependency167valid
theorem incomingLink109 : CofiberE2Batches.Batch002.dependency168.algebra.mat = CofiberE2Batches.Batch101.exact109.a := by decide
theorem outgoingLink109 : CofiberE2Batches.Batch002.dependency169.algebra.mat = CofiberE2Batches.Batch101.exact109.b := by decide
theorem linkedExact109 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency169.algebra.mat CofiberE2Batches.Batch002.dependency168.algebra.mat := by
  rw [incomingLink109, outgoingLink109]
  exact CofiberE2Batches.Batch101.exact109valid.2
theorem incomingValid109 : CofiberE2Batches.Batch002.dependency168.Valid := CofiberE2Batches.Batch002.dependency168valid
theorem outgoingValid109 : CofiberE2Batches.Batch002.dependency169.Valid := CofiberE2Batches.Batch002.dependency169valid
theorem incomingLink110 : CofiberE2Batches.Batch001.dependency122.algebra.mat = CofiberE2Batches.Batch101.exact110.a := by decide
theorem outgoingLink110 : CofiberE2Batches.Batch002.dependency170.algebra.mat = CofiberE2Batches.Batch101.exact110.b := by decide
theorem linkedExact110 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency170.algebra.mat CofiberE2Batches.Batch001.dependency122.algebra.mat := by
  rw [incomingLink110, outgoingLink110]
  exact CofiberE2Batches.Batch101.exact110valid.2
theorem incomingValid110 : CofiberE2Batches.Batch001.dependency122.Valid := CofiberE2Batches.Batch001.dependency122valid
theorem outgoingValid110 : CofiberE2Batches.Batch002.dependency170.Valid := CofiberE2Batches.Batch002.dependency170valid
theorem incomingLink111 : CofiberE2Batches.Batch001.dependency124.algebra.mat = CofiberE2Batches.Batch101.exact111.a := by decide
theorem outgoingLink111 : CofiberE2Batches.Batch002.dependency171.algebra.mat = CofiberE2Batches.Batch101.exact111.b := by decide
theorem linkedExact111 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency171.algebra.mat CofiberE2Batches.Batch001.dependency124.algebra.mat := by
  rw [incomingLink111, outgoingLink111]
  exact CofiberE2Batches.Batch101.exact111valid.2
theorem incomingValid111 : CofiberE2Batches.Batch001.dependency124.Valid := CofiberE2Batches.Batch001.dependency124valid
theorem outgoingValid111 : CofiberE2Batches.Batch002.dependency171.Valid := CofiberE2Batches.Batch002.dependency171valid
theorem incomingLink112 : CofiberE2Batches.Batch001.dependency126.algebra.mat = CofiberE2Batches.Batch101.exact112.a := by decide
theorem outgoingLink112 : CofiberE2Batches.Batch002.dependency172.algebra.mat = CofiberE2Batches.Batch101.exact112.b := by decide
theorem linkedExact112 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency172.algebra.mat CofiberE2Batches.Batch001.dependency126.algebra.mat := by
  rw [incomingLink112, outgoingLink112]
  exact CofiberE2Batches.Batch101.exact112valid.2
theorem incomingValid112 : CofiberE2Batches.Batch001.dependency126.Valid := CofiberE2Batches.Batch001.dependency126valid
theorem outgoingValid112 : CofiberE2Batches.Batch002.dependency172.Valid := CofiberE2Batches.Batch002.dependency172valid
theorem incomingLink113 : CofiberE2Batches.Batch001.dependency128.algebra.mat = CofiberE2Batches.Batch101.exact113.a := by decide
theorem outgoingLink113 : CofiberE2Batches.Batch002.dependency173.algebra.mat = CofiberE2Batches.Batch101.exact113.b := by decide
theorem linkedExact113 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency173.algebra.mat CofiberE2Batches.Batch001.dependency128.algebra.mat := by
  rw [incomingLink113, outgoingLink113]
  exact CofiberE2Batches.Batch101.exact113valid.2
theorem incomingValid113 : CofiberE2Batches.Batch001.dependency128.Valid := CofiberE2Batches.Batch001.dependency128valid
theorem outgoingValid113 : CofiberE2Batches.Batch002.dependency173.Valid := CofiberE2Batches.Batch002.dependency173valid
theorem incomingLink114 : CofiberE2Batches.Batch002.dependency174.algebra.mat = CofiberE2Batches.Batch101.exact114.a := by decide
theorem outgoingLink114 : CofiberE2Batches.Batch002.dependency175.algebra.mat = CofiberE2Batches.Batch101.exact114.b := by decide
theorem linkedExact114 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency175.algebra.mat CofiberE2Batches.Batch002.dependency174.algebra.mat := by
  rw [incomingLink114, outgoingLink114]
  exact CofiberE2Batches.Batch101.exact114valid.2
theorem incomingValid114 : CofiberE2Batches.Batch002.dependency174.Valid := CofiberE2Batches.Batch002.dependency174valid
theorem outgoingValid114 : CofiberE2Batches.Batch002.dependency175.Valid := CofiberE2Batches.Batch002.dependency175valid
theorem incomingLink115 : CofiberE2Batches.Batch001.dependency130.algebra.mat = CofiberE2Batches.Batch101.exact115.a := by decide
theorem outgoingLink115 : CofiberE2Batches.Batch002.dependency176.algebra.mat = CofiberE2Batches.Batch101.exact115.b := by decide
theorem linkedExact115 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency176.algebra.mat CofiberE2Batches.Batch001.dependency130.algebra.mat := by
  rw [incomingLink115, outgoingLink115]
  exact CofiberE2Batches.Batch101.exact115valid.2
theorem incomingValid115 : CofiberE2Batches.Batch001.dependency130.Valid := CofiberE2Batches.Batch001.dependency130valid
theorem outgoingValid115 : CofiberE2Batches.Batch002.dependency176.Valid := CofiberE2Batches.Batch002.dependency176valid
theorem incomingLink116 : CofiberE2Batches.Batch001.dependency132.algebra.mat = CofiberE2Batches.Batch101.exact116.a := by decide
theorem outgoingLink116 : CofiberE2Batches.Batch002.dependency177.algebra.mat = CofiberE2Batches.Batch101.exact116.b := by decide
theorem linkedExact116 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency177.algebra.mat CofiberE2Batches.Batch001.dependency132.algebra.mat := by
  rw [incomingLink116, outgoingLink116]
  exact CofiberE2Batches.Batch101.exact116valid.2
theorem incomingValid116 : CofiberE2Batches.Batch001.dependency132.Valid := CofiberE2Batches.Batch001.dependency132valid
theorem outgoingValid116 : CofiberE2Batches.Batch002.dependency177.Valid := CofiberE2Batches.Batch002.dependency177valid
theorem incomingLink117 : CofiberE2Batches.Batch002.dependency178.algebra.mat = CofiberE2Batches.Batch101.exact117.a := by decide
theorem outgoingLink117 : CofiberE2Batches.Batch002.dependency179.algebra.mat = CofiberE2Batches.Batch101.exact117.b := by decide
theorem linkedExact117 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency179.algebra.mat CofiberE2Batches.Batch002.dependency178.algebra.mat := by
  rw [incomingLink117, outgoingLink117]
  exact CofiberE2Batches.Batch101.exact117valid.2
theorem incomingValid117 : CofiberE2Batches.Batch002.dependency178.Valid := CofiberE2Batches.Batch002.dependency178valid
theorem outgoingValid117 : CofiberE2Batches.Batch002.dependency179.Valid := CofiberE2Batches.Batch002.dependency179valid
theorem incomingLink118 : CofiberE2Batches.Batch001.dependency134.algebra.mat = CofiberE2Batches.Batch101.exact118.a := by decide
theorem outgoingLink118 : CofiberE2Batches.Batch002.dependency180.algebra.mat = CofiberE2Batches.Batch101.exact118.b := by decide
theorem linkedExact118 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency180.algebra.mat CofiberE2Batches.Batch001.dependency134.algebra.mat := by
  rw [incomingLink118, outgoingLink118]
  exact CofiberE2Batches.Batch101.exact118valid.2
theorem incomingValid118 : CofiberE2Batches.Batch001.dependency134.Valid := CofiberE2Batches.Batch001.dependency134valid
theorem outgoingValid118 : CofiberE2Batches.Batch002.dependency180.Valid := CofiberE2Batches.Batch002.dependency180valid
theorem incomingLink119 : CofiberE2Batches.Batch002.dependency181.algebra.mat = CofiberE2Batches.Batch101.exact119.a := by decide
theorem outgoingLink119 : CofiberE2Batches.Batch002.dependency182.algebra.mat = CofiberE2Batches.Batch101.exact119.b := by decide
theorem linkedExact119 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency182.algebra.mat CofiberE2Batches.Batch002.dependency181.algebra.mat := by
  rw [incomingLink119, outgoingLink119]
  exact CofiberE2Batches.Batch101.exact119valid.2
theorem incomingValid119 : CofiberE2Batches.Batch002.dependency181.Valid := CofiberE2Batches.Batch002.dependency181valid
theorem outgoingValid119 : CofiberE2Batches.Batch002.dependency182.Valid := CofiberE2Batches.Batch002.dependency182valid
end CofiberLinkageBatches.Batch001
