import CofiberE2Certificates.Linkage
import CofiberE2Batches.Batch002
import CofiberE2Batches.Batch003
import CofiberE2Batches.Batch004
import CofiberE2Batches.Batch102
import CofiberE2Batches.Batch103
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace CofiberLinkageBatches.Batch003
theorem incomingLink180 : CofiberE2Batches.Batch003.dependency273.algebra.mat = CofiberE2Batches.Batch102.exact180.a := by decide
theorem outgoingLink180 : CofiberE2Batches.Batch003.dependency274.algebra.mat = CofiberE2Batches.Batch102.exact180.b := by decide
theorem linkedExact180 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency274.algebra.mat CofiberE2Batches.Batch003.dependency273.algebra.mat := by
  rw [incomingLink180, outgoingLink180]
  exact CofiberE2Batches.Batch102.exact180valid.2
theorem incomingValid180 : CofiberE2Batches.Batch003.dependency273.Valid := CofiberE2Batches.Batch003.dependency273valid
theorem outgoingValid180 : CofiberE2Batches.Batch003.dependency274.Valid := CofiberE2Batches.Batch003.dependency274valid
theorem incomingLink181 : CofiberE2Batches.Batch003.dependency275.algebra.mat = CofiberE2Batches.Batch102.exact181.a := by decide
theorem outgoingLink181 : CofiberE2Batches.Batch003.dependency276.algebra.mat = CofiberE2Batches.Batch102.exact181.b := by decide
theorem linkedExact181 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency276.algebra.mat CofiberE2Batches.Batch003.dependency275.algebra.mat := by
  rw [incomingLink181, outgoingLink181]
  exact CofiberE2Batches.Batch102.exact181valid.2
theorem incomingValid181 : CofiberE2Batches.Batch003.dependency275.Valid := CofiberE2Batches.Batch003.dependency275valid
theorem outgoingValid181 : CofiberE2Batches.Batch003.dependency276.Valid := CofiberE2Batches.Batch003.dependency276valid
theorem incomingLink182 : CofiberE2Batches.Batch002.dependency226.algebra.mat = CofiberE2Batches.Batch102.exact182.a := by decide
theorem outgoingLink182 : CofiberE2Batches.Batch003.dependency277.algebra.mat = CofiberE2Batches.Batch102.exact182.b := by decide
theorem linkedExact182 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency277.algebra.mat CofiberE2Batches.Batch002.dependency226.algebra.mat := by
  rw [incomingLink182, outgoingLink182]
  exact CofiberE2Batches.Batch102.exact182valid.2
theorem incomingValid182 : CofiberE2Batches.Batch002.dependency226.Valid := CofiberE2Batches.Batch002.dependency226valid
theorem outgoingValid182 : CofiberE2Batches.Batch003.dependency277.Valid := CofiberE2Batches.Batch003.dependency277valid
theorem incomingLink183 : CofiberE2Batches.Batch002.dependency228.algebra.mat = CofiberE2Batches.Batch102.exact183.a := by decide
theorem outgoingLink183 : CofiberE2Batches.Batch003.dependency278.algebra.mat = CofiberE2Batches.Batch102.exact183.b := by decide
theorem linkedExact183 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency278.algebra.mat CofiberE2Batches.Batch002.dependency228.algebra.mat := by
  rw [incomingLink183, outgoingLink183]
  exact CofiberE2Batches.Batch102.exact183valid.2
theorem incomingValid183 : CofiberE2Batches.Batch002.dependency228.Valid := CofiberE2Batches.Batch002.dependency228valid
theorem outgoingValid183 : CofiberE2Batches.Batch003.dependency278.Valid := CofiberE2Batches.Batch003.dependency278valid
theorem incomingLink184 : CofiberE2Batches.Batch002.dependency230.algebra.mat = CofiberE2Batches.Batch102.exact184.a := by decide
theorem outgoingLink184 : CofiberE2Batches.Batch003.dependency279.algebra.mat = CofiberE2Batches.Batch102.exact184.b := by decide
theorem linkedExact184 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency279.algebra.mat CofiberE2Batches.Batch002.dependency230.algebra.mat := by
  rw [incomingLink184, outgoingLink184]
  exact CofiberE2Batches.Batch102.exact184valid.2
theorem incomingValid184 : CofiberE2Batches.Batch002.dependency230.Valid := CofiberE2Batches.Batch002.dependency230valid
theorem outgoingValid184 : CofiberE2Batches.Batch003.dependency279.Valid := CofiberE2Batches.Batch003.dependency279valid
theorem incomingLink185 : CofiberE2Batches.Batch003.dependency280.algebra.mat = CofiberE2Batches.Batch102.exact185.a := by decide
theorem outgoingLink185 : CofiberE2Batches.Batch003.dependency281.algebra.mat = CofiberE2Batches.Batch102.exact185.b := by decide
theorem linkedExact185 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency281.algebra.mat CofiberE2Batches.Batch003.dependency280.algebra.mat := by
  rw [incomingLink185, outgoingLink185]
  exact CofiberE2Batches.Batch102.exact185valid.2
theorem incomingValid185 : CofiberE2Batches.Batch003.dependency280.Valid := CofiberE2Batches.Batch003.dependency280valid
theorem outgoingValid185 : CofiberE2Batches.Batch003.dependency281.Valid := CofiberE2Batches.Batch003.dependency281valid
theorem incomingLink186 : CofiberE2Batches.Batch002.dependency234.algebra.mat = CofiberE2Batches.Batch102.exact186.a := by decide
theorem outgoingLink186 : CofiberE2Batches.Batch003.dependency282.algebra.mat = CofiberE2Batches.Batch102.exact186.b := by decide
theorem linkedExact186 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency282.algebra.mat CofiberE2Batches.Batch002.dependency234.algebra.mat := by
  rw [incomingLink186, outgoingLink186]
  exact CofiberE2Batches.Batch102.exact186valid.2
theorem incomingValid186 : CofiberE2Batches.Batch002.dependency234.Valid := CofiberE2Batches.Batch002.dependency234valid
theorem outgoingValid186 : CofiberE2Batches.Batch003.dependency282.Valid := CofiberE2Batches.Batch003.dependency282valid
theorem incomingLink187 : CofiberE2Batches.Batch003.dependency283.algebra.mat = CofiberE2Batches.Batch102.exact187.a := by decide
theorem outgoingLink187 : CofiberE2Batches.Batch003.dependency284.algebra.mat = CofiberE2Batches.Batch102.exact187.b := by decide
theorem linkedExact187 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency284.algebra.mat CofiberE2Batches.Batch003.dependency283.algebra.mat := by
  rw [incomingLink187, outgoingLink187]
  exact CofiberE2Batches.Batch102.exact187valid.2
