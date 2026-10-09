import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch011
import DerivedMapBatches.Batch012
import DerivedMapBatches.Batch014
import DerivedMapBatches.Batch015
import DerivedMapBatches.Batch016
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch004
theorem firstLink200 : DerivedMapBatches.Batch015.certificate1239.algebra.mat = DerivedMapBatches.Batch015.certificate1241.a := by decide
theorem secondLink200 : DerivedMapBatches.Batch015.certificate1240.algebra.mat = DerivedMapBatches.Batch015.certificate1241.b := by decide
theorem firstValid200 : DerivedMapBatches.Batch015.certificate1239.Valid := DerivedMapBatches.Batch015.certificate1239valid
theorem secondValid200 : DerivedMapBatches.Batch015.certificate1240.Valid := DerivedMapBatches.Batch015.certificate1240valid
theorem outputValid200 : DerivedMapBatches.Batch015.certificate1241.Valid := DerivedMapBatches.Batch015.certificate1241valid
theorem linkedComposition200 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1241.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1241.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1240.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1239.algebra.mat x) := by
  rw [firstLink200, secondLink200]
  exact DerivedMapBatches.Batch015.certificate1241valid.2 x
theorem firstLink201 : DerivedMapBatches.Batch015.certificate1242.algebra.mat = DerivedMapBatches.Batch015.certificate1243.a := by decide
theorem secondLink201 : DerivedMapBatches.Batch012.certificate962.algebra.mat = DerivedMapBatches.Batch015.certificate1243.b := by decide
theorem firstValid201 : DerivedMapBatches.Batch015.certificate1242.Valid := DerivedMapBatches.Batch015.certificate1242valid
theorem secondValid201 : DerivedMapBatches.Batch012.certificate962.Valid := DerivedMapBatches.Batch012.certificate962valid
theorem outputValid201 : DerivedMapBatches.Batch015.certificate1243.Valid := DerivedMapBatches.Batch015.certificate1243valid
theorem linkedComposition201 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1243.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1243.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate962.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1242.algebra.mat x) := by
  rw [firstLink201, secondLink201]
  exact DerivedMapBatches.Batch015.certificate1243valid.2 x
theorem firstLink202 : DerivedMapBatches.Batch015.certificate1244.algebra.mat = DerivedMapBatches.Batch015.certificate1246.a := by decide
theorem secondLink202 : DerivedMapBatches.Batch015.certificate1245.algebra.mat = DerivedMapBatches.Batch015.certificate1246.b := by decide
theorem firstValid202 : DerivedMapBatches.Batch015.certificate1244.Valid := DerivedMapBatches.Batch015.certificate1244valid
theorem secondValid202 : DerivedMapBatches.Batch015.certificate1245.Valid := DerivedMapBatches.Batch015.certificate1245valid
theorem outputValid202 : DerivedMapBatches.Batch015.certificate1246.Valid := DerivedMapBatches.Batch015.certificate1246valid
theorem linkedComposition202 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1246.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1246.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1245.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1244.algebra.mat x) := by
  rw [firstLink202, secondLink202]
  exact DerivedMapBatches.Batch015.certificate1246valid.2 x
theorem firstLink203 : DerivedMapBatches.Batch015.certificate1247.algebra.mat = DerivedMapBatches.Batch015.certificate1248.a := by decide
theorem secondLink203 : DerivedMapBatches.Batch012.certificate968.algebra.mat = DerivedMapBatches.Batch015.certificate1248.b := by decide
theorem firstValid203 : DerivedMapBatches.Batch015.certificate1247.Valid := DerivedMapBatches.Batch015.certificate1247valid
theorem secondValid203 : DerivedMapBatches.Batch012.certificate968.Valid := DerivedMapBatches.Batch012.certificate968valid
theorem outputValid203 : DerivedMapBatches.Batch015.certificate1248.Valid := DerivedMapBatches.Batch015.certificate1248valid
theorem linkedComposition203 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1248.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1248.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate968.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1247.algebra.mat x) := by
  rw [firstLink203, secondLink203]
  exact DerivedMapBatches.Batch015.certificate1248valid.2 x
theorem firstLink204 : DerivedMapBatches.Batch015.certificate1249.algebra.mat = DerivedMapBatches.Batch015.certificate1251.a := by decide
theorem secondLink204 : DerivedMapBatches.Batch015.certificate1250.algebra.mat = DerivedMapBatches.Batch015.certificate1251.b := by decide
theorem firstValid204 : DerivedMapBatches.Batch015.certificate1249.Valid := DerivedMapBatches.Batch015.certificate1249valid
theorem secondValid204 : DerivedMapBatches.Batch015.certificate1250.Valid := DerivedMapBatches.Batch015.certificate1250valid
theorem outputValid204 : DerivedMapBatches.Batch015.certificate1251.Valid := DerivedMapBatches.Batch015.certificate1251valid
theorem linkedComposition204 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1251.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1251.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1250.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1249.algebra.mat x) := by
  rw [firstLink204, secondLink204]
  exact DerivedMapBatches.Batch015.certificate1251valid.2 x
theorem firstLink205 : DerivedMapBatches.Batch015.certificate1252.algebra.mat = DerivedMapBatches.Batch015.certificate1253.a := by decide
theorem secondLink205 : DerivedMapBatches.Batch012.certificate974.algebra.mat = DerivedMapBatches.Batch015.certificate1253.b := by decide
theorem firstValid205 : DerivedMapBatches.Batch015.certificate1252.Valid := DerivedMapBatches.Batch015.certificate1252valid
theorem secondValid205 : DerivedMapBatches.Batch012.certificate974.Valid := DerivedMapBatches.Batch012.certificate974valid
theorem outputValid205 : DerivedMapBatches.Batch015.certificate1253.Valid := DerivedMapBatches.Batch015.certificate1253valid
theorem linkedComposition205 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1253.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1253.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate974.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1252.algebra.mat x) := by
  rw [firstLink205, secondLink205]
  exact DerivedMapBatches.Batch015.certificate1253valid.2 x
