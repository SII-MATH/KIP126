import CofiberE2Certificates.Linkage
import CofiberE2Batches.Batch016
import CofiberE2Batches.Batch017
import CofiberE2Batches.Batch018
import CofiberE2Batches.Batch027
import CofiberE2Batches.Batch028
import CofiberE2Batches.Batch029
import CofiberE2Batches.Batch030
import CofiberE2Batches.Batch031
import CofiberE2Batches.Batch115
import CofiberE2Batches.Batch116
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace CofiberLinkageBatches.Batch020
theorem incomingLink1200 : CofiberE2Batches.Batch016.dependency1315.algebra.mat = CofiberE2Batches.Batch115.exact1200.a := by decide
theorem outgoingLink1200 : CofiberE2Batches.Batch029.dependency2321.c = CofiberE2Batches.Batch115.exact1200.b := by decide
theorem linkedExact1200 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2321.c CofiberE2Batches.Batch016.dependency1315.algebra.mat := by
  rw [incomingLink1200, outgoingLink1200]
  exact CofiberE2Batches.Batch115.exact1200valid.2
theorem incomingValid1200 : CofiberE2Batches.Batch016.dependency1315.Valid := CofiberE2Batches.Batch016.dependency1315valid
theorem outgoingValid1200 : CofiberE2Batches.Batch029.dependency2321.Valid := CofiberE2Batches.Batch029.dependency2321valid
theorem incomingLink1201 : CofiberE2Batches.Batch016.dependency1320.algebra.mat = CofiberE2Batches.Batch115.exact1201.a := by decide
theorem outgoingLink1201 : CofiberE2Batches.Batch029.dependency2325.c = CofiberE2Batches.Batch115.exact1201.b := by decide
theorem linkedExact1201 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2325.c CofiberE2Batches.Batch016.dependency1320.algebra.mat := by
  rw [incomingLink1201, outgoingLink1201]
  exact CofiberE2Batches.Batch115.exact1201valid.2
theorem incomingValid1201 : CofiberE2Batches.Batch016.dependency1320.Valid := CofiberE2Batches.Batch016.dependency1320valid
theorem outgoingValid1201 : CofiberE2Batches.Batch029.dependency2325.Valid := CofiberE2Batches.Batch029.dependency2325valid
theorem incomingLink1202 : CofiberE2Batches.Batch016.dependency1325.algebra.mat = CofiberE2Batches.Batch115.exact1202.a := by decide
theorem outgoingLink1202 : CofiberE2Batches.Batch029.dependency2329.c = CofiberE2Batches.Batch115.exact1202.b := by decide
theorem linkedExact1202 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2329.c CofiberE2Batches.Batch016.dependency1325.algebra.mat := by
  rw [incomingLink1202, outgoingLink1202]
  exact CofiberE2Batches.Batch115.exact1202valid.2
theorem incomingValid1202 : CofiberE2Batches.Batch016.dependency1325.Valid := CofiberE2Batches.Batch016.dependency1325valid
theorem outgoingValid1202 : CofiberE2Batches.Batch029.dependency2329.Valid := CofiberE2Batches.Batch029.dependency2329valid
theorem incomingLink1203 : CofiberE2Batches.Batch029.dependency2330.algebra.mat = CofiberE2Batches.Batch115.exact1203.a := by decide
theorem outgoingLink1203 : CofiberE2Batches.Batch027.dependency2221.c = CofiberE2Batches.Batch115.exact1203.b := by decide
theorem linkedExact1203 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch027.dependency2221.c CofiberE2Batches.Batch029.dependency2330.algebra.mat := by
  rw [incomingLink1203, outgoingLink1203]
  exact CofiberE2Batches.Batch115.exact1203valid.2
theorem incomingValid1203 : CofiberE2Batches.Batch029.dependency2330.Valid := CofiberE2Batches.Batch029.dependency2330valid
theorem outgoingValid1203 : CofiberE2Batches.Batch027.dependency2221.Valid := CofiberE2Batches.Batch027.dependency2221valid
theorem incomingLink1204 : CofiberE2Batches.Batch029.dependency2331.algebra.mat = CofiberE2Batches.Batch115.exact1204.a := by decide
theorem outgoingLink1204 : CofiberE2Batches.Batch027.dependency2232.c = CofiberE2Batches.Batch115.exact1204.b := by decide
theorem linkedExact1204 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch027.dependency2232.c CofiberE2Batches.Batch029.dependency2331.algebra.mat := by
  rw [incomingLink1204, outgoingLink1204]
  exact CofiberE2Batches.Batch115.exact1204valid.2
theorem incomingValid1204 : CofiberE2Batches.Batch029.dependency2331.Valid := CofiberE2Batches.Batch029.dependency2331valid
theorem outgoingValid1204 : CofiberE2Batches.Batch027.dependency2232.Valid := CofiberE2Batches.Batch027.dependency2232valid
theorem incomingLink1205 : CofiberE2Batches.Batch016.dependency1335.algebra.mat = CofiberE2Batches.Batch115.exact1205.a := by decide
theorem outgoingLink1205 : CofiberE2Batches.Batch029.dependency2335.c = CofiberE2Batches.Batch115.exact1205.b := by decide
theorem linkedExact1205 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2335.c CofiberE2Batches.Batch016.dependency1335.algebra.mat := by
  rw [incomingLink1205, outgoingLink1205]
  exact CofiberE2Batches.Batch115.exact1205valid.2
theorem incomingValid1205 : CofiberE2Batches.Batch016.dependency1335.Valid := CofiberE2Batches.Batch016.dependency1335valid
theorem outgoingValid1205 : CofiberE2Batches.Batch029.dependency2335.Valid := CofiberE2Batches.Batch029.dependency2335valid
theorem incomingLink1206 : CofiberE2Batches.Batch016.dependency1340.algebra.mat = CofiberE2Batches.Batch115.exact1206.a := by decide
theorem outgoingLink1206 : CofiberE2Batches.Batch029.dependency2339.c = CofiberE2Batches.Batch115.exact1206.b := by decide
theorem linkedExact1206 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2339.c CofiberE2Batches.Batch016.dependency1340.algebra.mat := by
  rw [incomingLink1206, outgoingLink1206]
  exact CofiberE2Batches.Batch115.exact1206valid.2