theorem incomingValid187 : CofiberE2Batches.Batch003.dependency283.Valid := CofiberE2Batches.Batch003.dependency283valid
theorem outgoingValid187 : CofiberE2Batches.Batch003.dependency284.Valid := CofiberE2Batches.Batch003.dependency284valid
theorem incomingLink188 : CofiberE2Batches.Batch002.dependency236.algebra.mat = CofiberE2Batches.Batch102.exact188.a := by decide
theorem outgoingLink188 : CofiberE2Batches.Batch003.dependency285.algebra.mat = CofiberE2Batches.Batch102.exact188.b := by decide
theorem linkedExact188 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency285.algebra.mat CofiberE2Batches.Batch002.dependency236.algebra.mat := by
  rw [incomingLink188, outgoingLink188]
  exact CofiberE2Batches.Batch102.exact188valid.2
theorem incomingValid188 : CofiberE2Batches.Batch002.dependency236.Valid := CofiberE2Batches.Batch002.dependency236valid
theorem outgoingValid188 : CofiberE2Batches.Batch003.dependency285.Valid := CofiberE2Batches.Batch003.dependency285valid
theorem incomingLink189 : CofiberE2Batches.Batch002.dependency238.algebra.mat = CofiberE2Batches.Batch102.exact189.a := by decide
theorem outgoingLink189 : CofiberE2Batches.Batch003.dependency286.algebra.mat = CofiberE2Batches.Batch102.exact189.b := by decide
theorem linkedExact189 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency286.algebra.mat CofiberE2Batches.Batch002.dependency238.algebra.mat := by
  rw [incomingLink189, outgoingLink189]
  exact CofiberE2Batches.Batch102.exact189valid.2
theorem incomingValid189 : CofiberE2Batches.Batch002.dependency238.Valid := CofiberE2Batches.Batch002.dependency238valid
theorem outgoingValid189 : CofiberE2Batches.Batch003.dependency286.Valid := CofiberE2Batches.Batch003.dependency286valid
theorem incomingLink190 : CofiberE2Batches.Batch003.dependency242.algebra.mat = CofiberE2Batches.Batch102.exact190.a := by decide
theorem outgoingLink190 : CofiberE2Batches.Batch003.dependency287.algebra.mat = CofiberE2Batches.Batch102.exact190.b := by decide
theorem linkedExact190 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency287.algebra.mat CofiberE2Batches.Batch003.dependency242.algebra.mat := by
  rw [incomingLink190, outgoingLink190]
  exact CofiberE2Batches.Batch102.exact190valid.2
theorem incomingValid190 : CofiberE2Batches.Batch003.dependency242.Valid := CofiberE2Batches.Batch003.dependency242valid
theorem outgoingValid190 : CofiberE2Batches.Batch003.dependency287.Valid := CofiberE2Batches.Batch003.dependency287valid
theorem incomingLink191 : CofiberE2Batches.Batch003.dependency244.algebra.mat = CofiberE2Batches.Batch102.exact191.a := by decide
theorem outgoingLink191 : CofiberE2Batches.Batch003.dependency288.algebra.mat = CofiberE2Batches.Batch102.exact191.b := by decide
theorem linkedExact191 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency288.algebra.mat CofiberE2Batches.Batch003.dependency244.algebra.mat := by
  rw [incomingLink191, outgoingLink191]
  exact CofiberE2Batches.Batch102.exact191valid.2
theorem incomingValid191 : CofiberE2Batches.Batch003.dependency244.Valid := CofiberE2Batches.Batch003.dependency244valid
theorem outgoingValid191 : CofiberE2Batches.Batch003.dependency288.Valid := CofiberE2Batches.Batch003.dependency288valid
theorem incomingLink192 : CofiberE2Batches.Batch003.dependency246.algebra.mat = CofiberE2Batches.Batch102.exact192.a := by decide
theorem outgoingLink192 : CofiberE2Batches.Batch003.dependency289.algebra.mat = CofiberE2Batches.Batch102.exact192.b := by decide
theorem linkedExact192 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency289.algebra.mat CofiberE2Batches.Batch003.dependency246.algebra.mat := by
  rw [incomingLink192, outgoingLink192]
  exact CofiberE2Batches.Batch102.exact192valid.2
theorem incomingValid192 : CofiberE2Batches.Batch003.dependency246.Valid := CofiberE2Batches.Batch003.dependency246valid
theorem outgoingValid192 : CofiberE2Batches.Batch003.dependency289.Valid := CofiberE2Batches.Batch003.dependency289valid
theorem incomingLink193 : CofiberE2Batches.Batch003.dependency248.algebra.mat = CofiberE2Batches.Batch102.exact193.a := by decide
theorem outgoingLink193 : CofiberE2Batches.Batch003.dependency290.algebra.mat = CofiberE2Batches.Batch102.exact193.b := by decide
theorem linkedExact193 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency290.algebra.mat CofiberE2Batches.Batch003.dependency248.algebra.mat := by
  rw [incomingLink193, outgoingLink193]
  exact CofiberE2Batches.Batch102.exact193valid.2
theorem incomingValid193 : CofiberE2Batches.Batch003.dependency248.Valid := CofiberE2Batches.Batch003.dependency248valid
theorem outgoingValid193 : CofiberE2Batches.Batch003.dependency290.Valid := CofiberE2Batches.Batch003.dependency290valid
theorem incomingLink194 : CofiberE2Batches.Batch003.dependency291.algebra.mat = CofiberE2Batches.Batch102.exact194.a := by decide
theorem outgoingLink194 : CofiberE2Batches.Batch003.dependency292.algebra.mat = CofiberE2Batches.Batch102.exact194.b := by decide
theorem linkedExact194 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency292.algebra.mat CofiberE2Batches.Batch003.dependency291.algebra.mat := by
  rw [incomingLink194, outgoingLink194]
  exact CofiberE2Batches.Batch102.exact194valid.2