theorem firstLink206 : DerivedMapBatches.Batch015.certificate1254.algebra.mat = DerivedMapBatches.Batch015.certificate1256.a := by decide
theorem secondLink206 : DerivedMapBatches.Batch015.certificate1255.algebra.mat = DerivedMapBatches.Batch015.certificate1256.b := by decide
theorem firstValid206 : DerivedMapBatches.Batch015.certificate1254.Valid := DerivedMapBatches.Batch015.certificate1254valid
theorem secondValid206 : DerivedMapBatches.Batch015.certificate1255.Valid := DerivedMapBatches.Batch015.certificate1255valid
theorem outputValid206 : DerivedMapBatches.Batch015.certificate1256.Valid := DerivedMapBatches.Batch015.certificate1256valid
theorem linkedComposition206 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1256.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1256.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1255.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1254.algebra.mat x) := by
  rw [firstLink206, secondLink206]
  exact DerivedMapBatches.Batch015.certificate1256valid.2 x
theorem firstLink207 : DerivedMapBatches.Batch015.certificate1257.algebra.mat = DerivedMapBatches.Batch015.certificate1258.a := by decide
theorem secondLink207 : DerivedMapBatches.Batch012.certificate977.algebra.mat = DerivedMapBatches.Batch015.certificate1258.b := by decide
theorem firstValid207 : DerivedMapBatches.Batch015.certificate1257.Valid := DerivedMapBatches.Batch015.certificate1257valid
theorem secondValid207 : DerivedMapBatches.Batch012.certificate977.Valid := DerivedMapBatches.Batch012.certificate977valid
theorem outputValid207 : DerivedMapBatches.Batch015.certificate1258.Valid := DerivedMapBatches.Batch015.certificate1258valid
theorem linkedComposition207 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1258.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1258.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate977.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1257.algebra.mat x) := by
  rw [firstLink207, secondLink207]
  exact DerivedMapBatches.Batch015.certificate1258valid.2 x
theorem firstLink208 : DerivedMapBatches.Batch015.certificate1259.algebra.mat = DerivedMapBatches.Batch015.certificate1261.a := by decide
theorem secondLink208 : DerivedMapBatches.Batch015.certificate1260.algebra.mat = DerivedMapBatches.Batch015.certificate1261.b := by decide
theorem firstValid208 : DerivedMapBatches.Batch015.certificate1259.Valid := DerivedMapBatches.Batch015.certificate1259valid
theorem secondValid208 : DerivedMapBatches.Batch015.certificate1260.Valid := DerivedMapBatches.Batch015.certificate1260valid
theorem outputValid208 : DerivedMapBatches.Batch015.certificate1261.Valid := DerivedMapBatches.Batch015.certificate1261valid
theorem linkedComposition208 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1261.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1261.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1260.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1259.algebra.mat x) := by
  rw [firstLink208, secondLink208]
  exact DerivedMapBatches.Batch015.certificate1261valid.2 x
theorem firstLink209 : DerivedMapBatches.Batch015.certificate1262.algebra.mat = DerivedMapBatches.Batch015.certificate1264.a := by decide
theorem secondLink209 : DerivedMapBatches.Batch015.certificate1263.algebra.mat = DerivedMapBatches.Batch015.certificate1264.b := by decide
theorem firstValid209 : DerivedMapBatches.Batch015.certificate1262.Valid := DerivedMapBatches.Batch015.certificate1262valid
theorem secondValid209 : DerivedMapBatches.Batch015.certificate1263.Valid := DerivedMapBatches.Batch015.certificate1263valid
theorem outputValid209 : DerivedMapBatches.Batch015.certificate1264.Valid := DerivedMapBatches.Batch015.certificate1264valid
theorem linkedComposition209 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1264.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1264.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1263.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1262.algebra.mat x) := by
  rw [firstLink209, secondLink209]
  exact DerivedMapBatches.Batch015.certificate1264valid.2 x
theorem firstLink210 : DerivedMapBatches.Batch014.certificate1178.c = DerivedMapBatches.Batch015.certificate1266.a := by decide
theorem secondLink210 : DerivedMapBatches.Batch015.certificate1265.algebra.mat = DerivedMapBatches.Batch015.certificate1266.b := by decide
theorem firstValid210 : DerivedMapBatches.Batch014.certificate1178.Valid := DerivedMapBatches.Batch014.certificate1178valid
theorem secondValid210 : DerivedMapBatches.Batch015.certificate1265.Valid := DerivedMapBatches.Batch015.certificate1265valid
theorem outputValid210 : DerivedMapBatches.Batch015.certificate1266.Valid := DerivedMapBatches.Batch015.certificate1266valid
theorem linkedComposition210 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1266.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1266.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1265.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1178.c x) := by
  rw [firstLink210, secondLink210]
  exact DerivedMapBatches.Batch015.certificate1266valid.2 x
theorem firstLink211 : DerivedMapBatches.Batch014.certificate1181.c = DerivedMapBatches.Batch015.certificate1268.a := by decide
theorem secondLink211 : DerivedMapBatches.Batch015.certificate1267.algebra.mat = DerivedMapBatches.Batch015.certificate1268.b := by decide
theorem firstValid211 : DerivedMapBatches.Batch014.certificate1181.Valid := DerivedMapBatches.Batch014.certificate1181valid
theorem secondValid211 : DerivedMapBatches.Batch015.certificate1267.Valid := DerivedMapBatches.Batch015.certificate1267valid
theorem outputValid211 : DerivedMapBatches.Batch015.certificate1268.Valid := DerivedMapBatches.Batch015.certificate1268valid
theorem linkedComposition211 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1268.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1268.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1267.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1181.c x) := by
  rw [firstLink211, secondLink211]
  exact DerivedMapBatches.Batch015.certificate1268valid.2 x