theorem incomingValid1206 : CofiberE2Batches.Batch016.dependency1340.Valid := CofiberE2Batches.Batch016.dependency1340valid
theorem outgoingValid1206 : CofiberE2Batches.Batch029.dependency2339.Valid := CofiberE2Batches.Batch029.dependency2339valid
theorem incomingLink1207 : CofiberE2Batches.Batch018.dependency1463.algebra.mat = CofiberE2Batches.Batch115.exact1207.a := by decide
theorem outgoingLink1207 : CofiberE2Batches.Batch029.dependency2343.c = CofiberE2Batches.Batch115.exact1207.b := by decide
theorem linkedExact1207 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2343.c CofiberE2Batches.Batch018.dependency1463.algebra.mat := by
  rw [incomingLink1207, outgoingLink1207]
  exact CofiberE2Batches.Batch115.exact1207valid.2
theorem incomingValid1207 : CofiberE2Batches.Batch018.dependency1463.Valid := CofiberE2Batches.Batch018.dependency1463valid
theorem outgoingValid1207 : CofiberE2Batches.Batch029.dependency2343.Valid := CofiberE2Batches.Batch029.dependency2343valid
theorem incomingLink1208 : CofiberE2Batches.Batch028.dependency2303.algebra.mat = CofiberE2Batches.Batch115.exact1208.a := by decide
theorem outgoingLink1208 : CofiberE2Batches.Batch028.dependency2243.c = CofiberE2Batches.Batch115.exact1208.b := by decide
theorem linkedExact1208 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch028.dependency2243.c CofiberE2Batches.Batch028.dependency2303.algebra.mat := by
  rw [incomingLink1208, outgoingLink1208]
  exact CofiberE2Batches.Batch115.exact1208valid.2
theorem incomingValid1208 : CofiberE2Batches.Batch028.dependency2303.Valid := CofiberE2Batches.Batch028.dependency2303valid
theorem outgoingValid1208 : CofiberE2Batches.Batch028.dependency2243.Valid := CofiberE2Batches.Batch028.dependency2243valid
theorem incomingLink1209 : CofiberE2Batches.Batch017.dependency1360.algebra.mat = CofiberE2Batches.Batch115.exact1209.a := by decide
theorem outgoingLink1209 : CofiberE2Batches.Batch029.dependency2347.c = CofiberE2Batches.Batch115.exact1209.b := by decide
theorem linkedExact1209 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2347.c CofiberE2Batches.Batch017.dependency1360.algebra.mat := by
  rw [incomingLink1209, outgoingLink1209]
  exact CofiberE2Batches.Batch115.exact1209valid.2
theorem incomingValid1209 : CofiberE2Batches.Batch017.dependency1360.Valid := CofiberE2Batches.Batch017.dependency1360valid
theorem outgoingValid1209 : CofiberE2Batches.Batch029.dependency2347.Valid := CofiberE2Batches.Batch029.dependency2347valid
theorem incomingLink1210 : CofiberE2Batches.Batch017.dependency1365.algebra.mat = CofiberE2Batches.Batch115.exact1210.a := by decide
theorem outgoingLink1210 : CofiberE2Batches.Batch029.dependency2351.c = CofiberE2Batches.Batch115.exact1210.b := by decide
theorem linkedExact1210 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2351.c CofiberE2Batches.Batch017.dependency1365.algebra.mat := by
  rw [incomingLink1210, outgoingLink1210]
  exact CofiberE2Batches.Batch115.exact1210valid.2
theorem incomingValid1210 : CofiberE2Batches.Batch017.dependency1365.Valid := CofiberE2Batches.Batch017.dependency1365valid
theorem outgoingValid1210 : CofiberE2Batches.Batch029.dependency2351.Valid := CofiberE2Batches.Batch029.dependency2351valid
theorem incomingLink1211 : CofiberE2Batches.Batch018.dependency1469.algebra.mat = CofiberE2Batches.Batch115.exact1211.a := by decide
theorem outgoingLink1211 : CofiberE2Batches.Batch029.dependency2355.c = CofiberE2Batches.Batch115.exact1211.b := by decide
theorem linkedExact1211 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2355.c CofiberE2Batches.Batch018.dependency1469.algebra.mat := by
  rw [incomingLink1211, outgoingLink1211]
  exact CofiberE2Batches.Batch115.exact1211valid.2
theorem incomingValid1211 : CofiberE2Batches.Batch018.dependency1469.Valid := CofiberE2Batches.Batch018.dependency1469valid
theorem outgoingValid1211 : CofiberE2Batches.Batch029.dependency2355.Valid := CofiberE2Batches.Batch029.dependency2355valid
theorem incomingLink1212 : CofiberE2Batches.Batch028.dependency2306.algebra.mat = CofiberE2Batches.Batch115.exact1212.a := by decide
theorem outgoingLink1212 : CofiberE2Batches.Batch029.dependency2359.c = CofiberE2Batches.Batch115.exact1212.b := by decide
theorem linkedExact1212 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2359.c CofiberE2Batches.Batch028.dependency2306.algebra.mat := by
  rw [incomingLink1212, outgoingLink1212]
  exact CofiberE2Batches.Batch115.exact1212valid.2
theorem incomingValid1212 : CofiberE2Batches.Batch028.dependency2306.Valid := CofiberE2Batches.Batch028.dependency2306valid
theorem outgoingValid1212 : CofiberE2Batches.Batch029.dependency2359.Valid := CofiberE2Batches.Batch029.dependency2359valid
theorem incomingLink1213 : CofiberE2Batches.Batch017.dependency1385.algebra.mat = CofiberE2Batches.Batch115.exact1213.a := by decide
theorem outgoingLink1213 : CofiberE2Batches.Batch029.dependency2363.c = CofiberE2Batches.Batch115.exact1213.b := by decide
theorem linkedExact1213 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2363.c CofiberE2Batches.Batch017.dependency1385.algebra.mat := by
  rw [incomingLink1213, outgoingLink1213]
  exact CofiberE2Batches.Batch115.exact1213valid.2
theorem incomingValid1213 : CofiberE2Batches.Batch017.dependency1385.Valid := CofiberE2Batches.Batch017.dependency1385valid
theorem outgoingValid1213 : CofiberE2Batches.Batch029.dependency2363.Valid := CofiberE2Batches.Batch029.dependency2363valid
theorem incomingLink1214 : CofiberE2Batches.Batch029.dependency2364.algebra.mat = CofiberE2Batches.Batch115.exact1214.a := by decide
theorem outgoingLink1214 : CofiberE2Batches.Batch029.dependency2368.c = CofiberE2Batches.Batch115.exact1214.b := by decide
theorem linkedExact1214 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2368.c CofiberE2Batches.Batch029.dependency2364.algebra.mat := by
  rw [incomingLink1214, outgoingLink1214]
  exact CofiberE2Batches.Batch115.exact1214valid.2