theorem incomingValid194 : CofiberE2Batches.Batch003.dependency291.Valid := CofiberE2Batches.Batch003.dependency291valid
theorem outgoingValid194 : CofiberE2Batches.Batch003.dependency292.Valid := CofiberE2Batches.Batch003.dependency292valid
theorem incomingLink195 : CofiberE2Batches.Batch003.dependency252.algebra.mat = CofiberE2Batches.Batch102.exact195.a := by decide
theorem outgoingLink195 : CofiberE2Batches.Batch003.dependency293.algebra.mat = CofiberE2Batches.Batch102.exact195.b := by decide
theorem linkedExact195 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency293.algebra.mat CofiberE2Batches.Batch003.dependency252.algebra.mat := by
  rw [incomingLink195, outgoingLink195]
  exact CofiberE2Batches.Batch102.exact195valid.2
theorem incomingValid195 : CofiberE2Batches.Batch003.dependency252.Valid := CofiberE2Batches.Batch003.dependency252valid
theorem outgoingValid195 : CofiberE2Batches.Batch003.dependency293.Valid := CofiberE2Batches.Batch003.dependency293valid
theorem incomingLink196 : CofiberE2Batches.Batch003.dependency254.algebra.mat = CofiberE2Batches.Batch102.exact196.a := by decide
theorem outgoingLink196 : CofiberE2Batches.Batch003.dependency294.algebra.mat = CofiberE2Batches.Batch102.exact196.b := by decide
theorem linkedExact196 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency294.algebra.mat CofiberE2Batches.Batch003.dependency254.algebra.mat := by
  rw [incomingLink196, outgoingLink196]
  exact CofiberE2Batches.Batch102.exact196valid.2
theorem incomingValid196 : CofiberE2Batches.Batch003.dependency254.Valid := CofiberE2Batches.Batch003.dependency254valid
theorem outgoingValid196 : CofiberE2Batches.Batch003.dependency294.Valid := CofiberE2Batches.Batch003.dependency294valid
theorem incomingLink197 : CofiberE2Batches.Batch003.dependency258.algebra.mat = CofiberE2Batches.Batch102.exact197.a := by decide
theorem outgoingLink197 : CofiberE2Batches.Batch003.dependency295.algebra.mat = CofiberE2Batches.Batch102.exact197.b := by decide
theorem linkedExact197 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency295.algebra.mat CofiberE2Batches.Batch003.dependency258.algebra.mat := by
  rw [incomingLink197, outgoingLink197]
  exact CofiberE2Batches.Batch102.exact197valid.2
theorem incomingValid197 : CofiberE2Batches.Batch003.dependency258.Valid := CofiberE2Batches.Batch003.dependency258valid
theorem outgoingValid197 : CofiberE2Batches.Batch003.dependency295.Valid := CofiberE2Batches.Batch003.dependency295valid
theorem incomingLink198 : CofiberE2Batches.Batch003.dependency296.algebra.mat = CofiberE2Batches.Batch102.exact198.a := by decide
theorem outgoingLink198 : CofiberE2Batches.Batch003.dependency297.algebra.mat = CofiberE2Batches.Batch102.exact198.b := by decide
theorem linkedExact198 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency297.algebra.mat CofiberE2Batches.Batch003.dependency296.algebra.mat := by
  rw [incomingLink198, outgoingLink198]
  exact CofiberE2Batches.Batch102.exact198valid.2
theorem incomingValid198 : CofiberE2Batches.Batch003.dependency296.Valid := CofiberE2Batches.Batch003.dependency296valid
theorem outgoingValid198 : CofiberE2Batches.Batch003.dependency297.Valid := CofiberE2Batches.Batch003.dependency297valid
theorem incomingLink199 : CofiberE2Batches.Batch003.dependency260.algebra.mat = CofiberE2Batches.Batch102.exact199.a := by decide
theorem outgoingLink199 : CofiberE2Batches.Batch003.dependency298.algebra.mat = CofiberE2Batches.Batch102.exact199.b := by decide
theorem linkedExact199 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency298.algebra.mat CofiberE2Batches.Batch003.dependency260.algebra.mat := by
  rw [incomingLink199, outgoingLink199]
  exact CofiberE2Batches.Batch102.exact199valid.2
theorem incomingValid199 : CofiberE2Batches.Batch003.dependency260.Valid := CofiberE2Batches.Batch003.dependency260valid
theorem outgoingValid199 : CofiberE2Batches.Batch003.dependency298.Valid := CofiberE2Batches.Batch003.dependency298valid
theorem incomingLink200 : CofiberE2Batches.Batch003.dependency262.algebra.mat = CofiberE2Batches.Batch102.exact200.a := by decide
theorem outgoingLink200 : CofiberE2Batches.Batch003.dependency299.algebra.mat = CofiberE2Batches.Batch102.exact200.b := by decide
theorem linkedExact200 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency299.algebra.mat CofiberE2Batches.Batch003.dependency262.algebra.mat := by
  rw [incomingLink200, outgoingLink200]
  exact CofiberE2Batches.Batch102.exact200valid.2
theorem incomingValid200 : CofiberE2Batches.Batch003.dependency262.Valid := CofiberE2Batches.Batch003.dependency262valid
theorem outgoingValid200 : CofiberE2Batches.Batch003.dependency299.Valid := CofiberE2Batches.Batch003.dependency299valid
theorem incomingLink201 : CofiberE2Batches.Batch003.dependency300.algebra.mat = CofiberE2Batches.Batch102.exact201.a := by decide
theorem outgoingLink201 : CofiberE2Batches.Batch003.dependency301.algebra.mat = CofiberE2Batches.Batch102.exact201.b := by decide
theorem linkedExact201 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency301.algebra.mat CofiberE2Batches.Batch003.dependency300.algebra.mat := by
  rw [incomingLink201, outgoingLink201]
  exact CofiberE2Batches.Batch102.exact201valid.2
theorem incomingValid201 : CofiberE2Batches.Batch003.dependency300.Valid := CofiberE2Batches.Batch003.dependency300valid
theorem outgoingValid201 : CofiberE2Batches.Batch003.dependency301.Valid := CofiberE2Batches.Batch003.dependency301valid
theorem incomingLink202 : CofiberE2Batches.Batch003.dependency264.algebra.mat = CofiberE2Batches.Batch102.exact202.a := by decide
theorem outgoingLink202 : CofiberE2Batches.Batch003.dependency302.algebra.mat = CofiberE2Batches.Batch102.exact202.b := by decide
theorem linkedExact202 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency302.algebra.mat CofiberE2Batches.Batch003.dependency264.algebra.mat := by
  rw [incomingLink202, outgoingLink202]
  exact CofiberE2Batches.Batch102.exact202valid.2