theorem firstLink212 : DerivedMapBatches.Batch014.certificate1183.c = DerivedMapBatches.Batch015.certificate1269.a := by decide
theorem secondLink212 : DerivedMapBatches.Batch011.certificate903.algebra.mat = DerivedMapBatches.Batch015.certificate1269.b := by decide
theorem firstValid212 : DerivedMapBatches.Batch014.certificate1183.Valid := DerivedMapBatches.Batch014.certificate1183valid
theorem secondValid212 : DerivedMapBatches.Batch011.certificate903.Valid := DerivedMapBatches.Batch011.certificate903valid
theorem outputValid212 : DerivedMapBatches.Batch015.certificate1269.Valid := DerivedMapBatches.Batch015.certificate1269valid
theorem linkedComposition212 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1269.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1269.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate903.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1183.c x) := by
  rw [firstLink212, secondLink212]
  exact DerivedMapBatches.Batch015.certificate1269valid.2 x
theorem firstLink213 : DerivedMapBatches.Batch014.certificate1185.c = DerivedMapBatches.Batch015.certificate1270.a := by decide
theorem secondLink213 : DerivedMapBatches.Batch011.certificate906.algebra.mat = DerivedMapBatches.Batch015.certificate1270.b := by decide
theorem firstValid213 : DerivedMapBatches.Batch014.certificate1185.Valid := DerivedMapBatches.Batch014.certificate1185valid
theorem secondValid213 : DerivedMapBatches.Batch011.certificate906.Valid := DerivedMapBatches.Batch011.certificate906valid
theorem outputValid213 : DerivedMapBatches.Batch015.certificate1270.Valid := DerivedMapBatches.Batch015.certificate1270valid
theorem linkedComposition213 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1270.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1270.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate906.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1185.c x) := by
  rw [firstLink213, secondLink213]
  exact DerivedMapBatches.Batch015.certificate1270valid.2 x
theorem firstLink214 : DerivedMapBatches.Batch014.certificate1187.c = DerivedMapBatches.Batch015.certificate1271.a := by decide
theorem secondLink214 : DerivedMapBatches.Batch011.certificate909.algebra.mat = DerivedMapBatches.Batch015.certificate1271.b := by decide
theorem firstValid214 : DerivedMapBatches.Batch014.certificate1187.Valid := DerivedMapBatches.Batch014.certificate1187valid
theorem secondValid214 : DerivedMapBatches.Batch011.certificate909.Valid := DerivedMapBatches.Batch011.certificate909valid
theorem outputValid214 : DerivedMapBatches.Batch015.certificate1271.Valid := DerivedMapBatches.Batch015.certificate1271valid
theorem linkedComposition214 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1271.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1271.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate909.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1187.c x) := by
  rw [firstLink214, secondLink214]
  exact DerivedMapBatches.Batch015.certificate1271valid.2 x
theorem firstLink215 : DerivedMapBatches.Batch014.certificate1190.c = DerivedMapBatches.Batch015.certificate1273.a := by decide
theorem secondLink215 : DerivedMapBatches.Batch015.certificate1272.algebra.mat = DerivedMapBatches.Batch015.certificate1273.b := by decide
theorem firstValid215 : DerivedMapBatches.Batch014.certificate1190.Valid := DerivedMapBatches.Batch014.certificate1190valid
theorem secondValid215 : DerivedMapBatches.Batch015.certificate1272.Valid := DerivedMapBatches.Batch015.certificate1272valid
theorem outputValid215 : DerivedMapBatches.Batch015.certificate1273.Valid := DerivedMapBatches.Batch015.certificate1273valid
theorem linkedComposition215 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1273.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1273.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1272.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1190.c x) := by
  rw [firstLink215, secondLink215]
  exact DerivedMapBatches.Batch015.certificate1273valid.2 x
theorem firstLink216 : DerivedMapBatches.Batch014.certificate1192.c = DerivedMapBatches.Batch015.certificate1274.a := by decide
theorem secondLink216 : DerivedMapBatches.Batch011.certificate915.algebra.mat = DerivedMapBatches.Batch015.certificate1274.b := by decide
theorem firstValid216 : DerivedMapBatches.Batch014.certificate1192.Valid := DerivedMapBatches.Batch014.certificate1192valid
theorem secondValid216 : DerivedMapBatches.Batch011.certificate915.Valid := DerivedMapBatches.Batch011.certificate915valid
theorem outputValid216 : DerivedMapBatches.Batch015.certificate1274.Valid := DerivedMapBatches.Batch015.certificate1274valid
theorem linkedComposition216 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1274.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1274.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate915.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1192.c x) := by
  rw [firstLink216, secondLink216]
  exact DerivedMapBatches.Batch015.certificate1274valid.2 x
theorem firstLink217 : DerivedMapBatches.Batch014.certificate1195.c = DerivedMapBatches.Batch015.certificate1276.a := by decide
theorem secondLink217 : DerivedMapBatches.Batch015.certificate1275.algebra.mat = DerivedMapBatches.Batch015.certificate1276.b := by decide
theorem firstValid217 : DerivedMapBatches.Batch014.certificate1195.Valid := DerivedMapBatches.Batch014.certificate1195valid
theorem secondValid217 : DerivedMapBatches.Batch015.certificate1275.Valid := DerivedMapBatches.Batch015.certificate1275valid
theorem outputValid217 : DerivedMapBatches.Batch015.certificate1276.Valid := DerivedMapBatches.Batch015.certificate1276valid
theorem linkedComposition217 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1276.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1276.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1275.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1195.c x) := by
  rw [firstLink217, secondLink217]
  exact DerivedMapBatches.Batch015.certificate1276valid.2 x