theorem incomingValid1214 : CofiberE2Batches.Batch029.dependency2364.Valid := CofiberE2Batches.Batch029.dependency2364valid
theorem outgoingValid1214 : CofiberE2Batches.Batch029.dependency2368.Valid := CofiberE2Batches.Batch029.dependency2368valid
theorem incomingLink1215 : CofiberE2Batches.Batch029.dependency2369.algebra.mat = CofiberE2Batches.Batch115.exact1215.a := by decide
theorem outgoingLink1215 : CofiberE2Batches.Batch029.dependency2373.c = CofiberE2Batches.Batch115.exact1215.b := by decide
theorem linkedExact1215 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2373.c CofiberE2Batches.Batch029.dependency2369.algebra.mat := by
  rw [incomingLink1215, outgoingLink1215]
  exact CofiberE2Batches.Batch115.exact1215valid.2
theorem incomingValid1215 : CofiberE2Batches.Batch029.dependency2369.Valid := CofiberE2Batches.Batch029.dependency2369valid
theorem outgoingValid1215 : CofiberE2Batches.Batch029.dependency2373.Valid := CofiberE2Batches.Batch029.dependency2373valid
theorem incomingLink1216 : CofiberE2Batches.Batch017.dependency1395.algebra.mat = CofiberE2Batches.Batch115.exact1216.a := by decide
theorem outgoingLink1216 : CofiberE2Batches.Batch029.dependency2377.c = CofiberE2Batches.Batch115.exact1216.b := by decide
theorem linkedExact1216 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2377.c CofiberE2Batches.Batch017.dependency1395.algebra.mat := by
  rw [incomingLink1216, outgoingLink1216]
  exact CofiberE2Batches.Batch115.exact1216valid.2
theorem incomingValid1216 : CofiberE2Batches.Batch017.dependency1395.Valid := CofiberE2Batches.Batch017.dependency1395valid
theorem outgoingValid1216 : CofiberE2Batches.Batch029.dependency2377.Valid := CofiberE2Batches.Batch029.dependency2377valid
theorem incomingLink1217 : CofiberE2Batches.Batch029.dependency2378.algebra.mat = CofiberE2Batches.Batch115.exact1217.a := by decide
theorem outgoingLink1217 : CofiberE2Batches.Batch029.dependency2382.c = CofiberE2Batches.Batch115.exact1217.b := by decide
theorem linkedExact1217 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2382.c CofiberE2Batches.Batch029.dependency2378.algebra.mat := by
  rw [incomingLink1217, outgoingLink1217]
  exact CofiberE2Batches.Batch115.exact1217valid.2
theorem incomingValid1217 : CofiberE2Batches.Batch029.dependency2378.Valid := CofiberE2Batches.Batch029.dependency2378valid
theorem outgoingValid1217 : CofiberE2Batches.Batch029.dependency2382.Valid := CofiberE2Batches.Batch029.dependency2382valid
theorem incomingLink1218 : CofiberE2Batches.Batch017.dependency1400.algebra.mat = CofiberE2Batches.Batch115.exact1218.a := by decide
theorem outgoingLink1218 : CofiberE2Batches.Batch029.dependency2386.c = CofiberE2Batches.Batch115.exact1218.b := by decide
theorem linkedExact1218 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2386.c CofiberE2Batches.Batch017.dependency1400.algebra.mat := by
  rw [incomingLink1218, outgoingLink1218]
  exact CofiberE2Batches.Batch115.exact1218valid.2
theorem incomingValid1218 : CofiberE2Batches.Batch017.dependency1400.Valid := CofiberE2Batches.Batch017.dependency1400valid
theorem outgoingValid1218 : CofiberE2Batches.Batch029.dependency2386.Valid := CofiberE2Batches.Batch029.dependency2386valid
theorem incomingLink1219 : CofiberE2Batches.Batch029.dependency2387.algebra.mat = CofiberE2Batches.Batch115.exact1219.a := by decide
theorem outgoingLink1219 : CofiberE2Batches.Batch029.dependency2391.c = CofiberE2Batches.Batch115.exact1219.b := by decide
theorem linkedExact1219 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2391.c CofiberE2Batches.Batch029.dependency2387.algebra.mat := by
  rw [incomingLink1219, outgoingLink1219]
  exact CofiberE2Batches.Batch115.exact1219valid.2
theorem incomingValid1219 : CofiberE2Batches.Batch029.dependency2387.Valid := CofiberE2Batches.Batch029.dependency2387valid
theorem outgoingValid1219 : CofiberE2Batches.Batch029.dependency2391.Valid := CofiberE2Batches.Batch029.dependency2391valid
theorem incomingLink1220 : CofiberE2Batches.Batch017.dependency1405.algebra.mat = CofiberE2Batches.Batch115.exact1220.a := by decide
theorem outgoingLink1220 : CofiberE2Batches.Batch029.dependency2395.c = CofiberE2Batches.Batch115.exact1220.b := by decide
theorem linkedExact1220 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch029.dependency2395.c CofiberE2Batches.Batch017.dependency1405.algebra.mat := by
  rw [incomingLink1220, outgoingLink1220]
  exact CofiberE2Batches.Batch115.exact1220valid.2
theorem incomingValid1220 : CofiberE2Batches.Batch017.dependency1405.Valid := CofiberE2Batches.Batch017.dependency1405valid
theorem outgoingValid1220 : CofiberE2Batches.Batch029.dependency2395.Valid := CofiberE2Batches.Batch029.dependency2395valid
theorem incomingLink1221 : CofiberE2Batches.Batch029.dependency2396.algebra.mat = CofiberE2Batches.Batch115.exact1221.a := by decide
theorem outgoingLink1221 : CofiberE2Batches.Batch030.dependency2400.c = CofiberE2Batches.Batch115.exact1221.b := by decide
theorem linkedExact1221 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2400.c CofiberE2Batches.Batch029.dependency2396.algebra.mat := by
  rw [incomingLink1221, outgoingLink1221]
  exact CofiberE2Batches.Batch115.exact1221valid.2
theorem incomingValid1221 : CofiberE2Batches.Batch029.dependency2396.Valid := CofiberE2Batches.Batch029.dependency2396valid
theorem outgoingValid1221 : CofiberE2Batches.Batch030.dependency2400.Valid := CofiberE2Batches.Batch030.dependency2400valid
theorem incomingLink1222 : CofiberE2Batches.Batch017.dependency1410.algebra.mat = CofiberE2Batches.Batch115.exact1222.a := by decide
theorem outgoingLink1222 : CofiberE2Batches.Batch030.dependency2404.c = CofiberE2Batches.Batch115.exact1222.b := by decide
theorem linkedExact1222 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2404.c CofiberE2Batches.Batch017.dependency1410.algebra.mat := by
  rw [incomingLink1222, outgoingLink1222]
  exact CofiberE2Batches.Batch115.exact1222valid.2