theorem incomingValid202 : CofiberE2Batches.Batch003.dependency264.Valid := CofiberE2Batches.Batch003.dependency264valid
theorem outgoingValid202 : CofiberE2Batches.Batch003.dependency302.Valid := CofiberE2Batches.Batch003.dependency302valid
theorem incomingLink203 : CofiberE2Batches.Batch003.dependency303.algebra.mat = CofiberE2Batches.Batch102.exact203.a := by decide
theorem outgoingLink203 : CofiberE2Batches.Batch003.dependency304.algebra.mat = CofiberE2Batches.Batch102.exact203.b := by decide
theorem linkedExact203 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency304.algebra.mat CofiberE2Batches.Batch003.dependency303.algebra.mat := by
  rw [incomingLink203, outgoingLink203]
  exact CofiberE2Batches.Batch102.exact203valid.2
theorem incomingValid203 : CofiberE2Batches.Batch003.dependency303.Valid := CofiberE2Batches.Batch003.dependency303valid
theorem outgoingValid203 : CofiberE2Batches.Batch003.dependency304.Valid := CofiberE2Batches.Batch003.dependency304valid
theorem incomingLink204 : CofiberE2Batches.Batch003.dependency266.algebra.mat = CofiberE2Batches.Batch102.exact204.a := by decide
theorem outgoingLink204 : CofiberE2Batches.Batch003.dependency305.algebra.mat = CofiberE2Batches.Batch102.exact204.b := by decide
theorem linkedExact204 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency305.algebra.mat CofiberE2Batches.Batch003.dependency266.algebra.mat := by
  rw [incomingLink204, outgoingLink204]
  exact CofiberE2Batches.Batch102.exact204valid.2
theorem incomingValid204 : CofiberE2Batches.Batch003.dependency266.Valid := CofiberE2Batches.Batch003.dependency266valid
theorem outgoingValid204 : CofiberE2Batches.Batch003.dependency305.Valid := CofiberE2Batches.Batch003.dependency305valid
theorem incomingLink205 : CofiberE2Batches.Batch003.dependency306.algebra.mat = CofiberE2Batches.Batch102.exact205.a := by decide
theorem outgoingLink205 : CofiberE2Batches.Batch003.dependency307.algebra.mat = CofiberE2Batches.Batch102.exact205.b := by decide
theorem linkedExact205 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency307.algebra.mat CofiberE2Batches.Batch003.dependency306.algebra.mat := by
  rw [incomingLink205, outgoingLink205]
  exact CofiberE2Batches.Batch102.exact205valid.2
theorem incomingValid205 : CofiberE2Batches.Batch003.dependency306.Valid := CofiberE2Batches.Batch003.dependency306valid
theorem outgoingValid205 : CofiberE2Batches.Batch003.dependency307.Valid := CofiberE2Batches.Batch003.dependency307valid
theorem incomingLink206 : CofiberE2Batches.Batch003.dependency268.algebra.mat = CofiberE2Batches.Batch102.exact206.a := by decide
theorem outgoingLink206 : CofiberE2Batches.Batch003.dependency308.algebra.mat = CofiberE2Batches.Batch102.exact206.b := by decide
theorem linkedExact206 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency308.algebra.mat CofiberE2Batches.Batch003.dependency268.algebra.mat := by
  rw [incomingLink206, outgoingLink206]
  exact CofiberE2Batches.Batch102.exact206valid.2
theorem incomingValid206 : CofiberE2Batches.Batch003.dependency268.Valid := CofiberE2Batches.Batch003.dependency268valid
theorem outgoingValid206 : CofiberE2Batches.Batch003.dependency308.Valid := CofiberE2Batches.Batch003.dependency308valid
theorem incomingLink207 : CofiberE2Batches.Batch003.dependency309.algebra.mat = CofiberE2Batches.Batch102.exact207.a := by decide
theorem outgoingLink207 : CofiberE2Batches.Batch003.dependency310.algebra.mat = CofiberE2Batches.Batch102.exact207.b := by decide
theorem linkedExact207 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency310.algebra.mat CofiberE2Batches.Batch003.dependency309.algebra.mat := by
  rw [incomingLink207, outgoingLink207]
  exact CofiberE2Batches.Batch102.exact207valid.2
theorem incomingValid207 : CofiberE2Batches.Batch003.dependency309.Valid := CofiberE2Batches.Batch003.dependency309valid
theorem outgoingValid207 : CofiberE2Batches.Batch003.dependency310.Valid := CofiberE2Batches.Batch003.dependency310valid
theorem incomingLink208 : CofiberE2Batches.Batch003.dependency270.algebra.mat = CofiberE2Batches.Batch102.exact208.a := by decide
theorem outgoingLink208 : CofiberE2Batches.Batch003.dependency311.algebra.mat = CofiberE2Batches.Batch102.exact208.b := by decide
theorem linkedExact208 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency311.algebra.mat CofiberE2Batches.Batch003.dependency270.algebra.mat := by
  rw [incomingLink208, outgoingLink208]
  exact CofiberE2Batches.Batch102.exact208valid.2
theorem incomingValid208 : CofiberE2Batches.Batch003.dependency270.Valid := CofiberE2Batches.Batch003.dependency270valid
theorem outgoingValid208 : CofiberE2Batches.Batch003.dependency311.Valid := CofiberE2Batches.Batch003.dependency311valid
theorem incomingLink209 : CofiberE2Batches.Batch003.dependency272.algebra.mat = CofiberE2Batches.Batch102.exact209.a := by decide
theorem outgoingLink209 : CofiberE2Batches.Batch003.dependency312.algebra.mat = CofiberE2Batches.Batch102.exact209.b := by decide
theorem linkedExact209 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency312.algebra.mat CofiberE2Batches.Batch003.dependency272.algebra.mat := by
  rw [incomingLink209, outgoingLink209]
  exact CofiberE2Batches.Batch102.exact209valid.2