theorem firstLink218 : DerivedMapBatches.Batch014.certificate1198.c = DerivedMapBatches.Batch015.certificate1278.a := by decide
theorem secondLink218 : DerivedMapBatches.Batch015.certificate1277.algebra.mat = DerivedMapBatches.Batch015.certificate1278.b := by decide
theorem firstValid218 : DerivedMapBatches.Batch014.certificate1198.Valid := DerivedMapBatches.Batch014.certificate1198valid
theorem secondValid218 : DerivedMapBatches.Batch015.certificate1277.Valid := DerivedMapBatches.Batch015.certificate1277valid
theorem outputValid218 : DerivedMapBatches.Batch015.certificate1278.Valid := DerivedMapBatches.Batch015.certificate1278valid
theorem linkedComposition218 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1278.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1278.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1277.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1198.c x) := by
  rw [firstLink218, secondLink218]
  exact DerivedMapBatches.Batch015.certificate1278valid.2 x
theorem firstLink219 : DerivedMapBatches.Batch015.certificate1200.c = DerivedMapBatches.Batch015.certificate1279.a := by decide
theorem secondLink219 : DerivedMapBatches.Batch011.certificate921.algebra.mat = DerivedMapBatches.Batch015.certificate1279.b := by decide
theorem firstValid219 : DerivedMapBatches.Batch015.certificate1200.Valid := DerivedMapBatches.Batch015.certificate1200valid
theorem secondValid219 : DerivedMapBatches.Batch011.certificate921.Valid := DerivedMapBatches.Batch011.certificate921valid
theorem outputValid219 : DerivedMapBatches.Batch015.certificate1279.Valid := DerivedMapBatches.Batch015.certificate1279valid
theorem linkedComposition219 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1279.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1279.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate921.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1200.c x) := by
  rw [firstLink219, secondLink219]
  exact DerivedMapBatches.Batch015.certificate1279valid.2 x
theorem firstLink220 : DerivedMapBatches.Batch015.certificate1202.c = DerivedMapBatches.Batch016.certificate1280.a := by decide
theorem secondLink220 : DerivedMapBatches.Batch011.certificate924.algebra.mat = DerivedMapBatches.Batch016.certificate1280.b := by decide
theorem firstValid220 : DerivedMapBatches.Batch015.certificate1202.Valid := DerivedMapBatches.Batch015.certificate1202valid
theorem secondValid220 : DerivedMapBatches.Batch011.certificate924.Valid := DerivedMapBatches.Batch011.certificate924valid
theorem outputValid220 : DerivedMapBatches.Batch016.certificate1280.Valid := DerivedMapBatches.Batch016.certificate1280valid
theorem linkedComposition220 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1280.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1280.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate924.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1202.c x) := by
  rw [firstLink220, secondLink220]
  exact DerivedMapBatches.Batch016.certificate1280valid.2 x
theorem firstLink221 : DerivedMapBatches.Batch015.certificate1205.c = DerivedMapBatches.Batch016.certificate1282.a := by decide
theorem secondLink221 : DerivedMapBatches.Batch016.certificate1281.algebra.mat = DerivedMapBatches.Batch016.certificate1282.b := by decide
theorem firstValid221 : DerivedMapBatches.Batch015.certificate1205.Valid := DerivedMapBatches.Batch015.certificate1205valid
theorem secondValid221 : DerivedMapBatches.Batch016.certificate1281.Valid := DerivedMapBatches.Batch016.certificate1281valid
theorem outputValid221 : DerivedMapBatches.Batch016.certificate1282.Valid := DerivedMapBatches.Batch016.certificate1282valid
theorem linkedComposition221 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1282.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1282.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1281.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1205.c x) := by
  rw [firstLink221, secondLink221]
  exact DerivedMapBatches.Batch016.certificate1282valid.2 x
theorem firstLink222 : DerivedMapBatches.Batch015.certificate1207.c = DerivedMapBatches.Batch016.certificate1283.a := by decide
theorem secondLink222 : DerivedMapBatches.Batch011.certificate930.algebra.mat = DerivedMapBatches.Batch016.certificate1283.b := by decide
theorem firstValid222 : DerivedMapBatches.Batch015.certificate1207.Valid := DerivedMapBatches.Batch015.certificate1207valid
theorem secondValid222 : DerivedMapBatches.Batch011.certificate930.Valid := DerivedMapBatches.Batch011.certificate930valid
theorem outputValid222 : DerivedMapBatches.Batch016.certificate1283.Valid := DerivedMapBatches.Batch016.certificate1283valid
theorem linkedComposition222 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1283.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1283.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate930.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1207.c x) := by
  rw [firstLink222, secondLink222]
  exact DerivedMapBatches.Batch016.certificate1283valid.2 x
theorem firstLink223 : DerivedMapBatches.Batch015.certificate1209.c = DerivedMapBatches.Batch016.certificate1284.a := by decide
theorem secondLink223 : DerivedMapBatches.Batch011.certificate933.algebra.mat = DerivedMapBatches.Batch016.certificate1284.b := by decide
theorem firstValid223 : DerivedMapBatches.Batch015.certificate1209.Valid := DerivedMapBatches.Batch015.certificate1209valid
theorem secondValid223 : DerivedMapBatches.Batch011.certificate933.Valid := DerivedMapBatches.Batch011.certificate933valid
theorem outputValid223 : DerivedMapBatches.Batch016.certificate1284.Valid := DerivedMapBatches.Batch016.certificate1284valid
theorem linkedComposition223 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1284.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1284.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate933.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1209.c x) := by
  rw [firstLink223, secondLink223]
  exact DerivedMapBatches.Batch016.certificate1284valid.2 x
theorem firstLink224 : DerivedMapBatches.Batch015.certificate1212.c = DerivedMapBatches.Batch016.certificate1286.a := by decide
theorem secondLink224 : DerivedMapBatches.Batch016.certificate1285.algebra.mat = DerivedMapBatches.Batch016.certificate1286.b := by decide
theorem firstValid224 : DerivedMapBatches.Batch015.certificate1212.Valid := DerivedMapBatches.Batch015.certificate1212valid
theorem secondValid224 : DerivedMapBatches.Batch016.certificate1285.Valid := DerivedMapBatches.Batch016.certificate1285valid
theorem outputValid224 : DerivedMapBatches.Batch016.certificate1286.Valid := DerivedMapBatches.Batch016.certificate1286valid
theorem linkedComposition224 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1286.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1286.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1285.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1212.c x) := by
  rw [firstLink224, secondLink224]
  exact DerivedMapBatches.Batch016.certificate1286valid.2 x