theorem incomingValid1222 : CofiberE2Batches.Batch017.dependency1410.Valid := CofiberE2Batches.Batch017.dependency1410valid
theorem outgoingValid1222 : CofiberE2Batches.Batch030.dependency2404.Valid := CofiberE2Batches.Batch030.dependency2404valid
theorem incomingLink1223 : CofiberE2Batches.Batch030.dependency2405.algebra.mat = CofiberE2Batches.Batch115.exact1223.a := by decide
theorem outgoingLink1223 : CofiberE2Batches.Batch030.dependency2409.c = CofiberE2Batches.Batch115.exact1223.b := by decide
theorem linkedExact1223 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2409.c CofiberE2Batches.Batch030.dependency2405.algebra.mat := by
  rw [incomingLink1223, outgoingLink1223]
  exact CofiberE2Batches.Batch115.exact1223valid.2
theorem incomingValid1223 : CofiberE2Batches.Batch030.dependency2405.Valid := CofiberE2Batches.Batch030.dependency2405valid
theorem outgoingValid1223 : CofiberE2Batches.Batch030.dependency2409.Valid := CofiberE2Batches.Batch030.dependency2409valid
theorem incomingLink1224 : CofiberE2Batches.Batch030.dependency2410.algebra.mat = CofiberE2Batches.Batch115.exact1224.a := by decide
theorem outgoingLink1224 : CofiberE2Batches.Batch030.dependency2414.c = CofiberE2Batches.Batch115.exact1224.b := by decide
theorem linkedExact1224 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2414.c CofiberE2Batches.Batch030.dependency2410.algebra.mat := by
  rw [incomingLink1224, outgoingLink1224]
  exact CofiberE2Batches.Batch115.exact1224valid.2
theorem incomingValid1224 : CofiberE2Batches.Batch030.dependency2410.Valid := CofiberE2Batches.Batch030.dependency2410valid
theorem outgoingValid1224 : CofiberE2Batches.Batch030.dependency2414.Valid := CofiberE2Batches.Batch030.dependency2414valid
theorem incomingLink1225 : CofiberE2Batches.Batch030.dependency2415.algebra.mat = CofiberE2Batches.Batch115.exact1225.a := by decide
theorem outgoingLink1225 : CofiberE2Batches.Batch030.dependency2419.c = CofiberE2Batches.Batch115.exact1225.b := by decide
theorem linkedExact1225 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2419.c CofiberE2Batches.Batch030.dependency2415.algebra.mat := by
  rw [incomingLink1225, outgoingLink1225]
  exact CofiberE2Batches.Batch115.exact1225valid.2
theorem incomingValid1225 : CofiberE2Batches.Batch030.dependency2415.Valid := CofiberE2Batches.Batch030.dependency2415valid
theorem outgoingValid1225 : CofiberE2Batches.Batch030.dependency2419.Valid := CofiberE2Batches.Batch030.dependency2419valid
theorem incomingLink1226 : CofiberE2Batches.Batch030.dependency2420.algebra.mat = CofiberE2Batches.Batch115.exact1226.a := by decide
theorem outgoingLink1226 : CofiberE2Batches.Batch030.dependency2424.c = CofiberE2Batches.Batch115.exact1226.b := by decide
theorem linkedExact1226 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2424.c CofiberE2Batches.Batch030.dependency2420.algebra.mat := by
  rw [incomingLink1226, outgoingLink1226]
  exact CofiberE2Batches.Batch115.exact1226valid.2
theorem incomingValid1226 : CofiberE2Batches.Batch030.dependency2420.Valid := CofiberE2Batches.Batch030.dependency2420valid
theorem outgoingValid1226 : CofiberE2Batches.Batch030.dependency2424.Valid := CofiberE2Batches.Batch030.dependency2424valid
theorem incomingLink1227 : CofiberE2Batches.Batch030.dependency2425.algebra.mat = CofiberE2Batches.Batch115.exact1227.a := by decide
theorem outgoingLink1227 : CofiberE2Batches.Batch030.dependency2426.algebra.mat = CofiberE2Batches.Batch115.exact1227.b := by decide
theorem linkedExact1227 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2426.algebra.mat CofiberE2Batches.Batch030.dependency2425.algebra.mat := by
  rw [incomingLink1227, outgoingLink1227]
  exact CofiberE2Batches.Batch115.exact1227valid.2
theorem incomingValid1227 : CofiberE2Batches.Batch030.dependency2425.Valid := CofiberE2Batches.Batch030.dependency2425valid
theorem outgoingValid1227 : CofiberE2Batches.Batch030.dependency2426.Valid := CofiberE2Batches.Batch030.dependency2426valid
theorem incomingLink1228 : CofiberE2Batches.Batch030.dependency2427.algebra.mat = CofiberE2Batches.Batch115.exact1228.a := by decide
theorem outgoingLink1228 : CofiberE2Batches.Batch030.dependency2428.algebra.mat = CofiberE2Batches.Batch115.exact1228.b := by decide
theorem linkedExact1228 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2428.algebra.mat CofiberE2Batches.Batch030.dependency2427.algebra.mat := by
  rw [incomingLink1228, outgoingLink1228]
  exact CofiberE2Batches.Batch115.exact1228valid.2
theorem incomingValid1228 : CofiberE2Batches.Batch030.dependency2427.Valid := CofiberE2Batches.Batch030.dependency2427valid
theorem outgoingValid1228 : CofiberE2Batches.Batch030.dependency2428.Valid := CofiberE2Batches.Batch030.dependency2428valid
theorem incomingLink1229 : CofiberE2Batches.Batch030.dependency2429.algebra.mat = CofiberE2Batches.Batch115.exact1229.a := by decide
theorem outgoingLink1229 : CofiberE2Batches.Batch030.dependency2430.algebra.mat = CofiberE2Batches.Batch115.exact1229.b := by decide
theorem linkedExact1229 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2430.algebra.mat CofiberE2Batches.Batch030.dependency2429.algebra.mat := by
  rw [incomingLink1229, outgoingLink1229]
  exact CofiberE2Batches.Batch115.exact1229valid.2