theorem incomingValid209 : CofiberE2Batches.Batch003.dependency272.Valid := CofiberE2Batches.Batch003.dependency272valid
theorem outgoingValid209 : CofiberE2Batches.Batch003.dependency312.Valid := CofiberE2Batches.Batch003.dependency312valid
theorem incomingLink210 : CofiberE2Batches.Batch003.dependency274.algebra.mat = CofiberE2Batches.Batch102.exact210.a := by decide
theorem outgoingLink210 : CofiberE2Batches.Batch003.dependency313.algebra.mat = CofiberE2Batches.Batch102.exact210.b := by decide
theorem linkedExact210 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency313.algebra.mat CofiberE2Batches.Batch003.dependency274.algebra.mat := by
  rw [incomingLink210, outgoingLink210]
  exact CofiberE2Batches.Batch102.exact210valid.2
theorem incomingValid210 : CofiberE2Batches.Batch003.dependency274.Valid := CofiberE2Batches.Batch003.dependency274valid
theorem outgoingValid210 : CofiberE2Batches.Batch003.dependency313.Valid := CofiberE2Batches.Batch003.dependency313valid
theorem incomingLink211 : CofiberE2Batches.Batch003.dependency276.algebra.mat = CofiberE2Batches.Batch102.exact211.a := by decide
theorem outgoingLink211 : CofiberE2Batches.Batch003.dependency314.algebra.mat = CofiberE2Batches.Batch102.exact211.b := by decide
theorem linkedExact211 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency314.algebra.mat CofiberE2Batches.Batch003.dependency276.algebra.mat := by
  rw [incomingLink211, outgoingLink211]
  exact CofiberE2Batches.Batch102.exact211valid.2
theorem incomingValid211 : CofiberE2Batches.Batch003.dependency276.Valid := CofiberE2Batches.Batch003.dependency276valid
theorem outgoingValid211 : CofiberE2Batches.Batch003.dependency314.Valid := CofiberE2Batches.Batch003.dependency314valid
theorem incomingLink212 : CofiberE2Batches.Batch003.dependency315.algebra.mat = CofiberE2Batches.Batch102.exact212.a := by decide
theorem outgoingLink212 : CofiberE2Batches.Batch002.dependency231.algebra.mat = CofiberE2Batches.Batch102.exact212.b := by decide
theorem linkedExact212 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency231.algebra.mat CofiberE2Batches.Batch003.dependency315.algebra.mat := by
  rw [incomingLink212, outgoingLink212]
  exact CofiberE2Batches.Batch102.exact212valid.2
theorem incomingValid212 : CofiberE2Batches.Batch003.dependency315.Valid := CofiberE2Batches.Batch003.dependency315valid
theorem outgoingValid212 : CofiberE2Batches.Batch002.dependency231.Valid := CofiberE2Batches.Batch002.dependency231valid
theorem incomingLink213 : CofiberE2Batches.Batch003.dependency316.algebra.mat = CofiberE2Batches.Batch102.exact213.a := by decide
theorem outgoingLink213 : CofiberE2Batches.Batch002.dependency239.algebra.mat = CofiberE2Batches.Batch102.exact213.b := by decide
theorem linkedExact213 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch002.dependency239.algebra.mat CofiberE2Batches.Batch003.dependency316.algebra.mat := by
  rw [incomingLink213, outgoingLink213]
  exact CofiberE2Batches.Batch102.exact213valid.2
theorem incomingValid213 : CofiberE2Batches.Batch003.dependency316.Valid := CofiberE2Batches.Batch003.dependency316valid
theorem outgoingValid213 : CofiberE2Batches.Batch002.dependency239.Valid := CofiberE2Batches.Batch002.dependency239valid
theorem incomingLink214 : CofiberE2Batches.Batch003.dependency281.algebra.mat = CofiberE2Batches.Batch102.exact214.a := by decide
theorem outgoingLink214 : CofiberE2Batches.Batch003.dependency317.algebra.mat = CofiberE2Batches.Batch102.exact214.b := by decide
theorem linkedExact214 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency317.algebra.mat CofiberE2Batches.Batch003.dependency281.algebra.mat := by
  rw [incomingLink214, outgoingLink214]
  exact CofiberE2Batches.Batch102.exact214valid.2
theorem incomingValid214 : CofiberE2Batches.Batch003.dependency281.Valid := CofiberE2Batches.Batch003.dependency281valid
theorem outgoingValid214 : CofiberE2Batches.Batch003.dependency317.Valid := CofiberE2Batches.Batch003.dependency317valid
theorem incomingLink215 : CofiberE2Batches.Batch003.dependency282.algebra.mat = CofiberE2Batches.Batch102.exact215.a := by decide
theorem outgoingLink215 : CofiberE2Batches.Batch003.dependency241.algebra.mat = CofiberE2Batches.Batch102.exact215.b := by decide
theorem linkedExact215 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency241.algebra.mat CofiberE2Batches.Batch003.dependency282.algebra.mat := by
  rw [incomingLink215, outgoingLink215]
  exact CofiberE2Batches.Batch102.exact215valid.2
theorem incomingValid215 : CofiberE2Batches.Batch003.dependency282.Valid := CofiberE2Batches.Batch003.dependency282valid
theorem outgoingValid215 : CofiberE2Batches.Batch003.dependency241.Valid := CofiberE2Batches.Batch003.dependency241valid
theorem incomingLink216 : CofiberE2Batches.Batch003.dependency284.algebra.mat = CofiberE2Batches.Batch102.exact216.a := by decide
theorem outgoingLink216 : CofiberE2Batches.Batch003.dependency318.algebra.mat = CofiberE2Batches.Batch102.exact216.b := by decide
theorem linkedExact216 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency318.algebra.mat CofiberE2Batches.Batch003.dependency284.algebra.mat := by
  rw [incomingLink216, outgoingLink216]
  exact CofiberE2Batches.Batch102.exact216valid.2
theorem incomingValid216 : CofiberE2Batches.Batch003.dependency284.Valid := CofiberE2Batches.Batch003.dependency284valid
theorem outgoingValid216 : CofiberE2Batches.Batch003.dependency318.Valid := CofiberE2Batches.Batch003.dependency318valid
theorem incomingLink217 : CofiberE2Batches.Batch003.dependency319.algebra.mat = CofiberE2Batches.Batch102.exact217.a := by decide
theorem outgoingLink217 : CofiberE2Batches.Batch003.dependency249.algebra.mat = CofiberE2Batches.Batch102.exact217.b := by decide
theorem linkedExact217 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency249.algebra.mat CofiberE2Batches.Batch003.dependency319.algebra.mat := by
  rw [incomingLink217, outgoingLink217]
  exact CofiberE2Batches.Batch102.exact217valid.2
