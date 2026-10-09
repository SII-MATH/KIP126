import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch014
import DerivedMapBatches.Batch016
import DerivedMapBatches.Batch017
import DerivedMapBatches.Batch018
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch005
theorem firstLink250 : DerivedMapBatches.Batch016.certificate1330.algebra.mat = DerivedMapBatches.Batch016.certificate1332.a := by decide
theorem secondLink250 : DerivedMapBatches.Batch016.certificate1331.algebra.mat = DerivedMapBatches.Batch016.certificate1332.b := by decide
theorem firstValid250 : DerivedMapBatches.Batch016.certificate1330.Valid := DerivedMapBatches.Batch016.certificate1330valid
theorem secondValid250 : DerivedMapBatches.Batch016.certificate1331.Valid := DerivedMapBatches.Batch016.certificate1331valid
theorem outputValid250 : DerivedMapBatches.Batch016.certificate1332.Valid := DerivedMapBatches.Batch016.certificate1332valid
theorem linkedComposition250 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1332.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1332.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1331.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1330.algebra.mat x) := by
  rw [firstLink250, secondLink250]
  exact DerivedMapBatches.Batch016.certificate1332valid.2 x
theorem firstLink251 : DerivedMapBatches.Batch016.certificate1333.algebra.mat = DerivedMapBatches.Batch016.certificate1335.a := by decide
theorem secondLink251 : DerivedMapBatches.Batch016.certificate1334.algebra.mat = DerivedMapBatches.Batch016.certificate1335.b := by decide
theorem firstValid251 : DerivedMapBatches.Batch016.certificate1333.Valid := DerivedMapBatches.Batch016.certificate1333valid
theorem secondValid251 : DerivedMapBatches.Batch016.certificate1334.Valid := DerivedMapBatches.Batch016.certificate1334valid
theorem outputValid251 : DerivedMapBatches.Batch016.certificate1335.Valid := DerivedMapBatches.Batch016.certificate1335valid
theorem linkedComposition251 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1335.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1335.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1334.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1333.algebra.mat x) := by
  rw [firstLink251, secondLink251]
  exact DerivedMapBatches.Batch016.certificate1335valid.2 x
theorem firstLink252 : DerivedMapBatches.Batch016.certificate1336.algebra.mat = DerivedMapBatches.Batch016.certificate1338.a := by decide
theorem secondLink252 : DerivedMapBatches.Batch016.certificate1337.algebra.mat = DerivedMapBatches.Batch016.certificate1338.b := by decide
theorem firstValid252 : DerivedMapBatches.Batch016.certificate1336.Valid := DerivedMapBatches.Batch016.certificate1336valid
theorem secondValid252 : DerivedMapBatches.Batch016.certificate1337.Valid := DerivedMapBatches.Batch016.certificate1337valid
theorem outputValid252 : DerivedMapBatches.Batch016.certificate1338.Valid := DerivedMapBatches.Batch016.certificate1338valid
theorem linkedComposition252 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1338.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1338.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1337.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1336.algebra.mat x) := by
  rw [firstLink252, secondLink252]
  exact DerivedMapBatches.Batch016.certificate1338valid.2 x
theorem firstLink253 : DerivedMapBatches.Batch016.certificate1339.algebra.mat = DerivedMapBatches.Batch016.certificate1341.a := by decide
theorem secondLink253 : DerivedMapBatches.Batch016.certificate1340.algebra.mat = DerivedMapBatches.Batch016.certificate1341.b := by decide
theorem firstValid253 : DerivedMapBatches.Batch016.certificate1339.Valid := DerivedMapBatches.Batch016.certificate1339valid
theorem secondValid253 : DerivedMapBatches.Batch016.certificate1340.Valid := DerivedMapBatches.Batch016.certificate1340valid
theorem outputValid253 : DerivedMapBatches.Batch016.certificate1341.Valid := DerivedMapBatches.Batch016.certificate1341valid
theorem linkedComposition253 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1341.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1341.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1340.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1339.algebra.mat x) := by
  rw [firstLink253, secondLink253]
  exact DerivedMapBatches.Batch016.certificate1341valid.2 x
theorem firstLink254 : DerivedMapBatches.Batch016.certificate1342.algebra.mat = DerivedMapBatches.Batch016.certificate1344.a := by decide
theorem secondLink254 : DerivedMapBatches.Batch016.certificate1343.algebra.mat = DerivedMapBatches.Batch016.certificate1344.b := by decide
theorem firstValid254 : DerivedMapBatches.Batch016.certificate1342.Valid := DerivedMapBatches.Batch016.certificate1342valid
theorem secondValid254 : DerivedMapBatches.Batch016.certificate1343.Valid := DerivedMapBatches.Batch016.certificate1343valid
theorem outputValid254 : DerivedMapBatches.Batch016.certificate1344.Valid := DerivedMapBatches.Batch016.certificate1344valid
theorem linkedComposition254 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1344.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1344.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1343.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1342.algebra.mat x) := by
  rw [firstLink254, secondLink254]
  exact DerivedMapBatches.Batch016.certificate1344valid.2 x
theorem firstLink255 : DerivedMapBatches.Batch016.certificate1345.algebra.mat = DerivedMapBatches.Batch016.certificate1347.a := by decide
theorem secondLink255 : DerivedMapBatches.Batch016.certificate1346.algebra.mat = DerivedMapBatches.Batch016.certificate1347.b := by decide
theorem firstValid255 : DerivedMapBatches.Batch016.certificate1345.Valid := DerivedMapBatches.Batch016.certificate1345valid
theorem secondValid255 : DerivedMapBatches.Batch016.certificate1346.Valid := DerivedMapBatches.Batch016.certificate1346valid
theorem outputValid255 : DerivedMapBatches.Batch016.certificate1347.Valid := DerivedMapBatches.Batch016.certificate1347valid
theorem linkedComposition255 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1347.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1347.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1346.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1345.algebra.mat x) := by
  rw [firstLink255, secondLink255]
  exact DerivedMapBatches.Batch016.certificate1347valid.2 x