theorem incomingValid1229 : CofiberE2Batches.Batch030.dependency2429.Valid := CofiberE2Batches.Batch030.dependency2429valid
theorem outgoingValid1229 : CofiberE2Batches.Batch030.dependency2430.Valid := CofiberE2Batches.Batch030.dependency2430valid
theorem incomingLink1230 : CofiberE2Batches.Batch030.dependency2431.algebra.mat = CofiberE2Batches.Batch115.exact1230.a := by decide
theorem outgoingLink1230 : CofiberE2Batches.Batch030.dependency2432.algebra.mat = CofiberE2Batches.Batch115.exact1230.b := by decide
theorem linkedExact1230 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2432.algebra.mat CofiberE2Batches.Batch030.dependency2431.algebra.mat := by
  rw [incomingLink1230, outgoingLink1230]
  exact CofiberE2Batches.Batch115.exact1230valid.2
theorem incomingValid1230 : CofiberE2Batches.Batch030.dependency2431.Valid := CofiberE2Batches.Batch030.dependency2431valid
theorem outgoingValid1230 : CofiberE2Batches.Batch030.dependency2432.Valid := CofiberE2Batches.Batch030.dependency2432valid
theorem incomingLink1231 : CofiberE2Batches.Batch030.dependency2433.algebra.mat = CofiberE2Batches.Batch115.exact1231.a := by decide
theorem outgoingLink1231 : CofiberE2Batches.Batch030.dependency2434.algebra.mat = CofiberE2Batches.Batch115.exact1231.b := by decide
theorem linkedExact1231 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2434.algebra.mat CofiberE2Batches.Batch030.dependency2433.algebra.mat := by
  rw [incomingLink1231, outgoingLink1231]
  exact CofiberE2Batches.Batch115.exact1231valid.2
theorem incomingValid1231 : CofiberE2Batches.Batch030.dependency2433.Valid := CofiberE2Batches.Batch030.dependency2433valid
theorem outgoingValid1231 : CofiberE2Batches.Batch030.dependency2434.Valid := CofiberE2Batches.Batch030.dependency2434valid
theorem incomingLink1232 : CofiberE2Batches.Batch030.dependency2435.algebra.mat = CofiberE2Batches.Batch115.exact1232.a := by decide
theorem outgoingLink1232 : CofiberE2Batches.Batch030.dependency2436.algebra.mat = CofiberE2Batches.Batch115.exact1232.b := by decide
theorem linkedExact1232 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2436.algebra.mat CofiberE2Batches.Batch030.dependency2435.algebra.mat := by
  rw [incomingLink1232, outgoingLink1232]
  exact CofiberE2Batches.Batch115.exact1232valid.2
theorem incomingValid1232 : CofiberE2Batches.Batch030.dependency2435.Valid := CofiberE2Batches.Batch030.dependency2435valid
theorem outgoingValid1232 : CofiberE2Batches.Batch030.dependency2436.Valid := CofiberE2Batches.Batch030.dependency2436valid
theorem incomingLink1233 : CofiberE2Batches.Batch030.dependency2437.algebra.mat = CofiberE2Batches.Batch115.exact1233.a := by decide
theorem outgoingLink1233 : CofiberE2Batches.Batch030.dependency2438.algebra.mat = CofiberE2Batches.Batch115.exact1233.b := by decide
theorem linkedExact1233 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2438.algebra.mat CofiberE2Batches.Batch030.dependency2437.algebra.mat := by
  rw [incomingLink1233, outgoingLink1233]
  exact CofiberE2Batches.Batch115.exact1233valid.2
theorem incomingValid1233 : CofiberE2Batches.Batch030.dependency2437.Valid := CofiberE2Batches.Batch030.dependency2437valid
theorem outgoingValid1233 : CofiberE2Batches.Batch030.dependency2438.Valid := CofiberE2Batches.Batch030.dependency2438valid
theorem incomingLink1234 : CofiberE2Batches.Batch030.dependency2439.algebra.mat = CofiberE2Batches.Batch115.exact1234.a := by decide
theorem outgoingLink1234 : CofiberE2Batches.Batch030.dependency2440.algebra.mat = CofiberE2Batches.Batch115.exact1234.b := by decide
theorem linkedExact1234 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2440.algebra.mat CofiberE2Batches.Batch030.dependency2439.algebra.mat := by
  rw [incomingLink1234, outgoingLink1234]
  exact CofiberE2Batches.Batch115.exact1234valid.2
theorem incomingValid1234 : CofiberE2Batches.Batch030.dependency2439.Valid := CofiberE2Batches.Batch030.dependency2439valid
theorem outgoingValid1234 : CofiberE2Batches.Batch030.dependency2440.Valid := CofiberE2Batches.Batch030.dependency2440valid
theorem incomingLink1235 : CofiberE2Batches.Batch030.dependency2441.algebra.mat = CofiberE2Batches.Batch115.exact1235.a := by decide
theorem outgoingLink1235 : CofiberE2Batches.Batch030.dependency2442.algebra.mat = CofiberE2Batches.Batch115.exact1235.b := by decide
theorem linkedExact1235 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2442.algebra.mat CofiberE2Batches.Batch030.dependency2441.algebra.mat := by
  rw [incomingLink1235, outgoingLink1235]
  exact CofiberE2Batches.Batch115.exact1235valid.2
theorem incomingValid1235 : CofiberE2Batches.Batch030.dependency2441.Valid := CofiberE2Batches.Batch030.dependency2441valid
theorem outgoingValid1235 : CofiberE2Batches.Batch030.dependency2442.Valid := CofiberE2Batches.Batch030.dependency2442valid
theorem incomingLink1236 : CofiberE2Batches.Batch030.dependency2443.algebra.mat = CofiberE2Batches.Batch115.exact1236.a := by decide
theorem outgoingLink1236 : CofiberE2Batches.Batch030.dependency2444.algebra.mat = CofiberE2Batches.Batch115.exact1236.b := by decide
theorem linkedExact1236 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2444.algebra.mat CofiberE2Batches.Batch030.dependency2443.algebra.mat := by
  rw [incomingLink1236, outgoingLink1236]
  exact CofiberE2Batches.Batch115.exact1236valid.2
theorem incomingValid1236 : CofiberE2Batches.Batch030.dependency2443.Valid := CofiberE2Batches.Batch030.dependency2443valid
theorem outgoingValid1236 : CofiberE2Batches.Batch030.dependency2444.Valid := CofiberE2Batches.Batch030.dependency2444valid
theorem incomingLink1237 : CofiberE2Batches.Batch030.dependency2445.algebra.mat = CofiberE2Batches.Batch115.exact1237.a := by decide
theorem outgoingLink1237 : CofiberE2Batches.Batch030.dependency2446.algebra.mat = CofiberE2Batches.Batch115.exact1237.b := by decide
theorem linkedExact1237 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2446.algebra.mat CofiberE2Batches.Batch030.dependency2445.algebra.mat := by
  rw [incomingLink1237, outgoingLink1237]
  exact CofiberE2Batches.Batch115.exact1237valid.2