theorem incomingValid217 : CofiberE2Batches.Batch003.dependency319.Valid := CofiberE2Batches.Batch003.dependency319valid
theorem outgoingValid217 : CofiberE2Batches.Batch003.dependency249.Valid := CofiberE2Batches.Batch003.dependency249valid
theorem incomingLink218 : CofiberE2Batches.Batch003.dependency287.algebra.mat = CofiberE2Batches.Batch102.exact218.a := by decide
theorem outgoingLink218 : CofiberE2Batches.Batch004.dependency320.algebra.mat = CofiberE2Batches.Batch102.exact218.b := by decide
theorem linkedExact218 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency320.algebra.mat CofiberE2Batches.Batch003.dependency287.algebra.mat := by
  rw [incomingLink218, outgoingLink218]
  exact CofiberE2Batches.Batch102.exact218valid.2
theorem incomingValid218 : CofiberE2Batches.Batch003.dependency287.Valid := CofiberE2Batches.Batch003.dependency287valid
theorem outgoingValid218 : CofiberE2Batches.Batch004.dependency320.Valid := CofiberE2Batches.Batch004.dependency320valid
theorem incomingLink219 : CofiberE2Batches.Batch003.dependency288.algebra.mat = CofiberE2Batches.Batch103.exact219.a := by decide
theorem outgoingLink219 : CofiberE2Batches.Batch004.dependency321.algebra.mat = CofiberE2Batches.Batch103.exact219.b := by decide
theorem linkedExact219 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency321.algebra.mat CofiberE2Batches.Batch003.dependency288.algebra.mat := by
  rw [incomingLink219, outgoingLink219]
  exact CofiberE2Batches.Batch103.exact219valid.2
theorem incomingValid219 : CofiberE2Batches.Batch003.dependency288.Valid := CofiberE2Batches.Batch003.dependency288valid
theorem outgoingValid219 : CofiberE2Batches.Batch004.dependency321.Valid := CofiberE2Batches.Batch004.dependency321valid
theorem incomingLink220 : CofiberE2Batches.Batch004.dependency322.algebra.mat = CofiberE2Batches.Batch103.exact220.a := by decide
theorem outgoingLink220 : CofiberE2Batches.Batch003.dependency255.algebra.mat = CofiberE2Batches.Batch103.exact220.b := by decide
theorem linkedExact220 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch003.dependency255.algebra.mat CofiberE2Batches.Batch004.dependency322.algebra.mat := by
  rw [incomingLink220, outgoingLink220]
  exact CofiberE2Batches.Batch103.exact220valid.2
theorem incomingValid220 : CofiberE2Batches.Batch004.dependency322.Valid := CofiberE2Batches.Batch004.dependency322valid
theorem outgoingValid220 : CofiberE2Batches.Batch003.dependency255.Valid := CofiberE2Batches.Batch003.dependency255valid
theorem incomingLink221 : CofiberE2Batches.Batch004.dependency323.algebra.mat = CofiberE2Batches.Batch103.exact221.a := by decide
theorem outgoingLink221 : CofiberE2Batches.Batch004.dependency324.algebra.mat = CofiberE2Batches.Batch103.exact221.b := by decide
theorem linkedExact221 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency324.algebra.mat CofiberE2Batches.Batch004.dependency323.algebra.mat := by
  rw [incomingLink221, outgoingLink221]
  exact CofiberE2Batches.Batch103.exact221valid.2
theorem incomingValid221 : CofiberE2Batches.Batch004.dependency323.Valid := CofiberE2Batches.Batch004.dependency323valid
theorem outgoingValid221 : CofiberE2Batches.Batch004.dependency324.Valid := CofiberE2Batches.Batch004.dependency324valid
theorem incomingLink222 : CofiberE2Batches.Batch004.dependency325.algebra.mat = CofiberE2Batches.Batch103.exact222.a := by decide
theorem outgoingLink222 : CofiberE2Batches.Batch004.dependency326.algebra.mat = CofiberE2Batches.Batch103.exact222.b := by decide
theorem linkedExact222 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency326.algebra.mat CofiberE2Batches.Batch004.dependency325.algebra.mat := by
  rw [incomingLink222, outgoingLink222]
  exact CofiberE2Batches.Batch103.exact222valid.2
theorem incomingValid222 : CofiberE2Batches.Batch004.dependency325.Valid := CofiberE2Batches.Batch004.dependency325valid
theorem outgoingValid222 : CofiberE2Batches.Batch004.dependency326.Valid := CofiberE2Batches.Batch004.dependency326valid
theorem incomingLink223 : CofiberE2Batches.Batch003.dependency292.algebra.mat = CofiberE2Batches.Batch103.exact223.a := by decide
theorem outgoingLink223 : CofiberE2Batches.Batch004.dependency327.algebra.mat = CofiberE2Batches.Batch103.exact223.b := by decide
theorem linkedExact223 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency327.algebra.mat CofiberE2Batches.Batch003.dependency292.algebra.mat := by
  rw [incomingLink223, outgoingLink223]
  exact CofiberE2Batches.Batch103.exact223valid.2
theorem incomingValid223 : CofiberE2Batches.Batch003.dependency292.Valid := CofiberE2Batches.Batch003.dependency292valid
theorem outgoingValid223 : CofiberE2Batches.Batch004.dependency327.Valid := CofiberE2Batches.Batch004.dependency327valid
theorem incomingLink224 : CofiberE2Batches.Batch003.dependency293.algebra.mat = CofiberE2Batches.Batch103.exact224.a := by decide
theorem outgoingLink224 : CofiberE2Batches.Batch004.dependency328.algebra.mat = CofiberE2Batches.Batch103.exact224.b := by decide
theorem linkedExact224 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency328.algebra.mat CofiberE2Batches.Batch003.dependency293.algebra.mat := by
  rw [incomingLink224, outgoingLink224]
  exact CofiberE2Batches.Batch103.exact224valid.2