theorem firstLink256 : DerivedMapBatches.Batch016.certificate1348.algebra.mat = DerivedMapBatches.Batch016.certificate1350.a := by decide
theorem secondLink256 : DerivedMapBatches.Batch016.certificate1349.algebra.mat = DerivedMapBatches.Batch016.certificate1350.b := by decide
theorem firstValid256 : DerivedMapBatches.Batch016.certificate1348.Valid := DerivedMapBatches.Batch016.certificate1348valid
theorem secondValid256 : DerivedMapBatches.Batch016.certificate1349.Valid := DerivedMapBatches.Batch016.certificate1349valid
theorem outputValid256 : DerivedMapBatches.Batch016.certificate1350.Valid := DerivedMapBatches.Batch016.certificate1350valid
theorem linkedComposition256 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1350.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1350.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1349.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1348.algebra.mat x) := by
  rw [firstLink256, secondLink256]
  exact DerivedMapBatches.Batch016.certificate1350valid.2 x
theorem firstLink257 : DerivedMapBatches.Batch016.certificate1351.algebra.mat = DerivedMapBatches.Batch016.certificate1353.a := by decide
theorem secondLink257 : DerivedMapBatches.Batch016.certificate1352.algebra.mat = DerivedMapBatches.Batch016.certificate1353.b := by decide
theorem firstValid257 : DerivedMapBatches.Batch016.certificate1351.Valid := DerivedMapBatches.Batch016.certificate1351valid
theorem secondValid257 : DerivedMapBatches.Batch016.certificate1352.Valid := DerivedMapBatches.Batch016.certificate1352valid
theorem outputValid257 : DerivedMapBatches.Batch016.certificate1353.Valid := DerivedMapBatches.Batch016.certificate1353valid
theorem linkedComposition257 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1353.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1353.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1352.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1351.algebra.mat x) := by
  rw [firstLink257, secondLink257]
  exact DerivedMapBatches.Batch016.certificate1353valid.2 x
theorem firstLink258 : DerivedMapBatches.Batch016.certificate1354.algebra.mat = DerivedMapBatches.Batch016.certificate1356.a := by decide
theorem secondLink258 : DerivedMapBatches.Batch016.certificate1355.algebra.mat = DerivedMapBatches.Batch016.certificate1356.b := by decide
theorem firstValid258 : DerivedMapBatches.Batch016.certificate1354.Valid := DerivedMapBatches.Batch016.certificate1354valid
theorem secondValid258 : DerivedMapBatches.Batch016.certificate1355.Valid := DerivedMapBatches.Batch016.certificate1355valid
theorem outputValid258 : DerivedMapBatches.Batch016.certificate1356.Valid := DerivedMapBatches.Batch016.certificate1356valid
theorem linkedComposition258 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1356.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1356.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1355.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1354.algebra.mat x) := by
  rw [firstLink258, secondLink258]
  exact DerivedMapBatches.Batch016.certificate1356valid.2 x
theorem firstLink259 : DerivedMapBatches.Batch016.certificate1357.algebra.mat = DerivedMapBatches.Batch016.certificate1359.a := by decide
theorem secondLink259 : DerivedMapBatches.Batch016.certificate1358.algebra.mat = DerivedMapBatches.Batch016.certificate1359.b := by decide
theorem firstValid259 : DerivedMapBatches.Batch016.certificate1357.Valid := DerivedMapBatches.Batch016.certificate1357valid
theorem secondValid259 : DerivedMapBatches.Batch016.certificate1358.Valid := DerivedMapBatches.Batch016.certificate1358valid
theorem outputValid259 : DerivedMapBatches.Batch016.certificate1359.Valid := DerivedMapBatches.Batch016.certificate1359valid
theorem linkedComposition259 (x : LinearCertificates.Vec DerivedMapBatches.Batch016.certificate1359.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1359.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1358.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1357.algebra.mat x) := by
  rw [firstLink259, secondLink259]
  exact DerivedMapBatches.Batch016.certificate1359valid.2 x
theorem firstLink260 : DerivedMapBatches.Batch017.certificate1360.algebra.mat = DerivedMapBatches.Batch017.certificate1362.a := by decide
theorem secondLink260 : DerivedMapBatches.Batch017.certificate1361.algebra.mat = DerivedMapBatches.Batch017.certificate1362.b := by decide
theorem firstValid260 : DerivedMapBatches.Batch017.certificate1360.Valid := DerivedMapBatches.Batch017.certificate1360valid
theorem secondValid260 : DerivedMapBatches.Batch017.certificate1361.Valid := DerivedMapBatches.Batch017.certificate1361valid
theorem outputValid260 : DerivedMapBatches.Batch017.certificate1362.Valid := DerivedMapBatches.Batch017.certificate1362valid
theorem linkedComposition260 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1362.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1362.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1361.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1360.algebra.mat x) := by
  rw [firstLink260, secondLink260]
  exact DerivedMapBatches.Batch017.certificate1362valid.2 x
theorem firstLink261 : DerivedMapBatches.Batch017.certificate1363.algebra.mat = DerivedMapBatches.Batch017.certificate1365.a := by decide
theorem secondLink261 : DerivedMapBatches.Batch017.certificate1364.algebra.mat = DerivedMapBatches.Batch017.certificate1365.b := by decide
theorem firstValid261 : DerivedMapBatches.Batch017.certificate1363.Valid := DerivedMapBatches.Batch017.certificate1363valid
theorem secondValid261 : DerivedMapBatches.Batch017.certificate1364.Valid := DerivedMapBatches.Batch017.certificate1364valid
theorem outputValid261 : DerivedMapBatches.Batch017.certificate1365.Valid := DerivedMapBatches.Batch017.certificate1365valid
theorem linkedComposition261 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1365.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1365.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1364.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1363.algebra.mat x) := by
  rw [firstLink261, secondLink261]
  exact DerivedMapBatches.Batch017.certificate1365valid.2 x