theorem firstLink225 : DerivedMapBatches.Batch015.certificate1214.c = DerivedMapBatches.Batch016.certificate1287.a := by decide
theorem secondLink225 : DerivedMapBatches.Batch011.certificate936.algebra.mat = DerivedMapBatches.Batch016.certificate1287.b := by decide
theorem firstValid225 : DerivedMapBatches.Batch015.certificate1214.Valid := DerivedMapBatches.Batch015.certificate1214valid
theorem secondValid225 : DerivedMapBatches.Batch011.certificate936.Valid := DerivedMapBatches.Batch011.certificate936valid
theorem outputValid225 : DerivedMapBatches.Batch016.certificate1287.Valid := DerivedMapBatches.Batch016.certificate1287valid
theorem linkedComposition225 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1287.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1287.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate936.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1214.c x) := by
  rw [firstLink225, secondLink225]
  exact DerivedMapBatches.Batch016.certificate1287valid.2 x
theorem firstLink226 : DerivedMapBatches.Batch015.certificate1217.c = DerivedMapBatches.Batch016.certificate1289.a := by decide
theorem secondLink226 : DerivedMapBatches.Batch016.certificate1288.algebra.mat = DerivedMapBatches.Batch016.certificate1289.b := by decide
theorem firstValid226 : DerivedMapBatches.Batch015.certificate1217.Valid := DerivedMapBatches.Batch015.certificate1217valid
theorem secondValid226 : DerivedMapBatches.Batch016.certificate1288.Valid := DerivedMapBatches.Batch016.certificate1288valid
theorem outputValid226 : DerivedMapBatches.Batch016.certificate1289.Valid := DerivedMapBatches.Batch016.certificate1289valid
theorem linkedComposition226 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1289.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1289.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1288.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1217.c x) := by
  rw [firstLink226, secondLink226]
  exact DerivedMapBatches.Batch016.certificate1289valid.2 x
theorem firstLink227 : DerivedMapBatches.Batch015.certificate1219.c = DerivedMapBatches.Batch016.certificate1290.a := by decide
theorem secondLink227 : DerivedMapBatches.Batch011.certificate942.algebra.mat = DerivedMapBatches.Batch016.certificate1290.b := by decide
theorem firstValid227 : DerivedMapBatches.Batch015.certificate1219.Valid := DerivedMapBatches.Batch015.certificate1219valid
theorem secondValid227 : DerivedMapBatches.Batch011.certificate942.Valid := DerivedMapBatches.Batch011.certificate942valid
theorem outputValid227 : DerivedMapBatches.Batch016.certificate1290.Valid := DerivedMapBatches.Batch016.certificate1290valid
theorem linkedComposition227 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1290.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1290.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate942.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1219.c x) := by
  rw [firstLink227, secondLink227]
  exact DerivedMapBatches.Batch016.certificate1290valid.2 x
theorem firstLink228 : DerivedMapBatches.Batch015.certificate1221.c = DerivedMapBatches.Batch016.certificate1291.a := by decide
theorem secondLink228 : DerivedMapBatches.Batch011.certificate945.algebra.mat = DerivedMapBatches.Batch016.certificate1291.b := by decide
theorem firstValid228 : DerivedMapBatches.Batch015.certificate1221.Valid := DerivedMapBatches.Batch015.certificate1221valid
theorem secondValid228 : DerivedMapBatches.Batch011.certificate945.Valid := DerivedMapBatches.Batch011.certificate945valid
theorem outputValid228 : DerivedMapBatches.Batch016.certificate1291.Valid := DerivedMapBatches.Batch016.certificate1291valid
theorem linkedComposition228 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1291.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1291.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate945.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1221.c x) := by
  rw [firstLink228, secondLink228]
  exact DerivedMapBatches.Batch016.certificate1291valid.2 x
theorem firstLink229 : DerivedMapBatches.Batch015.certificate1224.c = DerivedMapBatches.Batch016.certificate1293.a := by decide
theorem secondLink229 : DerivedMapBatches.Batch016.certificate1292.algebra.mat = DerivedMapBatches.Batch016.certificate1293.b := by decide
theorem firstValid229 : DerivedMapBatches.Batch015.certificate1224.Valid := DerivedMapBatches.Batch015.certificate1224valid
theorem secondValid229 : DerivedMapBatches.Batch016.certificate1292.Valid := DerivedMapBatches.Batch016.certificate1292valid
theorem outputValid229 : DerivedMapBatches.Batch016.certificate1293.Valid := DerivedMapBatches.Batch016.certificate1293valid
theorem linkedComposition229 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1293.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1293.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1292.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1224.c x) := by
  rw [firstLink229, secondLink229]
  exact DerivedMapBatches.Batch016.certificate1293valid.2 x
theorem firstLink230 : DerivedMapBatches.Batch015.certificate1227.c = DerivedMapBatches.Batch016.certificate1295.a := by decide
theorem secondLink230 : DerivedMapBatches.Batch016.certificate1294.algebra.mat = DerivedMapBatches.Batch016.certificate1295.b := by decide
theorem firstValid230 : DerivedMapBatches.Batch015.certificate1227.Valid := DerivedMapBatches.Batch015.certificate1227valid
theorem secondValid230 : DerivedMapBatches.Batch016.certificate1294.Valid := DerivedMapBatches.Batch016.certificate1294valid
theorem outputValid230 : DerivedMapBatches.Batch016.certificate1295.Valid := DerivedMapBatches.Batch016.certificate1295valid
theorem linkedComposition230 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1295.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1295.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1294.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1227.c x) := by
  rw [firstLink230, secondLink230]
  exact DerivedMapBatches.Batch016.certificate1295valid.2 x