theorem incomingValid224 : CofiberE2Batches.Batch003.dependency293.Valid := CofiberE2Batches.Batch003.dependency293valid
theorem outgoingValid224 : CofiberE2Batches.Batch004.dependency328.Valid := CofiberE2Batches.Batch004.dependency328valid
theorem incomingLink225 : CofiberE2Batches.Batch004.dependency329.algebra.mat = CofiberE2Batches.Batch103.exact225.a := by decide
theorem outgoingLink225 : CofiberE2Batches.Batch004.dependency330.algebra.mat = CofiberE2Batches.Batch103.exact225.b := by decide
theorem linkedExact225 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency330.algebra.mat CofiberE2Batches.Batch004.dependency329.algebra.mat := by
  rw [incomingLink225, outgoingLink225]
  exact CofiberE2Batches.Batch103.exact225valid.2
theorem incomingValid225 : CofiberE2Batches.Batch004.dependency329.Valid := CofiberE2Batches.Batch004.dependency329valid
theorem outgoingValid225 : CofiberE2Batches.Batch004.dependency330.Valid := CofiberE2Batches.Batch004.dependency330valid
theorem incomingLink226 : CofiberE2Batches.Batch004.dependency331.algebra.mat = CofiberE2Batches.Batch103.exact226.a := by decide
theorem outgoingLink226 : CofiberE2Batches.Batch004.dependency332.algebra.mat = CofiberE2Batches.Batch103.exact226.b := by decide
theorem linkedExact226 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency332.algebra.mat CofiberE2Batches.Batch004.dependency331.algebra.mat := by
  rw [incomingLink226, outgoingLink226]
  exact CofiberE2Batches.Batch103.exact226valid.2
theorem incomingValid226 : CofiberE2Batches.Batch004.dependency331.Valid := CofiberE2Batches.Batch004.dependency331valid
theorem outgoingValid226 : CofiberE2Batches.Batch004.dependency332.Valid := CofiberE2Batches.Batch004.dependency332valid
theorem incomingLink227 : CofiberE2Batches.Batch004.dependency333.algebra.mat = CofiberE2Batches.Batch103.exact227.a := by decide
theorem outgoingLink227 : CofiberE2Batches.Batch004.dependency334.algebra.mat = CofiberE2Batches.Batch103.exact227.b := by decide
theorem linkedExact227 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency334.algebra.mat CofiberE2Batches.Batch004.dependency333.algebra.mat := by
  rw [incomingLink227, outgoingLink227]
  exact CofiberE2Batches.Batch103.exact227valid.2
theorem incomingValid227 : CofiberE2Batches.Batch004.dependency333.Valid := CofiberE2Batches.Batch004.dependency333valid
theorem outgoingValid227 : CofiberE2Batches.Batch004.dependency334.Valid := CofiberE2Batches.Batch004.dependency334valid
theorem incomingLink228 : CofiberE2Batches.Batch003.dependency297.algebra.mat = CofiberE2Batches.Batch103.exact228.a := by decide
theorem outgoingLink228 : CofiberE2Batches.Batch004.dependency335.algebra.mat = CofiberE2Batches.Batch103.exact228.b := by decide
theorem linkedExact228 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency335.algebra.mat CofiberE2Batches.Batch003.dependency297.algebra.mat := by
  rw [incomingLink228, outgoingLink228]
  exact CofiberE2Batches.Batch103.exact228valid.2
theorem incomingValid228 : CofiberE2Batches.Batch003.dependency297.Valid := CofiberE2Batches.Batch003.dependency297valid
theorem outgoingValid228 : CofiberE2Batches.Batch004.dependency335.Valid := CofiberE2Batches.Batch004.dependency335valid
theorem incomingLink229 : CofiberE2Batches.Batch004.dependency336.algebra.mat = CofiberE2Batches.Batch103.exact229.a := by decide
theorem outgoingLink229 : CofiberE2Batches.Batch004.dependency337.algebra.mat = CofiberE2Batches.Batch103.exact229.b := by decide
theorem linkedExact229 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency337.algebra.mat CofiberE2Batches.Batch004.dependency336.algebra.mat := by
  rw [incomingLink229, outgoingLink229]
  exact CofiberE2Batches.Batch103.exact229valid.2
theorem incomingValid229 : CofiberE2Batches.Batch004.dependency336.Valid := CofiberE2Batches.Batch004.dependency336valid
theorem outgoingValid229 : CofiberE2Batches.Batch004.dependency337.Valid := CofiberE2Batches.Batch004.dependency337valid
theorem incomingLink230 : CofiberE2Batches.Batch003.dependency301.algebra.mat = CofiberE2Batches.Batch103.exact230.a := by decide
theorem outgoingLink230 : CofiberE2Batches.Batch004.dependency338.algebra.mat = CofiberE2Batches.Batch103.exact230.b := by decide
theorem linkedExact230 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency338.algebra.mat CofiberE2Batches.Batch003.dependency301.algebra.mat := by
  rw [incomingLink230, outgoingLink230]
  exact CofiberE2Batches.Batch103.exact230valid.2
theorem incomingValid230 : CofiberE2Batches.Batch003.dependency301.Valid := CofiberE2Batches.Batch003.dependency301valid
theorem outgoingValid230 : CofiberE2Batches.Batch004.dependency338.Valid := CofiberE2Batches.Batch004.dependency338valid
theorem incomingLink231 : CofiberE2Batches.Batch003.dependency304.algebra.mat = CofiberE2Batches.Batch103.exact231.a := by decide
theorem outgoingLink231 : CofiberE2Batches.Batch004.dependency339.algebra.mat = CofiberE2Batches.Batch103.exact231.b := by decide
theorem linkedExact231 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency339.algebra.mat CofiberE2Batches.Batch003.dependency304.algebra.mat := by
  rw [incomingLink231, outgoingLink231]
  exact CofiberE2Batches.Batch103.exact231valid.2
theorem incomingValid231 : CofiberE2Batches.Batch003.dependency304.Valid := CofiberE2Batches.Batch003.dependency304valid
theorem outgoingValid231 : CofiberE2Batches.Batch004.dependency339.Valid := CofiberE2Batches.Batch004.dependency339valid
theorem incomingLink232 : CofiberE2Batches.Batch003.dependency307.algebra.mat = CofiberE2Batches.Batch103.exact232.a := by decide
theorem outgoingLink232 : CofiberE2Batches.Batch004.dependency340.algebra.mat = CofiberE2Batches.Batch103.exact232.b := by decide
theorem linkedExact232 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency340.algebra.mat CofiberE2Batches.Batch003.dependency307.algebra.mat := by
  rw [incomingLink232, outgoingLink232]
  exact CofiberE2Batches.Batch103.exact232valid.2