theorem firstLink262 : DerivedMapBatches.Batch017.certificate1366.algebra.mat = DerivedMapBatches.Batch017.certificate1368.a := by decide
theorem secondLink262 : DerivedMapBatches.Batch017.certificate1367.algebra.mat = DerivedMapBatches.Batch017.certificate1368.b := by decide
theorem firstValid262 : DerivedMapBatches.Batch017.certificate1366.Valid := DerivedMapBatches.Batch017.certificate1366valid
theorem secondValid262 : DerivedMapBatches.Batch017.certificate1367.Valid := DerivedMapBatches.Batch017.certificate1367valid
theorem outputValid262 : DerivedMapBatches.Batch017.certificate1368.Valid := DerivedMapBatches.Batch017.certificate1368valid
theorem linkedComposition262 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1368.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1368.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1367.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1366.algebra.mat x) := by
  rw [firstLink262, secondLink262]
  exact DerivedMapBatches.Batch017.certificate1368valid.2 x
theorem firstLink263 : DerivedMapBatches.Batch017.certificate1369.algebra.mat = DerivedMapBatches.Batch017.certificate1371.a := by decide
theorem secondLink263 : DerivedMapBatches.Batch017.certificate1370.algebra.mat = DerivedMapBatches.Batch017.certificate1371.b := by decide
theorem firstValid263 : DerivedMapBatches.Batch017.certificate1369.Valid := DerivedMapBatches.Batch017.certificate1369valid
theorem secondValid263 : DerivedMapBatches.Batch017.certificate1370.Valid := DerivedMapBatches.Batch017.certificate1370valid
theorem outputValid263 : DerivedMapBatches.Batch017.certificate1371.Valid := DerivedMapBatches.Batch017.certificate1371valid
theorem linkedComposition263 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1371.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1371.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1370.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1369.algebra.mat x) := by
  rw [firstLink263, secondLink263]
  exact DerivedMapBatches.Batch017.certificate1371valid.2 x
theorem firstLink264 : DerivedMapBatches.Batch017.certificate1372.algebra.mat = DerivedMapBatches.Batch017.certificate1374.a := by decide
theorem secondLink264 : DerivedMapBatches.Batch017.certificate1373.algebra.mat = DerivedMapBatches.Batch017.certificate1374.b := by decide
theorem firstValid264 : DerivedMapBatches.Batch017.certificate1372.Valid := DerivedMapBatches.Batch017.certificate1372valid
theorem secondValid264 : DerivedMapBatches.Batch017.certificate1373.Valid := DerivedMapBatches.Batch017.certificate1373valid
theorem outputValid264 : DerivedMapBatches.Batch017.certificate1374.Valid := DerivedMapBatches.Batch017.certificate1374valid
theorem linkedComposition264 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1374.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1374.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1373.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1372.algebra.mat x) := by
  rw [firstLink264, secondLink264]
  exact DerivedMapBatches.Batch017.certificate1374valid.2 x
theorem firstLink265 : DerivedMapBatches.Batch017.certificate1375.algebra.mat = DerivedMapBatches.Batch017.certificate1377.a := by decide
theorem secondLink265 : DerivedMapBatches.Batch017.certificate1376.algebra.mat = DerivedMapBatches.Batch017.certificate1377.b := by decide
theorem firstValid265 : DerivedMapBatches.Batch017.certificate1375.Valid := DerivedMapBatches.Batch017.certificate1375valid
theorem secondValid265 : DerivedMapBatches.Batch017.certificate1376.Valid := DerivedMapBatches.Batch017.certificate1376valid
theorem outputValid265 : DerivedMapBatches.Batch017.certificate1377.Valid := DerivedMapBatches.Batch017.certificate1377valid
theorem linkedComposition265 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1377.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1377.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1376.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1375.algebra.mat x) := by
  rw [firstLink265, secondLink265]
  exact DerivedMapBatches.Batch017.certificate1377valid.2 x
theorem firstLink266 : DerivedMapBatches.Batch017.certificate1378.algebra.mat = DerivedMapBatches.Batch017.certificate1380.a := by decide
theorem secondLink266 : DerivedMapBatches.Batch017.certificate1379.algebra.mat = DerivedMapBatches.Batch017.certificate1380.b := by decide
theorem firstValid266 : DerivedMapBatches.Batch017.certificate1378.Valid := DerivedMapBatches.Batch017.certificate1378valid
theorem secondValid266 : DerivedMapBatches.Batch017.certificate1379.Valid := DerivedMapBatches.Batch017.certificate1379valid
theorem outputValid266 : DerivedMapBatches.Batch017.certificate1380.Valid := DerivedMapBatches.Batch017.certificate1380valid
theorem linkedComposition266 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1380.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1380.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1379.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1378.algebra.mat x) := by
  rw [firstLink266, secondLink266]
  exact DerivedMapBatches.Batch017.certificate1380valid.2 x
theorem firstLink267 : DerivedMapBatches.Batch017.certificate1381.algebra.mat = DerivedMapBatches.Batch017.certificate1383.a := by decide
theorem secondLink267 : DerivedMapBatches.Batch017.certificate1382.algebra.mat = DerivedMapBatches.Batch017.certificate1383.b := by decide
theorem firstValid267 : DerivedMapBatches.Batch017.certificate1381.Valid := DerivedMapBatches.Batch017.certificate1381valid
theorem secondValid267 : DerivedMapBatches.Batch017.certificate1382.Valid := DerivedMapBatches.Batch017.certificate1382valid
theorem outputValid267 : DerivedMapBatches.Batch017.certificate1383.Valid := DerivedMapBatches.Batch017.certificate1383valid
theorem linkedComposition267 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1383.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1383.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1382.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1381.algebra.mat x) := by
  rw [firstLink267, secondLink267]
  exact DerivedMapBatches.Batch017.certificate1383valid.2 x
theorem firstLink268 : DerivedMapBatches.Batch017.certificate1384.algebra.mat = DerivedMapBatches.Batch017.certificate1386.a := by decide
theorem secondLink268 : DerivedMapBatches.Batch017.certificate1385.algebra.mat = DerivedMapBatches.Batch017.certificate1386.b := by decide
theorem firstValid268 : DerivedMapBatches.Batch017.certificate1384.Valid := DerivedMapBatches.Batch017.certificate1384valid
theorem secondValid268 : DerivedMapBatches.Batch017.certificate1385.Valid := DerivedMapBatches.Batch017.certificate1385valid
theorem outputValid268 : DerivedMapBatches.Batch017.certificate1386.Valid := DerivedMapBatches.Batch017.certificate1386valid
theorem linkedComposition268 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1386.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1386.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1385.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1384.algebra.mat x) := by
  rw [firstLink268, secondLink268]
  exact DerivedMapBatches.Batch017.certificate1386valid.2 x