theorem incomingValid1237 : CofiberE2Batches.Batch030.dependency2445.Valid := CofiberE2Batches.Batch030.dependency2445valid
theorem outgoingValid1237 : CofiberE2Batches.Batch030.dependency2446.Valid := CofiberE2Batches.Batch030.dependency2446valid
theorem incomingLink1238 : CofiberE2Batches.Batch030.dependency2447.algebra.mat = CofiberE2Batches.Batch115.exact1238.a := by decide
theorem outgoingLink1238 : CofiberE2Batches.Batch030.dependency2448.algebra.mat = CofiberE2Batches.Batch115.exact1238.b := by decide
theorem linkedExact1238 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2448.algebra.mat CofiberE2Batches.Batch030.dependency2447.algebra.mat := by
  rw [incomingLink1238, outgoingLink1238]
  exact CofiberE2Batches.Batch115.exact1238valid.2
theorem incomingValid1238 : CofiberE2Batches.Batch030.dependency2447.Valid := CofiberE2Batches.Batch030.dependency2447valid
theorem outgoingValid1238 : CofiberE2Batches.Batch030.dependency2448.Valid := CofiberE2Batches.Batch030.dependency2448valid
theorem incomingLink1239 : CofiberE2Batches.Batch030.dependency2449.algebra.mat = CofiberE2Batches.Batch115.exact1239.a := by decide
theorem outgoingLink1239 : CofiberE2Batches.Batch030.dependency2450.algebra.mat = CofiberE2Batches.Batch115.exact1239.b := by decide
theorem linkedExact1239 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2450.algebra.mat CofiberE2Batches.Batch030.dependency2449.algebra.mat := by
  rw [incomingLink1239, outgoingLink1239]
  exact CofiberE2Batches.Batch115.exact1239valid.2
theorem incomingValid1239 : CofiberE2Batches.Batch030.dependency2449.Valid := CofiberE2Batches.Batch030.dependency2449valid
theorem outgoingValid1239 : CofiberE2Batches.Batch030.dependency2450.Valid := CofiberE2Batches.Batch030.dependency2450valid
theorem incomingLink1240 : CofiberE2Batches.Batch030.dependency2451.algebra.mat = CofiberE2Batches.Batch115.exact1240.a := by decide
theorem outgoingLink1240 : CofiberE2Batches.Batch030.dependency2452.algebra.mat = CofiberE2Batches.Batch115.exact1240.b := by decide
theorem linkedExact1240 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2452.algebra.mat CofiberE2Batches.Batch030.dependency2451.algebra.mat := by
  rw [incomingLink1240, outgoingLink1240]
  exact CofiberE2Batches.Batch115.exact1240valid.2
theorem incomingValid1240 : CofiberE2Batches.Batch030.dependency2451.Valid := CofiberE2Batches.Batch030.dependency2451valid
theorem outgoingValid1240 : CofiberE2Batches.Batch030.dependency2452.Valid := CofiberE2Batches.Batch030.dependency2452valid
theorem incomingLink1241 : CofiberE2Batches.Batch030.dependency2453.algebra.mat = CofiberE2Batches.Batch115.exact1241.a := by decide
theorem outgoingLink1241 : CofiberE2Batches.Batch030.dependency2454.algebra.mat = CofiberE2Batches.Batch115.exact1241.b := by decide
theorem linkedExact1241 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2454.algebra.mat CofiberE2Batches.Batch030.dependency2453.algebra.mat := by
  rw [incomingLink1241, outgoingLink1241]
  exact CofiberE2Batches.Batch115.exact1241valid.2
theorem incomingValid1241 : CofiberE2Batches.Batch030.dependency2453.Valid := CofiberE2Batches.Batch030.dependency2453valid
theorem outgoingValid1241 : CofiberE2Batches.Batch030.dependency2454.Valid := CofiberE2Batches.Batch030.dependency2454valid
theorem incomingLink1242 : CofiberE2Batches.Batch030.dependency2455.algebra.mat = CofiberE2Batches.Batch115.exact1242.a := by decide
theorem outgoingLink1242 : CofiberE2Batches.Batch030.dependency2456.algebra.mat = CofiberE2Batches.Batch115.exact1242.b := by decide
theorem linkedExact1242 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2456.algebra.mat CofiberE2Batches.Batch030.dependency2455.algebra.mat := by
  rw [incomingLink1242, outgoingLink1242]
  exact CofiberE2Batches.Batch115.exact1242valid.2
theorem incomingValid1242 : CofiberE2Batches.Batch030.dependency2455.Valid := CofiberE2Batches.Batch030.dependency2455valid
theorem outgoingValid1242 : CofiberE2Batches.Batch030.dependency2456.Valid := CofiberE2Batches.Batch030.dependency2456valid
theorem incomingLink1243 : CofiberE2Batches.Batch030.dependency2457.algebra.mat = CofiberE2Batches.Batch115.exact1243.a := by decide
theorem outgoingLink1243 : CofiberE2Batches.Batch030.dependency2458.algebra.mat = CofiberE2Batches.Batch115.exact1243.b := by decide
theorem linkedExact1243 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2458.algebra.mat CofiberE2Batches.Batch030.dependency2457.algebra.mat := by
  rw [incomingLink1243, outgoingLink1243]
  exact CofiberE2Batches.Batch115.exact1243valid.2
theorem incomingValid1243 : CofiberE2Batches.Batch030.dependency2457.Valid := CofiberE2Batches.Batch030.dependency2457valid
theorem outgoingValid1243 : CofiberE2Batches.Batch030.dependency2458.Valid := CofiberE2Batches.Batch030.dependency2458valid
theorem incomingLink1244 : CofiberE2Batches.Batch030.dependency2459.algebra.mat = CofiberE2Batches.Batch115.exact1244.a := by decide
theorem outgoingLink1244 : CofiberE2Batches.Batch030.dependency2460.algebra.mat = CofiberE2Batches.Batch115.exact1244.b := by decide
theorem linkedExact1244 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2460.algebra.mat CofiberE2Batches.Batch030.dependency2459.algebra.mat := by
  rw [incomingLink1244, outgoingLink1244]
  exact CofiberE2Batches.Batch115.exact1244valid.2