theorem incomingValid232 : CofiberE2Batches.Batch003.dependency307.Valid := CofiberE2Batches.Batch003.dependency307valid
theorem outgoingValid232 : CofiberE2Batches.Batch004.dependency340.Valid := CofiberE2Batches.Batch004.dependency340valid
theorem incomingLink233 : CofiberE2Batches.Batch003.dependency310.algebra.mat = CofiberE2Batches.Batch103.exact233.a := by decide
theorem outgoingLink233 : CofiberE2Batches.Batch004.dependency341.algebra.mat = CofiberE2Batches.Batch103.exact233.b := by decide
theorem linkedExact233 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency341.algebra.mat CofiberE2Batches.Batch003.dependency310.algebra.mat := by
  rw [incomingLink233, outgoingLink233]
  exact CofiberE2Batches.Batch103.exact233valid.2
theorem incomingValid233 : CofiberE2Batches.Batch003.dependency310.Valid := CofiberE2Batches.Batch003.dependency310valid
theorem outgoingValid233 : CofiberE2Batches.Batch004.dependency341.Valid := CofiberE2Batches.Batch004.dependency341valid
theorem incomingLink234 : CofiberE2Batches.Batch004.dependency342.algebra.mat = CofiberE2Batches.Batch103.exact234.a := by decide
theorem outgoingLink234 : CofiberE2Batches.Batch004.dependency343.algebra.mat = CofiberE2Batches.Batch103.exact234.b := by decide
theorem linkedExact234 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency343.algebra.mat CofiberE2Batches.Batch004.dependency342.algebra.mat := by
  rw [incomingLink234, outgoingLink234]
  exact CofiberE2Batches.Batch103.exact234valid.2
theorem incomingValid234 : CofiberE2Batches.Batch004.dependency342.Valid := CofiberE2Batches.Batch004.dependency342valid
theorem outgoingValid234 : CofiberE2Batches.Batch004.dependency343.Valid := CofiberE2Batches.Batch004.dependency343valid
theorem incomingLink235 : CofiberE2Batches.Batch004.dependency344.algebra.mat = CofiberE2Batches.Batch103.exact235.a := by decide
theorem outgoingLink235 : CofiberE2Batches.Batch004.dependency345.algebra.mat = CofiberE2Batches.Batch103.exact235.b := by decide
theorem linkedExact235 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency345.algebra.mat CofiberE2Batches.Batch004.dependency344.algebra.mat := by
  rw [incomingLink235, outgoingLink235]
  exact CofiberE2Batches.Batch103.exact235valid.2
theorem incomingValid235 : CofiberE2Batches.Batch004.dependency344.Valid := CofiberE2Batches.Batch004.dependency344valid
theorem outgoingValid235 : CofiberE2Batches.Batch004.dependency345.Valid := CofiberE2Batches.Batch004.dependency345valid
theorem incomingLink236 : CofiberE2Batches.Batch004.dependency346.algebra.mat = CofiberE2Batches.Batch103.exact236.a := by decide
theorem outgoingLink236 : CofiberE2Batches.Batch004.dependency347.algebra.mat = CofiberE2Batches.Batch103.exact236.b := by decide
theorem linkedExact236 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency347.algebra.mat CofiberE2Batches.Batch004.dependency346.algebra.mat := by
  rw [incomingLink236, outgoingLink236]
  exact CofiberE2Batches.Batch103.exact236valid.2
theorem incomingValid236 : CofiberE2Batches.Batch004.dependency346.Valid := CofiberE2Batches.Batch004.dependency346valid
theorem outgoingValid236 : CofiberE2Batches.Batch004.dependency347.Valid := CofiberE2Batches.Batch004.dependency347valid
theorem incomingLink237 : CofiberE2Batches.Batch004.dependency348.algebra.mat = CofiberE2Batches.Batch103.exact237.a := by decide
theorem outgoingLink237 : CofiberE2Batches.Batch004.dependency349.algebra.mat = CofiberE2Batches.Batch103.exact237.b := by decide
theorem linkedExact237 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency349.algebra.mat CofiberE2Batches.Batch004.dependency348.algebra.mat := by
  rw [incomingLink237, outgoingLink237]
  exact CofiberE2Batches.Batch103.exact237valid.2
theorem incomingValid237 : CofiberE2Batches.Batch004.dependency348.Valid := CofiberE2Batches.Batch004.dependency348valid
theorem outgoingValid237 : CofiberE2Batches.Batch004.dependency349.Valid := CofiberE2Batches.Batch004.dependency349valid
theorem incomingLink238 : CofiberE2Batches.Batch004.dependency350.algebra.mat = CofiberE2Batches.Batch103.exact238.a := by decide
theorem outgoingLink238 : CofiberE2Batches.Batch004.dependency351.algebra.mat = CofiberE2Batches.Batch103.exact238.b := by decide
theorem linkedExact238 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency351.algebra.mat CofiberE2Batches.Batch004.dependency350.algebra.mat := by
  rw [incomingLink238, outgoingLink238]
  exact CofiberE2Batches.Batch103.exact238valid.2
theorem incomingValid238 : CofiberE2Batches.Batch004.dependency350.Valid := CofiberE2Batches.Batch004.dependency350valid
theorem outgoingValid238 : CofiberE2Batches.Batch004.dependency351.Valid := CofiberE2Batches.Batch004.dependency351valid
theorem incomingLink239 : CofiberE2Batches.Batch004.dependency352.algebra.mat = CofiberE2Batches.Batch103.exact239.a := by decide
theorem outgoingLink239 : CofiberE2Batches.Batch004.dependency353.algebra.mat = CofiberE2Batches.Batch103.exact239.b := by decide
theorem linkedExact239 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch004.dependency353.algebra.mat CofiberE2Batches.Batch004.dependency352.algebra.mat := by
  rw [incomingLink239, outgoingLink239]
  exact CofiberE2Batches.Batch103.exact239valid.2
theorem incomingValid239 : CofiberE2Batches.Batch004.dependency352.Valid := CofiberE2Batches.Batch004.dependency352valid
theorem outgoingValid239 : CofiberE2Batches.Batch004.dependency353.Valid := CofiberE2Batches.Batch004.dependency353valid
end CofiberLinkageBatches.Batch003