theorem firstLink269 : DerivedMapBatches.Batch017.certificate1387.algebra.mat = DerivedMapBatches.Batch017.certificate1389.a := by decide
theorem secondLink269 : DerivedMapBatches.Batch017.certificate1388.algebra.mat = DerivedMapBatches.Batch017.certificate1389.b := by decide
theorem firstValid269 : DerivedMapBatches.Batch017.certificate1387.Valid := DerivedMapBatches.Batch017.certificate1387valid
theorem secondValid269 : DerivedMapBatches.Batch017.certificate1388.Valid := DerivedMapBatches.Batch017.certificate1388valid
theorem outputValid269 : DerivedMapBatches.Batch017.certificate1389.Valid := DerivedMapBatches.Batch017.certificate1389valid
theorem linkedComposition269 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1389.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1389.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1388.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1387.algebra.mat x) := by
  rw [firstLink269, secondLink269]
  exact DerivedMapBatches.Batch017.certificate1389valid.2 x
theorem firstLink270 : DerivedMapBatches.Batch017.certificate1390.algebra.mat = DerivedMapBatches.Batch017.certificate1392.a := by decide
theorem secondLink270 : DerivedMapBatches.Batch017.certificate1391.algebra.mat = DerivedMapBatches.Batch017.certificate1392.b := by decide
theorem firstValid270 : DerivedMapBatches.Batch017.certificate1390.Valid := DerivedMapBatches.Batch017.certificate1390valid
theorem secondValid270 : DerivedMapBatches.Batch017.certificate1391.Valid := DerivedMapBatches.Batch017.certificate1391valid
theorem outputValid270 : DerivedMapBatches.Batch017.certificate1392.Valid := DerivedMapBatches.Batch017.certificate1392valid
theorem linkedComposition270 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1392.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1392.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1391.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1390.algebra.mat x) := by
  rw [firstLink270, secondLink270]
  exact DerivedMapBatches.Batch017.certificate1392valid.2 x
theorem firstLink271 : DerivedMapBatches.Batch017.certificate1393.algebra.mat = DerivedMapBatches.Batch017.certificate1395.a := by decide
theorem secondLink271 : DerivedMapBatches.Batch017.certificate1394.algebra.mat = DerivedMapBatches.Batch017.certificate1395.b := by decide
theorem firstValid271 : DerivedMapBatches.Batch017.certificate1393.Valid := DerivedMapBatches.Batch017.certificate1393valid
theorem secondValid271 : DerivedMapBatches.Batch017.certificate1394.Valid := DerivedMapBatches.Batch017.certificate1394valid
theorem outputValid271 : DerivedMapBatches.Batch017.certificate1395.Valid := DerivedMapBatches.Batch017.certificate1395valid
theorem linkedComposition271 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1395.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1395.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1394.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1393.algebra.mat x) := by
  rw [firstLink271, secondLink271]
  exact DerivedMapBatches.Batch017.certificate1395valid.2 x
theorem firstLink272 : DerivedMapBatches.Batch017.certificate1396.algebra.mat = DerivedMapBatches.Batch017.certificate1398.a := by decide
theorem secondLink272 : DerivedMapBatches.Batch017.certificate1397.algebra.mat = DerivedMapBatches.Batch017.certificate1398.b := by decide
theorem firstValid272 : DerivedMapBatches.Batch017.certificate1396.Valid := DerivedMapBatches.Batch017.certificate1396valid
theorem secondValid272 : DerivedMapBatches.Batch017.certificate1397.Valid := DerivedMapBatches.Batch017.certificate1397valid
theorem outputValid272 : DerivedMapBatches.Batch017.certificate1398.Valid := DerivedMapBatches.Batch017.certificate1398valid
theorem linkedComposition272 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1398.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1398.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1397.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1396.algebra.mat x) := by
  rw [firstLink272, secondLink272]
  exact DerivedMapBatches.Batch017.certificate1398valid.2 x
theorem firstLink273 : DerivedMapBatches.Batch017.certificate1399.algebra.mat = DerivedMapBatches.Batch017.certificate1401.a := by decide
theorem secondLink273 : DerivedMapBatches.Batch017.certificate1400.algebra.mat = DerivedMapBatches.Batch017.certificate1401.b := by decide
theorem firstValid273 : DerivedMapBatches.Batch017.certificate1399.Valid := DerivedMapBatches.Batch017.certificate1399valid
theorem secondValid273 : DerivedMapBatches.Batch017.certificate1400.Valid := DerivedMapBatches.Batch017.certificate1400valid
theorem outputValid273 : DerivedMapBatches.Batch017.certificate1401.Valid := DerivedMapBatches.Batch017.certificate1401valid
theorem linkedComposition273 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1401.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1401.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1400.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1399.algebra.mat x) := by
  rw [firstLink273, secondLink273]
  exact DerivedMapBatches.Batch017.certificate1401valid.2 x
theorem firstLink274 : DerivedMapBatches.Batch017.certificate1402.algebra.mat = DerivedMapBatches.Batch017.certificate1404.a := by decide
theorem secondLink274 : DerivedMapBatches.Batch017.certificate1403.algebra.mat = DerivedMapBatches.Batch017.certificate1404.b := by decide
theorem firstValid274 : DerivedMapBatches.Batch017.certificate1402.Valid := DerivedMapBatches.Batch017.certificate1402valid
theorem secondValid274 : DerivedMapBatches.Batch017.certificate1403.Valid := DerivedMapBatches.Batch017.certificate1403valid
theorem outputValid274 : DerivedMapBatches.Batch017.certificate1404.Valid := DerivedMapBatches.Batch017.certificate1404valid
theorem linkedComposition274 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1404.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1404.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1403.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1402.algebra.mat x) := by
  rw [firstLink274, secondLink274]
  exact DerivedMapBatches.Batch017.certificate1404valid.2 x