theorem firstLink231 : DerivedMapBatches.Batch015.certificate1229.c = DerivedMapBatches.Batch016.certificate1296.a := by decide
theorem secondLink231 : DerivedMapBatches.Batch011.certificate951.algebra.mat = DerivedMapBatches.Batch016.certificate1296.b := by decide
theorem firstValid231 : DerivedMapBatches.Batch015.certificate1229.Valid := DerivedMapBatches.Batch015.certificate1229valid
theorem secondValid231 : DerivedMapBatches.Batch011.certificate951.Valid := DerivedMapBatches.Batch011.certificate951valid
theorem outputValid231 : DerivedMapBatches.Batch016.certificate1296.Valid := DerivedMapBatches.Batch016.certificate1296valid
theorem linkedComposition231 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1296.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1296.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate951.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1229.c x) := by
  rw [firstLink231, secondLink231]
  exact DerivedMapBatches.Batch016.certificate1296valid.2 x
theorem firstLink232 : DerivedMapBatches.Batch015.certificate1231.c = DerivedMapBatches.Batch016.certificate1297.a := by decide
theorem secondLink232 : DerivedMapBatches.Batch011.certificate954.algebra.mat = DerivedMapBatches.Batch016.certificate1297.b := by decide
theorem firstValid232 : DerivedMapBatches.Batch015.certificate1231.Valid := DerivedMapBatches.Batch015.certificate1231valid
theorem secondValid232 : DerivedMapBatches.Batch011.certificate954.Valid := DerivedMapBatches.Batch011.certificate954valid
theorem outputValid232 : DerivedMapBatches.Batch016.certificate1297.Valid := DerivedMapBatches.Batch016.certificate1297valid
theorem linkedComposition232 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1297.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1297.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate954.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1231.c x) := by
  rw [firstLink232, secondLink232]
  exact DerivedMapBatches.Batch016.certificate1297valid.2 x
theorem firstLink233 : DerivedMapBatches.Batch015.certificate1234.c = DerivedMapBatches.Batch016.certificate1299.a := by decide
theorem secondLink233 : DerivedMapBatches.Batch016.certificate1298.algebra.mat = DerivedMapBatches.Batch016.certificate1299.b := by decide
theorem firstValid233 : DerivedMapBatches.Batch015.certificate1234.Valid := DerivedMapBatches.Batch015.certificate1234valid
theorem secondValid233 : DerivedMapBatches.Batch016.certificate1298.Valid := DerivedMapBatches.Batch016.certificate1298valid
theorem outputValid233 : DerivedMapBatches.Batch016.certificate1299.Valid := DerivedMapBatches.Batch016.certificate1299valid
theorem linkedComposition233 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1299.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1299.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1298.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1234.c x) := by
  rw [firstLink233, secondLink233]
  exact DerivedMapBatches.Batch016.certificate1299valid.2 x
theorem firstLink234 : DerivedMapBatches.Batch015.certificate1236.c = DerivedMapBatches.Batch016.certificate1300.a := by decide
theorem secondLink234 : DerivedMapBatches.Batch011.certificate957.algebra.mat = DerivedMapBatches.Batch016.certificate1300.b := by decide
theorem firstValid234 : DerivedMapBatches.Batch015.certificate1236.Valid := DerivedMapBatches.Batch015.certificate1236valid
theorem secondValid234 : DerivedMapBatches.Batch011.certificate957.Valid := DerivedMapBatches.Batch011.certificate957valid
theorem outputValid234 : DerivedMapBatches.Batch016.certificate1300.Valid := DerivedMapBatches.Batch016.certificate1300valid
theorem linkedComposition234 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1300.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1300.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate957.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1236.c x) := by
  rw [firstLink234, secondLink234]
  exact DerivedMapBatches.Batch016.certificate1300valid.2 x
theorem firstLink235 : DerivedMapBatches.Batch015.certificate1238.c = DerivedMapBatches.Batch016.certificate1301.a := by decide
theorem secondLink235 : DerivedMapBatches.Batch012.certificate960.algebra.mat = DerivedMapBatches.Batch016.certificate1301.b := by decide
theorem firstValid235 : DerivedMapBatches.Batch015.certificate1238.Valid := DerivedMapBatches.Batch015.certificate1238valid
theorem secondValid235 : DerivedMapBatches.Batch012.certificate960.Valid := DerivedMapBatches.Batch012.certificate960valid
theorem outputValid235 : DerivedMapBatches.Batch016.certificate1301.Valid := DerivedMapBatches.Batch016.certificate1301valid
theorem linkedComposition235 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1301.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1301.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate960.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1238.c x) := by
  rw [firstLink235, secondLink235]
  exact DerivedMapBatches.Batch016.certificate1301valid.2 x
theorem firstLink236 : DerivedMapBatches.Batch015.certificate1241.c = DerivedMapBatches.Batch016.certificate1303.a := by decide
theorem secondLink236 : DerivedMapBatches.Batch016.certificate1302.algebra.mat = DerivedMapBatches.Batch016.certificate1303.b := by decide
theorem firstValid236 : DerivedMapBatches.Batch015.certificate1241.Valid := DerivedMapBatches.Batch015.certificate1241valid
theorem secondValid236 : DerivedMapBatches.Batch016.certificate1302.Valid := DerivedMapBatches.Batch016.certificate1302valid
theorem outputValid236 : DerivedMapBatches.Batch016.certificate1303.Valid := DerivedMapBatches.Batch016.certificate1303valid
theorem linkedComposition236 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1303.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1303.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1302.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1241.c x) := by
  rw [firstLink236, secondLink236]
  exact DerivedMapBatches.Batch016.certificate1303valid.2 x
theorem firstLink237 : DerivedMapBatches.Batch015.certificate1243.c = DerivedMapBatches.Batch016.certificate1304.a := by decide
theorem secondLink237 : DerivedMapBatches.Batch012.certificate963.algebra.mat = DerivedMapBatches.Batch016.certificate1304.b := by decide
theorem firstValid237 : DerivedMapBatches.Batch015.certificate1243.Valid := DerivedMapBatches.Batch015.certificate1243valid
theorem secondValid237 : DerivedMapBatches.Batch012.certificate963.Valid := DerivedMapBatches.Batch012.certificate963valid
theorem outputValid237 : DerivedMapBatches.Batch016.certificate1304.Valid := DerivedMapBatches.Batch016.certificate1304valid
theorem linkedComposition237 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1304.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1304.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate963.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1243.c x) := by
  rw [firstLink237, secondLink237]
  exact DerivedMapBatches.Batch016.certificate1304valid.2 x