theorem incomingValid1244 : CofiberE2Batches.Batch030.dependency2459.Valid := CofiberE2Batches.Batch030.dependency2459valid
theorem outgoingValid1244 : CofiberE2Batches.Batch030.dependency2460.Valid := CofiberE2Batches.Batch030.dependency2460valid
theorem incomingLink1245 : CofiberE2Batches.Batch030.dependency2461.algebra.mat = CofiberE2Batches.Batch115.exact1245.a := by decide
theorem outgoingLink1245 : CofiberE2Batches.Batch030.dependency2462.algebra.mat = CofiberE2Batches.Batch115.exact1245.b := by decide
theorem linkedExact1245 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2462.algebra.mat CofiberE2Batches.Batch030.dependency2461.algebra.mat := by
  rw [incomingLink1245, outgoingLink1245]
  exact CofiberE2Batches.Batch115.exact1245valid.2
theorem incomingValid1245 : CofiberE2Batches.Batch030.dependency2461.Valid := CofiberE2Batches.Batch030.dependency2461valid
theorem outgoingValid1245 : CofiberE2Batches.Batch030.dependency2462.Valid := CofiberE2Batches.Batch030.dependency2462valid
theorem incomingLink1246 : CofiberE2Batches.Batch030.dependency2463.algebra.mat = CofiberE2Batches.Batch115.exact1246.a := by decide
theorem outgoingLink1246 : CofiberE2Batches.Batch030.dependency2464.algebra.mat = CofiberE2Batches.Batch115.exact1246.b := by decide
theorem linkedExact1246 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2464.algebra.mat CofiberE2Batches.Batch030.dependency2463.algebra.mat := by
  rw [incomingLink1246, outgoingLink1246]
  exact CofiberE2Batches.Batch115.exact1246valid.2
theorem incomingValid1246 : CofiberE2Batches.Batch030.dependency2463.Valid := CofiberE2Batches.Batch030.dependency2463valid
theorem outgoingValid1246 : CofiberE2Batches.Batch030.dependency2464.Valid := CofiberE2Batches.Batch030.dependency2464valid
theorem incomingLink1247 : CofiberE2Batches.Batch030.dependency2465.algebra.mat = CofiberE2Batches.Batch115.exact1247.a := by decide
theorem outgoingLink1247 : CofiberE2Batches.Batch030.dependency2466.algebra.mat = CofiberE2Batches.Batch115.exact1247.b := by decide
theorem linkedExact1247 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2466.algebra.mat CofiberE2Batches.Batch030.dependency2465.algebra.mat := by
  rw [incomingLink1247, outgoingLink1247]
  exact CofiberE2Batches.Batch115.exact1247valid.2
theorem incomingValid1247 : CofiberE2Batches.Batch030.dependency2465.Valid := CofiberE2Batches.Batch030.dependency2465valid
theorem outgoingValid1247 : CofiberE2Batches.Batch030.dependency2466.Valid := CofiberE2Batches.Batch030.dependency2466valid
theorem incomingLink1248 : CofiberE2Batches.Batch030.dependency2467.algebra.mat = CofiberE2Batches.Batch115.exact1248.a := by decide
theorem outgoingLink1248 : CofiberE2Batches.Batch030.dependency2468.algebra.mat = CofiberE2Batches.Batch115.exact1248.b := by decide
theorem linkedExact1248 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2468.algebra.mat CofiberE2Batches.Batch030.dependency2467.algebra.mat := by
  rw [incomingLink1248, outgoingLink1248]
  exact CofiberE2Batches.Batch115.exact1248valid.2
theorem incomingValid1248 : CofiberE2Batches.Batch030.dependency2467.Valid := CofiberE2Batches.Batch030.dependency2467valid
theorem outgoingValid1248 : CofiberE2Batches.Batch030.dependency2468.Valid := CofiberE2Batches.Batch030.dependency2468valid
theorem incomingLink1249 : CofiberE2Batches.Batch030.dependency2426.algebra.mat = CofiberE2Batches.Batch115.exact1249.a := by decide
theorem outgoingLink1249 : CofiberE2Batches.Batch030.dependency2470.c = CofiberE2Batches.Batch115.exact1249.b := by decide
theorem linkedExact1249 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2470.c CofiberE2Batches.Batch030.dependency2426.algebra.mat := by
  rw [incomingLink1249, outgoingLink1249]
  exact CofiberE2Batches.Batch115.exact1249valid.2
theorem incomingValid1249 : CofiberE2Batches.Batch030.dependency2426.Valid := CofiberE2Batches.Batch030.dependency2426valid
theorem outgoingValid1249 : CofiberE2Batches.Batch030.dependency2470.Valid := CofiberE2Batches.Batch030.dependency2470valid
theorem incomingLink1250 : CofiberE2Batches.Batch030.dependency2428.algebra.mat = CofiberE2Batches.Batch115.exact1250.a := by decide
theorem outgoingLink1250 : CofiberE2Batches.Batch030.dependency2472.c = CofiberE2Batches.Batch115.exact1250.b := by decide
theorem linkedExact1250 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2472.c CofiberE2Batches.Batch030.dependency2428.algebra.mat := by
  rw [incomingLink1250, outgoingLink1250]
  exact CofiberE2Batches.Batch115.exact1250valid.2
theorem incomingValid1250 : CofiberE2Batches.Batch030.dependency2428.Valid := CofiberE2Batches.Batch030.dependency2428valid
theorem outgoingValid1250 : CofiberE2Batches.Batch030.dependency2472.Valid := CofiberE2Batches.Batch030.dependency2472valid
theorem incomingLink1251 : CofiberE2Batches.Batch030.dependency2430.algebra.mat = CofiberE2Batches.Batch115.exact1251.a := by decide
theorem outgoingLink1251 : CofiberE2Batches.Batch030.dependency2474.c = CofiberE2Batches.Batch115.exact1251.b := by decide
theorem linkedExact1251 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2474.c CofiberE2Batches.Batch030.dependency2430.algebra.mat := by
  rw [incomingLink1251, outgoingLink1251]
  exact CofiberE2Batches.Batch115.exact1251valid.2
theorem incomingValid1251 : CofiberE2Batches.Batch030.dependency2430.Valid := CofiberE2Batches.Batch030.dependency2430valid
theorem outgoingValid1251 : CofiberE2Batches.Batch030.dependency2474.Valid := CofiberE2Batches.Batch030.dependency2474valid
theorem incomingLink1252 : CofiberE2Batches.Batch030.dependency2432.algebra.mat = CofiberE2Batches.Batch115.exact1252.a := by decide
theorem outgoingLink1252 : CofiberE2Batches.Batch030.dependency2476.c = CofiberE2Batches.Batch115.exact1252.b := by decide
theorem linkedExact1252 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2476.c CofiberE2Batches.Batch030.dependency2432.algebra.mat := by
  rw [incomingLink1252, outgoingLink1252]
  exact CofiberE2Batches.Batch115.exact1252valid.2