theorem firstLink275 : DerivedMapBatches.Batch017.certificate1405.algebra.mat = DerivedMapBatches.Batch017.certificate1407.a := by decide
theorem secondLink275 : DerivedMapBatches.Batch017.certificate1406.algebra.mat = DerivedMapBatches.Batch017.certificate1407.b := by decide
theorem firstValid275 : DerivedMapBatches.Batch017.certificate1405.Valid := DerivedMapBatches.Batch017.certificate1405valid
theorem secondValid275 : DerivedMapBatches.Batch017.certificate1406.Valid := DerivedMapBatches.Batch017.certificate1406valid
theorem outputValid275 : DerivedMapBatches.Batch017.certificate1407.Valid := DerivedMapBatches.Batch017.certificate1407valid
theorem linkedComposition275 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1407.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1407.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1406.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1405.algebra.mat x) := by
  rw [firstLink275, secondLink275]
  exact DerivedMapBatches.Batch017.certificate1407valid.2 x
theorem firstLink276 : DerivedMapBatches.Batch017.certificate1408.algebra.mat = DerivedMapBatches.Batch017.certificate1410.a := by decide
theorem secondLink276 : DerivedMapBatches.Batch017.certificate1409.algebra.mat = DerivedMapBatches.Batch017.certificate1410.b := by decide
theorem firstValid276 : DerivedMapBatches.Batch017.certificate1408.Valid := DerivedMapBatches.Batch017.certificate1408valid
theorem secondValid276 : DerivedMapBatches.Batch017.certificate1409.Valid := DerivedMapBatches.Batch017.certificate1409valid
theorem outputValid276 : DerivedMapBatches.Batch017.certificate1410.Valid := DerivedMapBatches.Batch017.certificate1410valid
theorem linkedComposition276 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1410.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1410.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1409.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1408.algebra.mat x) := by
  rw [firstLink276, secondLink276]
  exact DerivedMapBatches.Batch017.certificate1410valid.2 x
theorem firstLink277 : DerivedMapBatches.Batch017.certificate1411.algebra.mat = DerivedMapBatches.Batch017.certificate1413.a := by decide
theorem secondLink277 : DerivedMapBatches.Batch017.certificate1412.algebra.mat = DerivedMapBatches.Batch017.certificate1413.b := by decide
theorem firstValid277 : DerivedMapBatches.Batch017.certificate1411.Valid := DerivedMapBatches.Batch017.certificate1411valid
theorem secondValid277 : DerivedMapBatches.Batch017.certificate1412.Valid := DerivedMapBatches.Batch017.certificate1412valid
theorem outputValid277 : DerivedMapBatches.Batch017.certificate1413.Valid := DerivedMapBatches.Batch017.certificate1413valid
theorem linkedComposition277 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1413.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1413.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1412.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1411.algebra.mat x) := by
  rw [firstLink277, secondLink277]
  exact DerivedMapBatches.Batch017.certificate1413valid.2 x
theorem firstLink278 : DerivedMapBatches.Batch017.certificate1414.algebra.mat = DerivedMapBatches.Batch017.certificate1416.a := by decide
theorem secondLink278 : DerivedMapBatches.Batch017.certificate1415.algebra.mat = DerivedMapBatches.Batch017.certificate1416.b := by decide
theorem firstValid278 : DerivedMapBatches.Batch017.certificate1414.Valid := DerivedMapBatches.Batch017.certificate1414valid
theorem secondValid278 : DerivedMapBatches.Batch017.certificate1415.Valid := DerivedMapBatches.Batch017.certificate1415valid
theorem outputValid278 : DerivedMapBatches.Batch017.certificate1416.Valid := DerivedMapBatches.Batch017.certificate1416valid
theorem linkedComposition278 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1416.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1416.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1415.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1414.algebra.mat x) := by
  rw [firstLink278, secondLink278]
  exact DerivedMapBatches.Batch017.certificate1416valid.2 x
theorem firstLink279 : DerivedMapBatches.Batch017.certificate1417.algebra.mat = DerivedMapBatches.Batch017.certificate1419.a := by decide
theorem secondLink279 : DerivedMapBatches.Batch017.certificate1418.algebra.mat = DerivedMapBatches.Batch017.certificate1419.b := by decide
theorem firstValid279 : DerivedMapBatches.Batch017.certificate1417.Valid := DerivedMapBatches.Batch017.certificate1417valid
theorem secondValid279 : DerivedMapBatches.Batch017.certificate1418.Valid := DerivedMapBatches.Batch017.certificate1418valid
theorem outputValid279 : DerivedMapBatches.Batch017.certificate1419.Valid := DerivedMapBatches.Batch017.certificate1419valid
theorem linkedComposition279 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1419.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1419.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1418.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1417.algebra.mat x) := by
  rw [firstLink279, secondLink279]
  exact DerivedMapBatches.Batch017.certificate1419valid.2 x
theorem firstLink280 : DerivedMapBatches.Batch017.certificate1420.algebra.mat = DerivedMapBatches.Batch017.certificate1422.a := by decide
theorem secondLink280 : DerivedMapBatches.Batch017.certificate1421.algebra.mat = DerivedMapBatches.Batch017.certificate1422.b := by decide
theorem firstValid280 : DerivedMapBatches.Batch017.certificate1420.Valid := DerivedMapBatches.Batch017.certificate1420valid
theorem secondValid280 : DerivedMapBatches.Batch017.certificate1421.Valid := DerivedMapBatches.Batch017.certificate1421valid
theorem outputValid280 : DerivedMapBatches.Batch017.certificate1422.Valid := DerivedMapBatches.Batch017.certificate1422valid
theorem linkedComposition280 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1422.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1422.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1421.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1420.algebra.mat x) := by
  rw [firstLink280, secondLink280]
  exact DerivedMapBatches.Batch017.certificate1422valid.2 x