theorem firstLink238 : DerivedMapBatches.Batch015.certificate1246.c = DerivedMapBatches.Batch016.certificate1306.a := by decide
theorem secondLink238 : DerivedMapBatches.Batch016.certificate1305.algebra.mat = DerivedMapBatches.Batch016.certificate1306.b := by decide
theorem firstValid238 : DerivedMapBatches.Batch015.certificate1246.Valid := DerivedMapBatches.Batch015.certificate1246valid
theorem secondValid238 : DerivedMapBatches.Batch016.certificate1305.Valid := DerivedMapBatches.Batch016.certificate1305valid
theorem outputValid238 : DerivedMapBatches.Batch016.certificate1306.Valid := DerivedMapBatches.Batch016.certificate1306valid
theorem linkedComposition238 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1306.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1306.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1305.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1246.c x) := by
  rw [firstLink238, secondLink238]
  exact DerivedMapBatches.Batch016.certificate1306valid.2 x
theorem firstLink239 : DerivedMapBatches.Batch015.certificate1248.c = DerivedMapBatches.Batch016.certificate1307.a := by decide
theorem secondLink239 : DerivedMapBatches.Batch012.certificate969.algebra.mat = DerivedMapBatches.Batch016.certificate1307.b := by decide
theorem firstValid239 : DerivedMapBatches.Batch015.certificate1248.Valid := DerivedMapBatches.Batch015.certificate1248valid
theorem secondValid239 : DerivedMapBatches.Batch012.certificate969.Valid := DerivedMapBatches.Batch012.certificate969valid
theorem outputValid239 : DerivedMapBatches.Batch016.certificate1307.Valid := DerivedMapBatches.Batch016.certificate1307valid
theorem linkedComposition239 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1307.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1307.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate969.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1248.c x) := by
  rw [firstLink239, secondLink239]
  exact DerivedMapBatches.Batch016.certificate1307valid.2 x
theorem firstLink240 : DerivedMapBatches.Batch015.certificate1251.c = DerivedMapBatches.Batch016.certificate1309.a := by decide
theorem secondLink240 : DerivedMapBatches.Batch016.certificate1308.algebra.mat = DerivedMapBatches.Batch016.certificate1309.b := by decide
theorem firstValid240 : DerivedMapBatches.Batch015.certificate1251.Valid := DerivedMapBatches.Batch015.certificate1251valid
theorem secondValid240 : DerivedMapBatches.Batch016.certificate1308.Valid := DerivedMapBatches.Batch016.certificate1308valid
theorem outputValid240 : DerivedMapBatches.Batch016.certificate1309.Valid := DerivedMapBatches.Batch016.certificate1309valid
theorem linkedComposition240 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1309.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1309.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1308.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1251.c x) := by
  rw [firstLink240, secondLink240]
  exact DerivedMapBatches.Batch016.certificate1309valid.2 x
theorem firstLink241 : DerivedMapBatches.Batch015.certificate1253.c = DerivedMapBatches.Batch016.certificate1310.a := by decide
theorem secondLink241 : DerivedMapBatches.Batch012.certificate975.algebra.mat = DerivedMapBatches.Batch016.certificate1310.b := by decide
theorem firstValid241 : DerivedMapBatches.Batch015.certificate1253.Valid := DerivedMapBatches.Batch015.certificate1253valid
theorem secondValid241 : DerivedMapBatches.Batch012.certificate975.Valid := DerivedMapBatches.Batch012.certificate975valid
theorem outputValid241 : DerivedMapBatches.Batch016.certificate1310.Valid := DerivedMapBatches.Batch016.certificate1310valid
theorem linkedComposition241 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1310.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1310.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate975.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1253.c x) := by
  rw [firstLink241, secondLink241]
  exact DerivedMapBatches.Batch016.certificate1310valid.2 x
theorem firstLink242 : DerivedMapBatches.Batch015.certificate1256.c = DerivedMapBatches.Batch016.certificate1312.a := by decide
theorem secondLink242 : DerivedMapBatches.Batch016.certificate1311.algebra.mat = DerivedMapBatches.Batch016.certificate1312.b := by decide
theorem firstValid242 : DerivedMapBatches.Batch015.certificate1256.Valid := DerivedMapBatches.Batch015.certificate1256valid
theorem secondValid242 : DerivedMapBatches.Batch016.certificate1311.Valid := DerivedMapBatches.Batch016.certificate1311valid
theorem outputValid242 : DerivedMapBatches.Batch016.certificate1312.Valid := DerivedMapBatches.Batch016.certificate1312valid
theorem linkedComposition242 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1312.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1312.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1311.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1256.c x) := by
  rw [firstLink242, secondLink242]
  exact DerivedMapBatches.Batch016.certificate1312valid.2 x
theorem firstLink243 : DerivedMapBatches.Batch015.certificate1258.c = DerivedMapBatches.Batch016.certificate1313.a := by decide
theorem secondLink243 : DerivedMapBatches.Batch012.certificate978.algebra.mat = DerivedMapBatches.Batch016.certificate1313.b := by decide
theorem firstValid243 : DerivedMapBatches.Batch015.certificate1258.Valid := DerivedMapBatches.Batch015.certificate1258valid
theorem secondValid243 : DerivedMapBatches.Batch012.certificate978.Valid := DerivedMapBatches.Batch012.certificate978valid
theorem outputValid243 : DerivedMapBatches.Batch016.certificate1313.Valid := DerivedMapBatches.Batch016.certificate1313valid
theorem linkedComposition243 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1313.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1313.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate978.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1258.c x) := by
  rw [firstLink243, secondLink243]
  exact DerivedMapBatches.Batch016.certificate1313valid.2 x