theorem incomingValid1252 : CofiberE2Batches.Batch030.dependency2432.Valid := CofiberE2Batches.Batch030.dependency2432valid
theorem outgoingValid1252 : CofiberE2Batches.Batch030.dependency2476.Valid := CofiberE2Batches.Batch030.dependency2476valid
theorem incomingLink1253 : CofiberE2Batches.Batch030.dependency2436.algebra.mat = CofiberE2Batches.Batch115.exact1253.a := by decide
theorem outgoingLink1253 : CofiberE2Batches.Batch030.dependency2478.c = CofiberE2Batches.Batch115.exact1253.b := by decide
theorem linkedExact1253 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch030.dependency2478.c CofiberE2Batches.Batch030.dependency2436.algebra.mat := by
  rw [incomingLink1253, outgoingLink1253]
  exact CofiberE2Batches.Batch115.exact1253valid.2
theorem incomingValid1253 : CofiberE2Batches.Batch030.dependency2436.Valid := CofiberE2Batches.Batch030.dependency2436valid
theorem outgoingValid1253 : CofiberE2Batches.Batch030.dependency2478.Valid := CofiberE2Batches.Batch030.dependency2478valid
theorem incomingLink1254 : CofiberE2Batches.Batch030.dependency2438.algebra.mat = CofiberE2Batches.Batch115.exact1254.a := by decide
theorem outgoingLink1254 : CofiberE2Batches.Batch031.dependency2480.c = CofiberE2Batches.Batch115.exact1254.b := by decide
theorem linkedExact1254 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch031.dependency2480.c CofiberE2Batches.Batch030.dependency2438.algebra.mat := by
  rw [incomingLink1254, outgoingLink1254]
  exact CofiberE2Batches.Batch115.exact1254valid.2
theorem incomingValid1254 : CofiberE2Batches.Batch030.dependency2438.Valid := CofiberE2Batches.Batch030.dependency2438valid
theorem outgoingValid1254 : CofiberE2Batches.Batch031.dependency2480.Valid := CofiberE2Batches.Batch031.dependency2480valid
theorem incomingLink1255 : CofiberE2Batches.Batch030.dependency2440.algebra.mat = CofiberE2Batches.Batch115.exact1255.a := by decide
theorem outgoingLink1255 : CofiberE2Batches.Batch031.dependency2482.c = CofiberE2Batches.Batch115.exact1255.b := by decide
theorem linkedExact1255 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch031.dependency2482.c CofiberE2Batches.Batch030.dependency2440.algebra.mat := by
  rw [incomingLink1255, outgoingLink1255]
  exact CofiberE2Batches.Batch115.exact1255valid.2
theorem incomingValid1255 : CofiberE2Batches.Batch030.dependency2440.Valid := CofiberE2Batches.Batch030.dependency2440valid
theorem outgoingValid1255 : CofiberE2Batches.Batch031.dependency2482.Valid := CofiberE2Batches.Batch031.dependency2482valid
theorem incomingLink1256 : CofiberE2Batches.Batch030.dependency2442.algebra.mat = CofiberE2Batches.Batch115.exact1256.a := by decide
theorem outgoingLink1256 : CofiberE2Batches.Batch031.dependency2483.c = CofiberE2Batches.Batch115.exact1256.b := by decide
theorem linkedExact1256 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch031.dependency2483.c CofiberE2Batches.Batch030.dependency2442.algebra.mat := by
  rw [incomingLink1256, outgoingLink1256]
  exact CofiberE2Batches.Batch115.exact1256valid.2
theorem incomingValid1256 : CofiberE2Batches.Batch030.dependency2442.Valid := CofiberE2Batches.Batch030.dependency2442valid
theorem outgoingValid1256 : CofiberE2Batches.Batch031.dependency2483.Valid := CofiberE2Batches.Batch031.dependency2483valid
theorem incomingLink1257 : CofiberE2Batches.Batch030.dependency2444.algebra.mat = CofiberE2Batches.Batch115.exact1257.a := by decide
theorem outgoingLink1257 : CofiberE2Batches.Batch031.dependency2485.c = CofiberE2Batches.Batch115.exact1257.b := by decide
theorem linkedExact1257 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch031.dependency2485.c CofiberE2Batches.Batch030.dependency2444.algebra.mat := by
  rw [incomingLink1257, outgoingLink1257]
  exact CofiberE2Batches.Batch115.exact1257valid.2
theorem incomingValid1257 : CofiberE2Batches.Batch030.dependency2444.Valid := CofiberE2Batches.Batch030.dependency2444valid
theorem outgoingValid1257 : CofiberE2Batches.Batch031.dependency2485.Valid := CofiberE2Batches.Batch031.dependency2485valid
theorem incomingLink1258 : CofiberE2Batches.Batch030.dependency2446.algebra.mat = CofiberE2Batches.Batch115.exact1258.a := by decide
theorem outgoingLink1258 : CofiberE2Batches.Batch031.dependency2487.c = CofiberE2Batches.Batch115.exact1258.b := by decide
theorem linkedExact1258 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch031.dependency2487.c CofiberE2Batches.Batch030.dependency2446.algebra.mat := by
  rw [incomingLink1258, outgoingLink1258]
  exact CofiberE2Batches.Batch115.exact1258valid.2
theorem incomingValid1258 : CofiberE2Batches.Batch030.dependency2446.Valid := CofiberE2Batches.Batch030.dependency2446valid
theorem outgoingValid1258 : CofiberE2Batches.Batch031.dependency2487.Valid := CofiberE2Batches.Batch031.dependency2487valid
theorem incomingLink1259 : CofiberE2Batches.Batch030.dependency2448.algebra.mat = CofiberE2Batches.Batch116.exact1259.a := by decide
theorem outgoingLink1259 : CofiberE2Batches.Batch031.dependency2488.c = CofiberE2Batches.Batch116.exact1259.b := by decide
theorem linkedExact1259 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch031.dependency2488.c CofiberE2Batches.Batch030.dependency2448.algebra.mat := by
  rw [incomingLink1259, outgoingLink1259]
  exact CofiberE2Batches.Batch116.exact1259valid.2
theorem incomingValid1259 : CofiberE2Batches.Batch030.dependency2448.Valid := CofiberE2Batches.Batch030.dependency2448valid
theorem outgoingValid1259 : CofiberE2Batches.Batch031.dependency2488.Valid := CofiberE2Batches.Batch031.dependency2488valid
end CofiberLinkageBatches.Batch020