theorem firstLink281 : DerivedMapBatches.Batch017.certificate1423.algebra.mat = DerivedMapBatches.Batch017.certificate1425.a := by decide
theorem secondLink281 : DerivedMapBatches.Batch017.certificate1424.algebra.mat = DerivedMapBatches.Batch017.certificate1425.b := by decide
theorem firstValid281 : DerivedMapBatches.Batch017.certificate1423.Valid := DerivedMapBatches.Batch017.certificate1423valid
theorem secondValid281 : DerivedMapBatches.Batch017.certificate1424.Valid := DerivedMapBatches.Batch017.certificate1424valid
theorem outputValid281 : DerivedMapBatches.Batch017.certificate1425.Valid := DerivedMapBatches.Batch017.certificate1425valid
theorem linkedComposition281 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1425.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1425.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1424.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1423.algebra.mat x) := by
  rw [firstLink281, secondLink281]
  exact DerivedMapBatches.Batch017.certificate1425valid.2 x
theorem firstLink282 : DerivedMapBatches.Batch017.certificate1426.algebra.mat = DerivedMapBatches.Batch017.certificate1428.a := by decide
theorem secondLink282 : DerivedMapBatches.Batch017.certificate1427.algebra.mat = DerivedMapBatches.Batch017.certificate1428.b := by decide
theorem firstValid282 : DerivedMapBatches.Batch017.certificate1426.Valid := DerivedMapBatches.Batch017.certificate1426valid
theorem secondValid282 : DerivedMapBatches.Batch017.certificate1427.Valid := DerivedMapBatches.Batch017.certificate1427valid
theorem outputValid282 : DerivedMapBatches.Batch017.certificate1428.Valid := DerivedMapBatches.Batch017.certificate1428valid
theorem linkedComposition282 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1428.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1428.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1427.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1426.algebra.mat x) := by
  rw [firstLink282, secondLink282]
  exact DerivedMapBatches.Batch017.certificate1428valid.2 x
theorem firstLink283 : DerivedMapBatches.Batch017.certificate1429.algebra.mat = DerivedMapBatches.Batch017.certificate1431.a := by decide
theorem secondLink283 : DerivedMapBatches.Batch017.certificate1430.algebra.mat = DerivedMapBatches.Batch017.certificate1431.b := by decide
theorem firstValid283 : DerivedMapBatches.Batch017.certificate1429.Valid := DerivedMapBatches.Batch017.certificate1429valid
theorem secondValid283 : DerivedMapBatches.Batch017.certificate1430.Valid := DerivedMapBatches.Batch017.certificate1430valid
theorem outputValid283 : DerivedMapBatches.Batch017.certificate1431.Valid := DerivedMapBatches.Batch017.certificate1431valid
theorem linkedComposition283 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1431.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1431.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1430.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1429.algebra.mat x) := by
  rw [firstLink283, secondLink283]
  exact DerivedMapBatches.Batch017.certificate1431valid.2 x
theorem firstLink284 : DerivedMapBatches.Batch017.certificate1432.algebra.mat = DerivedMapBatches.Batch017.certificate1434.a := by decide
theorem secondLink284 : DerivedMapBatches.Batch017.certificate1433.algebra.mat = DerivedMapBatches.Batch017.certificate1434.b := by decide
theorem firstValid284 : DerivedMapBatches.Batch017.certificate1432.Valid := DerivedMapBatches.Batch017.certificate1432valid
theorem secondValid284 : DerivedMapBatches.Batch017.certificate1433.Valid := DerivedMapBatches.Batch017.certificate1433valid
theorem outputValid284 : DerivedMapBatches.Batch017.certificate1434.Valid := DerivedMapBatches.Batch017.certificate1434valid
theorem linkedComposition284 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1434.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1434.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1433.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1432.algebra.mat x) := by
  rw [firstLink284, secondLink284]
  exact DerivedMapBatches.Batch017.certificate1434valid.2 x
theorem firstLink285 : DerivedMapBatches.Batch017.certificate1435.algebra.mat = DerivedMapBatches.Batch017.certificate1437.a := by decide
theorem secondLink285 : DerivedMapBatches.Batch017.certificate1436.algebra.mat = DerivedMapBatches.Batch017.certificate1437.b := by decide
theorem firstValid285 : DerivedMapBatches.Batch017.certificate1435.Valid := DerivedMapBatches.Batch017.certificate1435valid
theorem secondValid285 : DerivedMapBatches.Batch017.certificate1436.Valid := DerivedMapBatches.Batch017.certificate1436valid
theorem outputValid285 : DerivedMapBatches.Batch017.certificate1437.Valid := DerivedMapBatches.Batch017.certificate1437valid
theorem linkedComposition285 (x : LinearCertificates.Vec DerivedMapBatches.Batch017.certificate1437.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1437.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1436.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1435.algebra.mat x) := by
  rw [firstLink285, secondLink285]
  exact DerivedMapBatches.Batch017.certificate1437valid.2 x
theorem firstLink286 : DerivedMapBatches.Batch017.certificate1438.algebra.mat = DerivedMapBatches.Batch018.certificate1440.a := by decide
theorem secondLink286 : DerivedMapBatches.Batch017.certificate1439.algebra.mat = DerivedMapBatches.Batch018.certificate1440.b := by decide
theorem firstValid286 : DerivedMapBatches.Batch017.certificate1438.Valid := DerivedMapBatches.Batch017.certificate1438valid
theorem secondValid286 : DerivedMapBatches.Batch017.certificate1439.Valid := DerivedMapBatches.Batch017.certificate1439valid
theorem outputValid286 : DerivedMapBatches.Batch018.certificate1440.Valid := DerivedMapBatches.Batch018.certificate1440valid
theorem linkedComposition286 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1440.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1440.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1439.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1438.algebra.mat x) := by
  rw [firstLink286, secondLink286]
  exact DerivedMapBatches.Batch018.certificate1440valid.2 x