theorem firstLink244 : DerivedMapBatches.Batch015.certificate1261.c = DerivedMapBatches.Batch016.certificate1315.a := by decide
theorem secondLink244 : DerivedMapBatches.Batch016.certificate1314.algebra.mat = DerivedMapBatches.Batch016.certificate1315.b := by decide
theorem firstValid244 : DerivedMapBatches.Batch015.certificate1261.Valid := DerivedMapBatches.Batch015.certificate1261valid
theorem secondValid244 : DerivedMapBatches.Batch016.certificate1314.Valid := DerivedMapBatches.Batch016.certificate1314valid
theorem outputValid244 : DerivedMapBatches.Batch016.certificate1315.Valid := DerivedMapBatches.Batch016.certificate1315valid
theorem linkedComposition244 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1315.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1315.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1314.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1261.c x) := by
  rw [firstLink244, secondLink244]
  exact DerivedMapBatches.Batch016.certificate1315valid.2 x
theorem firstLink245 : DerivedMapBatches.Batch015.certificate1264.c = DerivedMapBatches.Batch016.certificate1317.a := by decide
theorem secondLink245 : DerivedMapBatches.Batch016.certificate1316.algebra.mat = DerivedMapBatches.Batch016.certificate1317.b := by decide
theorem firstValid245 : DerivedMapBatches.Batch015.certificate1264.Valid := DerivedMapBatches.Batch015.certificate1264valid
theorem secondValid245 : DerivedMapBatches.Batch016.certificate1316.Valid := DerivedMapBatches.Batch016.certificate1316valid
theorem outputValid245 : DerivedMapBatches.Batch016.certificate1317.Valid := DerivedMapBatches.Batch016.certificate1317valid
theorem linkedComposition245 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1317.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1317.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1316.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1264.c x) := by
  rw [firstLink245, secondLink245]
  exact DerivedMapBatches.Batch016.certificate1317valid.2 x
theorem firstLink246 : DerivedMapBatches.Batch016.certificate1318.algebra.mat = DerivedMapBatches.Batch016.certificate1320.a := by decide
theorem secondLink246 : DerivedMapBatches.Batch016.certificate1319.algebra.mat = DerivedMapBatches.Batch016.certificate1320.b := by decide
theorem firstValid246 : DerivedMapBatches.Batch016.certificate1318.Valid := DerivedMapBatches.Batch016.certificate1318valid
theorem secondValid246 : DerivedMapBatches.Batch016.certificate1319.Valid := DerivedMapBatches.Batch016.certificate1319valid
theorem outputValid246 : DerivedMapBatches.Batch016.certificate1320.Valid := DerivedMapBatches.Batch016.certificate1320valid
theorem linkedComposition246 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1320.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1320.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1319.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1318.algebra.mat x) := by
  rw [firstLink246, secondLink246]
  exact DerivedMapBatches.Batch016.certificate1320valid.2 x
theorem firstLink247 : DerivedMapBatches.Batch016.certificate1321.algebra.mat = DerivedMapBatches.Batch016.certificate1323.a := by decide
theorem secondLink247 : DerivedMapBatches.Batch016.certificate1322.algebra.mat = DerivedMapBatches.Batch016.certificate1323.b := by decide
theorem firstValid247 : DerivedMapBatches.Batch016.certificate1321.Valid := DerivedMapBatches.Batch016.certificate1321valid
theorem secondValid247 : DerivedMapBatches.Batch016.certificate1322.Valid := DerivedMapBatches.Batch016.certificate1322valid
theorem outputValid247 : DerivedMapBatches.Batch016.certificate1323.Valid := DerivedMapBatches.Batch016.certificate1323valid
theorem linkedComposition247 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1323.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1323.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1322.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1321.algebra.mat x) := by
  rw [firstLink247, secondLink247]
  exact DerivedMapBatches.Batch016.certificate1323valid.2 x
theorem firstLink248 : DerivedMapBatches.Batch016.certificate1324.algebra.mat = DerivedMapBatches.Batch016.certificate1326.a := by decide
theorem secondLink248 : DerivedMapBatches.Batch016.certificate1325.algebra.mat = DerivedMapBatches.Batch016.certificate1326.b := by decide
theorem firstValid248 : DerivedMapBatches.Batch016.certificate1324.Valid := DerivedMapBatches.Batch016.certificate1324valid
theorem secondValid248 : DerivedMapBatches.Batch016.certificate1325.Valid := DerivedMapBatches.Batch016.certificate1325valid
theorem outputValid248 : DerivedMapBatches.Batch016.certificate1326.Valid := DerivedMapBatches.Batch016.certificate1326valid
theorem linkedComposition248 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1326.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1326.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1325.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1324.algebra.mat x) := by
  rw [firstLink248, secondLink248]
  exact DerivedMapBatches.Batch016.certificate1326valid.2 x
theorem firstLink249 : DerivedMapBatches.Batch016.certificate1327.algebra.mat = DerivedMapBatches.Batch016.certificate1329.a := by decide
theorem secondLink249 : DerivedMapBatches.Batch016.certificate1328.algebra.mat = DerivedMapBatches.Batch016.certificate1329.b := by decide
theorem firstValid249 : DerivedMapBatches.Batch016.certificate1327.Valid := DerivedMapBatches.Batch016.certificate1327valid
theorem secondValid249 : DerivedMapBatches.Batch016.certificate1328.Valid := DerivedMapBatches.Batch016.certificate1328valid
theorem outputValid249 : DerivedMapBatches.Batch016.certificate1329.Valid := DerivedMapBatches.Batch016.certificate1329valid
theorem linkedComposition249 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1329.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1329.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1328.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1327.algebra.mat x) := by
  rw [firstLink249, secondLink249]
  exact DerivedMapBatches.Batch016.certificate1329valid.2 x
end DerivedLinkageBatches.Batch004