theorem firstLink287 : DerivedMapBatches.Batch018.certificate1441.algebra.mat = DerivedMapBatches.Batch018.certificate1443.a := by decide
theorem secondLink287 : DerivedMapBatches.Batch018.certificate1442.algebra.mat = DerivedMapBatches.Batch018.certificate1443.b := by decide
theorem firstValid287 : DerivedMapBatches.Batch018.certificate1441.Valid := DerivedMapBatches.Batch018.certificate1441valid
theorem secondValid287 : DerivedMapBatches.Batch018.certificate1442.Valid := DerivedMapBatches.Batch018.certificate1442valid
theorem outputValid287 : DerivedMapBatches.Batch018.certificate1443.Valid := DerivedMapBatches.Batch018.certificate1443valid
theorem linkedComposition287 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1443.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1443.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1442.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1441.algebra.mat x) := by
  rw [firstLink287, secondLink287]
  exact DerivedMapBatches.Batch018.certificate1443valid.2 x
theorem firstLink288 : DerivedMapBatches.Batch018.certificate1444.algebra.mat = DerivedMapBatches.Batch018.certificate1446.a := by decide
theorem secondLink288 : DerivedMapBatches.Batch018.certificate1445.algebra.mat = DerivedMapBatches.Batch018.certificate1446.b := by decide
theorem firstValid288 : DerivedMapBatches.Batch018.certificate1444.Valid := DerivedMapBatches.Batch018.certificate1444valid
theorem secondValid288 : DerivedMapBatches.Batch018.certificate1445.Valid := DerivedMapBatches.Batch018.certificate1445valid
theorem outputValid288 : DerivedMapBatches.Batch018.certificate1446.Valid := DerivedMapBatches.Batch018.certificate1446valid
theorem linkedComposition288 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1446.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1446.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1445.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1444.algebra.mat x) := by
  rw [firstLink288, secondLink288]
  exact DerivedMapBatches.Batch018.certificate1446valid.2 x
theorem firstLink289 : DerivedMapBatches.Batch018.certificate1447.algebra.mat = DerivedMapBatches.Batch018.certificate1449.a := by decide
theorem secondLink289 : DerivedMapBatches.Batch018.certificate1448.algebra.mat = DerivedMapBatches.Batch018.certificate1449.b := by decide
theorem firstValid289 : DerivedMapBatches.Batch018.certificate1447.Valid := DerivedMapBatches.Batch018.certificate1447valid
theorem secondValid289 : DerivedMapBatches.Batch018.certificate1448.Valid := DerivedMapBatches.Batch018.certificate1448valid
theorem outputValid289 : DerivedMapBatches.Batch018.certificate1449.Valid := DerivedMapBatches.Batch018.certificate1449valid
theorem linkedComposition289 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1449.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1449.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1448.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1447.algebra.mat x) := by
  rw [firstLink289, secondLink289]
  exact DerivedMapBatches.Batch018.certificate1449valid.2 x
theorem firstLink290 : DerivedMapBatches.Batch018.certificate1450.algebra.mat = DerivedMapBatches.Batch018.certificate1452.a := by decide
theorem secondLink290 : DerivedMapBatches.Batch018.certificate1451.algebra.mat = DerivedMapBatches.Batch018.certificate1452.b := by decide
theorem firstValid290 : DerivedMapBatches.Batch018.certificate1450.Valid := DerivedMapBatches.Batch018.certificate1450valid
theorem secondValid290 : DerivedMapBatches.Batch018.certificate1451.Valid := DerivedMapBatches.Batch018.certificate1451valid
theorem outputValid290 : DerivedMapBatches.Batch018.certificate1452.Valid := DerivedMapBatches.Batch018.certificate1452valid
theorem linkedComposition290 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1452.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1452.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1451.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1450.algebra.mat x) := by
  rw [firstLink290, secondLink290]
  exact DerivedMapBatches.Batch018.certificate1452valid.2 x
theorem firstLink291 : DerivedMapBatches.Batch018.certificate1453.algebra.mat = DerivedMapBatches.Batch018.certificate1455.a := by decide
theorem secondLink291 : DerivedMapBatches.Batch018.certificate1454.algebra.mat = DerivedMapBatches.Batch018.certificate1455.b := by decide
theorem firstValid291 : DerivedMapBatches.Batch018.certificate1453.Valid := DerivedMapBatches.Batch018.certificate1453valid
theorem secondValid291 : DerivedMapBatches.Batch018.certificate1454.Valid := DerivedMapBatches.Batch018.certificate1454valid
theorem outputValid291 : DerivedMapBatches.Batch018.certificate1455.Valid := DerivedMapBatches.Batch018.certificate1455valid
theorem linkedComposition291 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1455.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1455.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1454.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1453.algebra.mat x) := by
  rw [firstLink291, secondLink291]
  exact DerivedMapBatches.Batch018.certificate1455valid.2 x
theorem firstLink292 : DerivedMapBatches.Batch018.certificate1456.algebra.mat = DerivedMapBatches.Batch018.certificate1458.a := by decide
theorem secondLink292 : DerivedMapBatches.Batch018.certificate1457.algebra.mat = DerivedMapBatches.Batch018.certificate1458.b := by decide
theorem firstValid292 : DerivedMapBatches.Batch018.certificate1456.Valid := DerivedMapBatches.Batch018.certificate1456valid
theorem secondValid292 : DerivedMapBatches.Batch018.certificate1457.Valid := DerivedMapBatches.Batch018.certificate1457valid
theorem outputValid292 : DerivedMapBatches.Batch018.certificate1458.Valid := DerivedMapBatches.Batch018.certificate1458valid
theorem linkedComposition292 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1458.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1458.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1457.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1456.algebra.mat x) := by
  rw [firstLink292, secondLink292]
  exact DerivedMapBatches.Batch018.certificate1458valid.2 x
theorem firstLink293 : DerivedMapBatches.Batch018.certificate1459.algebra.mat = DerivedMapBatches.Batch018.certificate1461.a := by decide
theorem secondLink293 : DerivedMapBatches.Batch018.certificate1460.algebra.mat = DerivedMapBatches.Batch018.certificate1461.b := by decide
theorem firstValid293 : DerivedMapBatches.Batch018.certificate1459.Valid := DerivedMapBatches.Batch018.certificate1459valid
theorem secondValid293 : DerivedMapBatches.Batch018.certificate1460.Valid := DerivedMapBatches.Batch018.certificate1460valid
theorem outputValid293 : DerivedMapBatches.Batch018.certificate1461.Valid := DerivedMapBatches.Batch018.certificate1461valid
theorem linkedComposition293 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1461.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1461.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1460.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1459.algebra.mat x) := by
  rw [firstLink293, secondLink293]
  exact DerivedMapBatches.Batch018.certificate1461valid.2 x
theorem firstLink294 : DerivedMapBatches.Batch018.certificate1462.algebra.mat = DerivedMapBatches.Batch018.certificate1464.a := by decide
theorem secondLink294 : DerivedMapBatches.Batch018.certificate1463.algebra.mat = DerivedMapBatches.Batch018.certificate1464.b := by decide
theorem firstValid294 : DerivedMapBatches.Batch018.certificate1462.Valid := DerivedMapBatches.Batch018.certificate1462valid
theorem secondValid294 : DerivedMapBatches.Batch018.certificate1463.Valid := DerivedMapBatches.Batch018.certificate1463valid
theorem outputValid294 : DerivedMapBatches.Batch018.certificate1464.Valid := DerivedMapBatches.Batch018.certificate1464valid
theorem linkedComposition294 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1464.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1464.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1463.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1462.algebra.mat x) := by
  rw [firstLink294, secondLink294]
  exact DerivedMapBatches.Batch018.certificate1464valid.2 x
theorem firstLink295 : DerivedMapBatches.Batch018.certificate1465.algebra.mat = DerivedMapBatches.Batch018.certificate1467.a := by decide
theorem secondLink295 : DerivedMapBatches.Batch018.certificate1466.algebra.mat = DerivedMapBatches.Batch018.certificate1467.b := by decide
theorem firstValid295 : DerivedMapBatches.Batch018.certificate1465.Valid := DerivedMapBatches.Batch018.certificate1465valid
theorem secondValid295 : DerivedMapBatches.Batch018.certificate1466.Valid := DerivedMapBatches.Batch018.certificate1466valid
theorem outputValid295 : DerivedMapBatches.Batch018.certificate1467.Valid := DerivedMapBatches.Batch018.certificate1467valid
theorem linkedComposition295 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1467.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1467.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1466.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1465.algebra.mat x) := by
  rw [firstLink295, secondLink295]
  exact DerivedMapBatches.Batch018.certificate1467valid.2 x
theorem firstLink296 : DerivedMapBatches.Batch018.certificate1468.algebra.mat = DerivedMapBatches.Batch018.certificate1470.a := by decide
theorem secondLink296 : DerivedMapBatches.Batch018.certificate1469.algebra.mat = DerivedMapBatches.Batch018.certificate1470.b := by decide
theorem firstValid296 : DerivedMapBatches.Batch018.certificate1468.Valid := DerivedMapBatches.Batch018.certificate1468valid
theorem secondValid296 : DerivedMapBatches.Batch018.certificate1469.Valid := DerivedMapBatches.Batch018.certificate1469valid
theorem outputValid296 : DerivedMapBatches.Batch018.certificate1470.Valid := DerivedMapBatches.Batch018.certificate1470valid
theorem linkedComposition296 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1470.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1470.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1469.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1468.algebra.mat x) := by
  rw [firstLink296, secondLink296]
  exact DerivedMapBatches.Batch018.certificate1470valid.2 x
theorem firstLink297 : DerivedMapBatches.Batch018.certificate1471.algebra.mat = DerivedMapBatches.Batch018.certificate1473.a := by decide
theorem secondLink297 : DerivedMapBatches.Batch018.certificate1472.algebra.mat = DerivedMapBatches.Batch018.certificate1473.b := by decide
theorem firstValid297 : DerivedMapBatches.Batch018.certificate1471.Valid := DerivedMapBatches.Batch018.certificate1471valid
theorem secondValid297 : DerivedMapBatches.Batch018.certificate1472.Valid := DerivedMapBatches.Batch018.certificate1472valid
theorem outputValid297 : DerivedMapBatches.Batch018.certificate1473.Valid := DerivedMapBatches.Batch018.certificate1473valid
theorem linkedComposition297 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1473.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1473.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1472.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1471.algebra.mat x) := by
  rw [firstLink297, secondLink297]
  exact DerivedMapBatches.Batch018.certificate1473valid.2 x
theorem firstLink298 : DerivedMapBatches.Batch018.certificate1474.algebra.mat = DerivedMapBatches.Batch018.certificate1476.a := by decide
theorem secondLink298 : DerivedMapBatches.Batch018.certificate1475.algebra.mat = DerivedMapBatches.Batch018.certificate1476.b := by decide
theorem firstValid298 : DerivedMapBatches.Batch018.certificate1474.Valid := DerivedMapBatches.Batch018.certificate1474valid
theorem secondValid298 : DerivedMapBatches.Batch018.certificate1475.Valid := DerivedMapBatches.Batch018.certificate1475valid
theorem outputValid298 : DerivedMapBatches.Batch018.certificate1476.Valid := DerivedMapBatches.Batch018.certificate1476valid
theorem linkedComposition298 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1476.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1476.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1475.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1474.algebra.mat x) := by
  rw [firstLink298, secondLink298]
  exact DerivedMapBatches.Batch018.certificate1476valid.2 x
theorem firstLink299 : DerivedMapBatches.Batch018.certificate1477.algebra.mat = DerivedMapBatches.Batch018.certificate1478.a := by decide
theorem secondLink299 : DerivedMapBatches.Batch014.certificate1179.algebra.mat = DerivedMapBatches.Batch018.certificate1478.b := by decide
theorem firstValid299 : DerivedMapBatches.Batch018.certificate1477.Valid := DerivedMapBatches.Batch018.certificate1477valid
theorem secondValid299 : DerivedMapBatches.Batch014.certificate1179.Valid := DerivedMapBatches.Batch014.certificate1179valid
theorem outputValid299 : DerivedMapBatches.Batch018.certificate1478.Valid := DerivedMapBatches.Batch018.certificate1478valid
theorem linkedComposition299 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1478.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1478.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1179.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1477.algebra.mat x) := by
  rw [firstLink299, secondLink299]
  exact DerivedMapBatches.Batch018.certificate1478valid.2 x
end DerivedLinkageBatches.Batch005
