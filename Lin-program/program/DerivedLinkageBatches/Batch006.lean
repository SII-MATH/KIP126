import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch011
import DerivedMapBatches.Batch012
import DerivedMapBatches.Batch014
import DerivedMapBatches.Batch015
import DerivedMapBatches.Batch016
import DerivedMapBatches.Batch018
import DerivedMapBatches.Batch019
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch006
theorem firstLink300 : DerivedMapBatches.Batch018.certificate1479.algebra.mat = DerivedMapBatches.Batch018.certificate1480.a := by decide
theorem secondLink300 : DerivedMapBatches.Batch014.certificate1182.algebra.mat = DerivedMapBatches.Batch018.certificate1480.b := by decide
theorem firstValid300 : DerivedMapBatches.Batch018.certificate1479.Valid := DerivedMapBatches.Batch018.certificate1479valid
theorem secondValid300 : DerivedMapBatches.Batch014.certificate1182.Valid := DerivedMapBatches.Batch014.certificate1182valid
theorem outputValid300 : DerivedMapBatches.Batch018.certificate1480.Valid := DerivedMapBatches.Batch018.certificate1480valid
theorem linkedComposition300 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1480.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1480.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1182.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1479.algebra.mat x) := by
  rw [firstLink300, secondLink300]
  exact DerivedMapBatches.Batch018.certificate1480valid.2 x
theorem firstLink301 : DerivedMapBatches.Batch018.certificate1481.algebra.mat = DerivedMapBatches.Batch018.certificate1483.a := by decide
theorem secondLink301 : DerivedMapBatches.Batch018.certificate1482.algebra.mat = DerivedMapBatches.Batch018.certificate1483.b := by decide
theorem firstValid301 : DerivedMapBatches.Batch018.certificate1481.Valid := DerivedMapBatches.Batch018.certificate1481valid
theorem secondValid301 : DerivedMapBatches.Batch018.certificate1482.Valid := DerivedMapBatches.Batch018.certificate1482valid
theorem outputValid301 : DerivedMapBatches.Batch018.certificate1483.Valid := DerivedMapBatches.Batch018.certificate1483valid
theorem linkedComposition301 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1483.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1483.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1482.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1481.algebra.mat x) := by
  rw [firstLink301, secondLink301]
  exact DerivedMapBatches.Batch018.certificate1483valid.2 x
theorem firstLink302 : DerivedMapBatches.Batch018.certificate1484.algebra.mat = DerivedMapBatches.Batch018.certificate1485.a := by decide
theorem secondLink302 : DerivedMapBatches.Batch014.certificate1191.algebra.mat = DerivedMapBatches.Batch018.certificate1485.b := by decide
theorem firstValid302 : DerivedMapBatches.Batch018.certificate1484.Valid := DerivedMapBatches.Batch018.certificate1484valid
theorem secondValid302 : DerivedMapBatches.Batch014.certificate1191.Valid := DerivedMapBatches.Batch014.certificate1191valid
theorem outputValid302 : DerivedMapBatches.Batch018.certificate1485.Valid := DerivedMapBatches.Batch018.certificate1485valid
theorem linkedComposition302 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1485.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1485.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1191.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1484.algebra.mat x) := by
  rw [firstLink302, secondLink302]
  exact DerivedMapBatches.Batch018.certificate1485valid.2 x
theorem firstLink303 : DerivedMapBatches.Batch018.certificate1486.algebra.mat = DerivedMapBatches.Batch018.certificate1488.a := by decide
theorem secondLink303 : DerivedMapBatches.Batch018.certificate1487.algebra.mat = DerivedMapBatches.Batch018.certificate1488.b := by decide
theorem firstValid303 : DerivedMapBatches.Batch018.certificate1486.Valid := DerivedMapBatches.Batch018.certificate1486valid
theorem secondValid303 : DerivedMapBatches.Batch018.certificate1487.Valid := DerivedMapBatches.Batch018.certificate1487valid
theorem outputValid303 : DerivedMapBatches.Batch018.certificate1488.Valid := DerivedMapBatches.Batch018.certificate1488valid
theorem linkedComposition303 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1488.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1488.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1487.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1486.algebra.mat x) := by
  rw [firstLink303, secondLink303]
  exact DerivedMapBatches.Batch018.certificate1488valid.2 x
theorem firstLink304 : DerivedMapBatches.Batch018.certificate1489.algebra.mat = DerivedMapBatches.Batch018.certificate1490.a := by decide
theorem secondLink304 : DerivedMapBatches.Batch014.certificate1196.algebra.mat = DerivedMapBatches.Batch018.certificate1490.b := by decide
theorem firstValid304 : DerivedMapBatches.Batch018.certificate1489.Valid := DerivedMapBatches.Batch018.certificate1489valid
theorem secondValid304 : DerivedMapBatches.Batch014.certificate1196.Valid := DerivedMapBatches.Batch014.certificate1196valid
theorem outputValid304 : DerivedMapBatches.Batch018.certificate1490.Valid := DerivedMapBatches.Batch018.certificate1490valid
theorem linkedComposition304 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1490.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1490.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1196.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1489.algebra.mat x) := by
  rw [firstLink304, secondLink304]
  exact DerivedMapBatches.Batch018.certificate1490valid.2 x
theorem firstLink305 : DerivedMapBatches.Batch018.certificate1491.algebra.mat = DerivedMapBatches.Batch018.certificate1492.a := by decide
theorem secondLink305 : DerivedMapBatches.Batch015.certificate1206.algebra.mat = DerivedMapBatches.Batch018.certificate1492.b := by decide
theorem firstValid305 : DerivedMapBatches.Batch018.certificate1491.Valid := DerivedMapBatches.Batch018.certificate1491valid
theorem secondValid305 : DerivedMapBatches.Batch015.certificate1206.Valid := DerivedMapBatches.Batch015.certificate1206valid
theorem outputValid305 : DerivedMapBatches.Batch018.certificate1492.Valid := DerivedMapBatches.Batch018.certificate1492valid
theorem linkedComposition305 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1492.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1492.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1206.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1491.algebra.mat x) := by
  rw [firstLink305, secondLink305]
  exact DerivedMapBatches.Batch018.certificate1492valid.2 x
theorem firstLink306 : DerivedMapBatches.Batch018.certificate1493.algebra.mat = DerivedMapBatches.Batch018.certificate1494.a := by decide
theorem secondLink306 : DerivedMapBatches.Batch015.certificate1208.algebra.mat = DerivedMapBatches.Batch018.certificate1494.b := by decide
theorem firstValid306 : DerivedMapBatches.Batch018.certificate1493.Valid := DerivedMapBatches.Batch018.certificate1493valid
theorem secondValid306 : DerivedMapBatches.Batch015.certificate1208.Valid := DerivedMapBatches.Batch015.certificate1208valid
theorem outputValid306 : DerivedMapBatches.Batch018.certificate1494.Valid := DerivedMapBatches.Batch018.certificate1494valid
theorem linkedComposition306 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1494.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1494.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1208.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1493.algebra.mat x) := by
  rw [firstLink306, secondLink306]
  exact DerivedMapBatches.Batch018.certificate1494valid.2 x
theorem firstLink307 : DerivedMapBatches.Batch018.certificate1495.algebra.mat = DerivedMapBatches.Batch018.certificate1496.a := by decide
theorem secondLink307 : DerivedMapBatches.Batch015.certificate1218.algebra.mat = DerivedMapBatches.Batch018.certificate1496.b := by decide
theorem firstValid307 : DerivedMapBatches.Batch018.certificate1495.Valid := DerivedMapBatches.Batch018.certificate1495valid
theorem secondValid307 : DerivedMapBatches.Batch015.certificate1218.Valid := DerivedMapBatches.Batch015.certificate1218valid
theorem outputValid307 : DerivedMapBatches.Batch018.certificate1496.Valid := DerivedMapBatches.Batch018.certificate1496valid
theorem linkedComposition307 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1496.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1496.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1218.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1495.algebra.mat x) := by
  rw [firstLink307, secondLink307]
  exact DerivedMapBatches.Batch018.certificate1496valid.2 x
theorem firstLink308 : DerivedMapBatches.Batch018.certificate1497.algebra.mat = DerivedMapBatches.Batch018.certificate1498.a := by decide
theorem secondLink308 : DerivedMapBatches.Batch015.certificate1220.algebra.mat = DerivedMapBatches.Batch018.certificate1498.b := by decide
theorem firstValid308 : DerivedMapBatches.Batch018.certificate1497.Valid := DerivedMapBatches.Batch018.certificate1497valid
theorem secondValid308 : DerivedMapBatches.Batch015.certificate1220.Valid := DerivedMapBatches.Batch015.certificate1220valid
theorem outputValid308 : DerivedMapBatches.Batch018.certificate1498.Valid := DerivedMapBatches.Batch018.certificate1498valid
theorem linkedComposition308 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1498.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1498.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1220.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1497.algebra.mat x) := by
  rw [firstLink308, secondLink308]
  exact DerivedMapBatches.Batch018.certificate1498valid.2 x
theorem firstLink309 : DerivedMapBatches.Batch018.certificate1499.algebra.mat = DerivedMapBatches.Batch018.certificate1500.a := by decide
theorem secondLink309 : DerivedMapBatches.Batch015.certificate1222.algebra.mat = DerivedMapBatches.Batch018.certificate1500.b := by decide
theorem firstValid309 : DerivedMapBatches.Batch018.certificate1499.Valid := DerivedMapBatches.Batch018.certificate1499valid
theorem secondValid309 : DerivedMapBatches.Batch015.certificate1222.Valid := DerivedMapBatches.Batch015.certificate1222valid
theorem outputValid309 : DerivedMapBatches.Batch018.certificate1500.Valid := DerivedMapBatches.Batch018.certificate1500valid
theorem linkedComposition309 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1500.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1500.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1222.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1499.algebra.mat x) := by
  rw [firstLink309, secondLink309]
  exact DerivedMapBatches.Batch018.certificate1500valid.2 x
theorem firstLink310 : DerivedMapBatches.Batch018.certificate1501.algebra.mat = DerivedMapBatches.Batch018.certificate1502.a := by decide
theorem secondLink310 : DerivedMapBatches.Batch015.certificate1228.algebra.mat = DerivedMapBatches.Batch018.certificate1502.b := by decide
theorem firstValid310 : DerivedMapBatches.Batch018.certificate1501.Valid := DerivedMapBatches.Batch018.certificate1501valid
theorem secondValid310 : DerivedMapBatches.Batch015.certificate1228.Valid := DerivedMapBatches.Batch015.certificate1228valid
theorem outputValid310 : DerivedMapBatches.Batch018.certificate1502.Valid := DerivedMapBatches.Batch018.certificate1502valid
theorem linkedComposition310 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1502.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1502.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1228.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1501.algebra.mat x) := by
  rw [firstLink310, secondLink310]
  exact DerivedMapBatches.Batch018.certificate1502valid.2 x
theorem firstLink311 : DerivedMapBatches.Batch018.certificate1503.algebra.mat = DerivedMapBatches.Batch018.certificate1504.a := by decide
theorem secondLink311 : DerivedMapBatches.Batch015.certificate1230.algebra.mat = DerivedMapBatches.Batch018.certificate1504.b := by decide
theorem firstValid311 : DerivedMapBatches.Batch018.certificate1503.Valid := DerivedMapBatches.Batch018.certificate1503valid
theorem secondValid311 : DerivedMapBatches.Batch015.certificate1230.Valid := DerivedMapBatches.Batch015.certificate1230valid
theorem outputValid311 : DerivedMapBatches.Batch018.certificate1504.Valid := DerivedMapBatches.Batch018.certificate1504valid
theorem linkedComposition311 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1504.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1504.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1230.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1503.algebra.mat x) := by
  rw [firstLink311, secondLink311]
  exact DerivedMapBatches.Batch018.certificate1504valid.2 x
theorem firstLink312 : DerivedMapBatches.Batch018.certificate1505.algebra.mat = DerivedMapBatches.Batch018.certificate1506.a := by decide
theorem secondLink312 : DerivedMapBatches.Batch015.certificate1235.algebra.mat = DerivedMapBatches.Batch018.certificate1506.b := by decide
theorem firstValid312 : DerivedMapBatches.Batch018.certificate1505.Valid := DerivedMapBatches.Batch018.certificate1505valid
theorem secondValid312 : DerivedMapBatches.Batch015.certificate1235.Valid := DerivedMapBatches.Batch015.certificate1235valid
theorem outputValid312 : DerivedMapBatches.Batch018.certificate1506.Valid := DerivedMapBatches.Batch018.certificate1506valid
theorem linkedComposition312 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1506.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1506.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1235.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1505.algebra.mat x) := by
  rw [firstLink312, secondLink312]
  exact DerivedMapBatches.Batch018.certificate1506valid.2 x
theorem firstLink313 : DerivedMapBatches.Batch018.certificate1507.algebra.mat = DerivedMapBatches.Batch018.certificate1508.a := by decide
theorem secondLink313 : DerivedMapBatches.Batch015.certificate1242.algebra.mat = DerivedMapBatches.Batch018.certificate1508.b := by decide
theorem firstValid313 : DerivedMapBatches.Batch018.certificate1507.Valid := DerivedMapBatches.Batch018.certificate1507valid
theorem secondValid313 : DerivedMapBatches.Batch015.certificate1242.Valid := DerivedMapBatches.Batch015.certificate1242valid
theorem outputValid313 : DerivedMapBatches.Batch018.certificate1508.Valid := DerivedMapBatches.Batch018.certificate1508valid
theorem linkedComposition313 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1508.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1508.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1242.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1507.algebra.mat x) := by
  rw [firstLink313, secondLink313]
  exact DerivedMapBatches.Batch018.certificate1508valid.2 x
theorem firstLink314 : DerivedMapBatches.Batch018.certificate1509.algebra.mat = DerivedMapBatches.Batch018.certificate1510.a := by decide
theorem secondLink314 : DerivedMapBatches.Batch015.certificate1247.algebra.mat = DerivedMapBatches.Batch018.certificate1510.b := by decide
theorem firstValid314 : DerivedMapBatches.Batch018.certificate1509.Valid := DerivedMapBatches.Batch018.certificate1509valid
theorem secondValid314 : DerivedMapBatches.Batch015.certificate1247.Valid := DerivedMapBatches.Batch015.certificate1247valid
theorem outputValid314 : DerivedMapBatches.Batch018.certificate1510.Valid := DerivedMapBatches.Batch018.certificate1510valid
theorem linkedComposition314 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1510.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1510.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1247.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1509.algebra.mat x) := by
  rw [firstLink314, secondLink314]
  exact DerivedMapBatches.Batch018.certificate1510valid.2 x
theorem firstLink315 : DerivedMapBatches.Batch018.certificate1511.algebra.mat = DerivedMapBatches.Batch018.certificate1512.a := by decide
theorem secondLink315 : DerivedMapBatches.Batch015.certificate1252.algebra.mat = DerivedMapBatches.Batch018.certificate1512.b := by decide
theorem firstValid315 : DerivedMapBatches.Batch018.certificate1511.Valid := DerivedMapBatches.Batch018.certificate1511valid
theorem secondValid315 : DerivedMapBatches.Batch015.certificate1252.Valid := DerivedMapBatches.Batch015.certificate1252valid
theorem outputValid315 : DerivedMapBatches.Batch018.certificate1512.Valid := DerivedMapBatches.Batch018.certificate1512valid
theorem linkedComposition315 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1512.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1512.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1252.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1511.algebra.mat x) := by
  rw [firstLink315, secondLink315]
  exact DerivedMapBatches.Batch018.certificate1512valid.2 x
theorem firstLink316 : DerivedMapBatches.Batch018.certificate1476.c = DerivedMapBatches.Batch018.certificate1514.a := by decide
theorem secondLink316 : DerivedMapBatches.Batch018.certificate1513.algebra.mat = DerivedMapBatches.Batch018.certificate1514.b := by decide
theorem firstValid316 : DerivedMapBatches.Batch018.certificate1476.Valid := DerivedMapBatches.Batch018.certificate1476valid
theorem secondValid316 : DerivedMapBatches.Batch018.certificate1513.Valid := DerivedMapBatches.Batch018.certificate1513valid
theorem outputValid316 : DerivedMapBatches.Batch018.certificate1514.Valid := DerivedMapBatches.Batch018.certificate1514valid
theorem linkedComposition316 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1514.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1514.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1513.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1476.c x) := by
  rw [firstLink316, secondLink316]
  exact DerivedMapBatches.Batch018.certificate1514valid.2 x
theorem firstLink317 : DerivedMapBatches.Batch018.certificate1478.c = DerivedMapBatches.Batch018.certificate1515.a := by decide
theorem secondLink317 : DerivedMapBatches.Batch014.certificate1180.algebra.mat = DerivedMapBatches.Batch018.certificate1515.b := by decide
theorem firstValid317 : DerivedMapBatches.Batch018.certificate1478.Valid := DerivedMapBatches.Batch018.certificate1478valid
theorem secondValid317 : DerivedMapBatches.Batch014.certificate1180.Valid := DerivedMapBatches.Batch014.certificate1180valid
theorem outputValid317 : DerivedMapBatches.Batch018.certificate1515.Valid := DerivedMapBatches.Batch018.certificate1515valid
theorem linkedComposition317 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1515.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1515.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1180.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1478.c x) := by
  rw [firstLink317, secondLink317]
  exact DerivedMapBatches.Batch018.certificate1515valid.2 x
theorem firstLink318 : DerivedMapBatches.Batch018.certificate1480.c = DerivedMapBatches.Batch018.certificate1516.a := by decide
theorem secondLink318 : DerivedMapBatches.Batch011.certificate902.algebra.mat = DerivedMapBatches.Batch018.certificate1516.b := by decide
theorem firstValid318 : DerivedMapBatches.Batch018.certificate1480.Valid := DerivedMapBatches.Batch018.certificate1480valid
theorem secondValid318 : DerivedMapBatches.Batch011.certificate902.Valid := DerivedMapBatches.Batch011.certificate902valid
theorem outputValid318 : DerivedMapBatches.Batch018.certificate1516.Valid := DerivedMapBatches.Batch018.certificate1516valid
theorem linkedComposition318 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1516.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1516.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate902.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1480.c x) := by
  rw [firstLink318, secondLink318]
  exact DerivedMapBatches.Batch018.certificate1516valid.2 x
theorem firstLink319 : DerivedMapBatches.Batch018.certificate1483.c = DerivedMapBatches.Batch018.certificate1518.a := by decide
theorem secondLink319 : DerivedMapBatches.Batch018.certificate1517.algebra.mat = DerivedMapBatches.Batch018.certificate1518.b := by decide
theorem firstValid319 : DerivedMapBatches.Batch018.certificate1483.Valid := DerivedMapBatches.Batch018.certificate1483valid
theorem secondValid319 : DerivedMapBatches.Batch018.certificate1517.Valid := DerivedMapBatches.Batch018.certificate1517valid
theorem outputValid319 : DerivedMapBatches.Batch018.certificate1518.Valid := DerivedMapBatches.Batch018.certificate1518valid
theorem linkedComposition319 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1518.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1518.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1517.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1483.c x) := by
  rw [firstLink319, secondLink319]
  exact DerivedMapBatches.Batch018.certificate1518valid.2 x
theorem firstLink320 : DerivedMapBatches.Batch018.certificate1485.c = DerivedMapBatches.Batch018.certificate1519.a := by decide
theorem secondLink320 : DerivedMapBatches.Batch011.certificate914.algebra.mat = DerivedMapBatches.Batch018.certificate1519.b := by decide
theorem firstValid320 : DerivedMapBatches.Batch018.certificate1485.Valid := DerivedMapBatches.Batch018.certificate1485valid
theorem secondValid320 : DerivedMapBatches.Batch011.certificate914.Valid := DerivedMapBatches.Batch011.certificate914valid
theorem outputValid320 : DerivedMapBatches.Batch018.certificate1519.Valid := DerivedMapBatches.Batch018.certificate1519valid
theorem linkedComposition320 (x : LinearCertificates.Vec DerivedMapBatches.Batch018.certificate1519.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1519.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate914.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1485.c x) := by
  rw [firstLink320, secondLink320]
  exact DerivedMapBatches.Batch018.certificate1519valid.2 x
theorem firstLink321 : DerivedMapBatches.Batch018.certificate1488.c = DerivedMapBatches.Batch019.certificate1521.a := by decide
theorem secondLink321 : DerivedMapBatches.Batch019.certificate1520.algebra.mat = DerivedMapBatches.Batch019.certificate1521.b := by decide
theorem firstValid321 : DerivedMapBatches.Batch018.certificate1488.Valid := DerivedMapBatches.Batch018.certificate1488valid
theorem secondValid321 : DerivedMapBatches.Batch019.certificate1520.Valid := DerivedMapBatches.Batch019.certificate1520valid
theorem outputValid321 : DerivedMapBatches.Batch019.certificate1521.Valid := DerivedMapBatches.Batch019.certificate1521valid
theorem linkedComposition321 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1521.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1521.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1520.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1488.c x) := by
  rw [firstLink321, secondLink321]
  exact DerivedMapBatches.Batch019.certificate1521valid.2 x
theorem firstLink322 : DerivedMapBatches.Batch018.certificate1490.c = DerivedMapBatches.Batch019.certificate1522.a := by decide
theorem secondLink322 : DerivedMapBatches.Batch014.certificate1197.algebra.mat = DerivedMapBatches.Batch019.certificate1522.b := by decide
theorem firstValid322 : DerivedMapBatches.Batch018.certificate1490.Valid := DerivedMapBatches.Batch018.certificate1490valid
theorem secondValid322 : DerivedMapBatches.Batch014.certificate1197.Valid := DerivedMapBatches.Batch014.certificate1197valid
theorem outputValid322 : DerivedMapBatches.Batch019.certificate1522.Valid := DerivedMapBatches.Batch019.certificate1522valid
theorem linkedComposition322 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1522.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1522.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1197.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1490.c x) := by
  rw [firstLink322, secondLink322]
  exact DerivedMapBatches.Batch019.certificate1522valid.2 x
theorem firstLink323 : DerivedMapBatches.Batch018.certificate1492.c = DerivedMapBatches.Batch019.certificate1523.a := by decide
theorem secondLink323 : DerivedMapBatches.Batch011.certificate929.algebra.mat = DerivedMapBatches.Batch019.certificate1523.b := by decide
theorem firstValid323 : DerivedMapBatches.Batch018.certificate1492.Valid := DerivedMapBatches.Batch018.certificate1492valid
theorem secondValid323 : DerivedMapBatches.Batch011.certificate929.Valid := DerivedMapBatches.Batch011.certificate929valid
theorem outputValid323 : DerivedMapBatches.Batch019.certificate1523.Valid := DerivedMapBatches.Batch019.certificate1523valid
theorem linkedComposition323 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1523.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1523.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate929.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1492.c x) := by
  rw [firstLink323, secondLink323]
  exact DerivedMapBatches.Batch019.certificate1523valid.2 x
theorem firstLink324 : DerivedMapBatches.Batch018.certificate1494.c = DerivedMapBatches.Batch019.certificate1524.a := by decide
theorem secondLink324 : DerivedMapBatches.Batch011.certificate932.algebra.mat = DerivedMapBatches.Batch019.certificate1524.b := by decide
theorem firstValid324 : DerivedMapBatches.Batch018.certificate1494.Valid := DerivedMapBatches.Batch018.certificate1494valid
theorem secondValid324 : DerivedMapBatches.Batch011.certificate932.Valid := DerivedMapBatches.Batch011.certificate932valid
theorem outputValid324 : DerivedMapBatches.Batch019.certificate1524.Valid := DerivedMapBatches.Batch019.certificate1524valid
theorem linkedComposition324 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1524.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1524.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate932.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1494.c x) := by
  rw [firstLink324, secondLink324]
  exact DerivedMapBatches.Batch019.certificate1524valid.2 x
theorem firstLink325 : DerivedMapBatches.Batch018.certificate1496.c = DerivedMapBatches.Batch019.certificate1525.a := by decide
theorem secondLink325 : DerivedMapBatches.Batch011.certificate941.algebra.mat = DerivedMapBatches.Batch019.certificate1525.b := by decide
theorem firstValid325 : DerivedMapBatches.Batch018.certificate1496.Valid := DerivedMapBatches.Batch018.certificate1496valid
theorem secondValid325 : DerivedMapBatches.Batch011.certificate941.Valid := DerivedMapBatches.Batch011.certificate941valid
theorem outputValid325 : DerivedMapBatches.Batch019.certificate1525.Valid := DerivedMapBatches.Batch019.certificate1525valid
theorem linkedComposition325 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1525.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1525.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate941.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1496.c x) := by
  rw [firstLink325, secondLink325]
  exact DerivedMapBatches.Batch019.certificate1525valid.2 x
theorem firstLink326 : DerivedMapBatches.Batch018.certificate1498.c = DerivedMapBatches.Batch019.certificate1526.a := by decide
theorem secondLink326 : DerivedMapBatches.Batch011.certificate944.algebra.mat = DerivedMapBatches.Batch019.certificate1526.b := by decide
theorem firstValid326 : DerivedMapBatches.Batch018.certificate1498.Valid := DerivedMapBatches.Batch018.certificate1498valid
theorem secondValid326 : DerivedMapBatches.Batch011.certificate944.Valid := DerivedMapBatches.Batch011.certificate944valid
theorem outputValid326 : DerivedMapBatches.Batch019.certificate1526.Valid := DerivedMapBatches.Batch019.certificate1526valid
theorem linkedComposition326 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1526.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1526.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate944.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1498.c x) := by
  rw [firstLink326, secondLink326]
  exact DerivedMapBatches.Batch019.certificate1526valid.2 x
theorem firstLink327 : DerivedMapBatches.Batch018.certificate1500.c = DerivedMapBatches.Batch019.certificate1527.a := by decide
theorem secondLink327 : DerivedMapBatches.Batch015.certificate1223.algebra.mat = DerivedMapBatches.Batch019.certificate1527.b := by decide
theorem firstValid327 : DerivedMapBatches.Batch018.certificate1500.Valid := DerivedMapBatches.Batch018.certificate1500valid
theorem secondValid327 : DerivedMapBatches.Batch015.certificate1223.Valid := DerivedMapBatches.Batch015.certificate1223valid
theorem outputValid327 : DerivedMapBatches.Batch019.certificate1527.Valid := DerivedMapBatches.Batch019.certificate1527valid
theorem linkedComposition327 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1527.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1527.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1223.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1500.c x) := by
  rw [firstLink327, secondLink327]
  exact DerivedMapBatches.Batch019.certificate1527valid.2 x
theorem firstLink328 : DerivedMapBatches.Batch018.certificate1502.c = DerivedMapBatches.Batch019.certificate1528.a := by decide
theorem secondLink328 : DerivedMapBatches.Batch011.certificate950.algebra.mat = DerivedMapBatches.Batch019.certificate1528.b := by decide
theorem firstValid328 : DerivedMapBatches.Batch018.certificate1502.Valid := DerivedMapBatches.Batch018.certificate1502valid
theorem secondValid328 : DerivedMapBatches.Batch011.certificate950.Valid := DerivedMapBatches.Batch011.certificate950valid
theorem outputValid328 : DerivedMapBatches.Batch019.certificate1528.Valid := DerivedMapBatches.Batch019.certificate1528valid
theorem linkedComposition328 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1528.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1528.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate950.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1502.c x) := by
  rw [firstLink328, secondLink328]
  exact DerivedMapBatches.Batch019.certificate1528valid.2 x
theorem firstLink329 : DerivedMapBatches.Batch018.certificate1504.c = DerivedMapBatches.Batch019.certificate1529.a := by decide
theorem secondLink329 : DerivedMapBatches.Batch011.certificate953.algebra.mat = DerivedMapBatches.Batch019.certificate1529.b := by decide
theorem firstValid329 : DerivedMapBatches.Batch018.certificate1504.Valid := DerivedMapBatches.Batch018.certificate1504valid
theorem secondValid329 : DerivedMapBatches.Batch011.certificate953.Valid := DerivedMapBatches.Batch011.certificate953valid
theorem outputValid329 : DerivedMapBatches.Batch019.certificate1529.Valid := DerivedMapBatches.Batch019.certificate1529valid
theorem linkedComposition329 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1529.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1529.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate953.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1504.c x) := by
  rw [firstLink329, secondLink329]
  exact DerivedMapBatches.Batch019.certificate1529valid.2 x
theorem firstLink330 : DerivedMapBatches.Batch018.certificate1506.c = DerivedMapBatches.Batch019.certificate1530.a := by decide
theorem secondLink330 : DerivedMapBatches.Batch011.certificate956.algebra.mat = DerivedMapBatches.Batch019.certificate1530.b := by decide
theorem firstValid330 : DerivedMapBatches.Batch018.certificate1506.Valid := DerivedMapBatches.Batch018.certificate1506valid
theorem secondValid330 : DerivedMapBatches.Batch011.certificate956.Valid := DerivedMapBatches.Batch011.certificate956valid
theorem outputValid330 : DerivedMapBatches.Batch019.certificate1530.Valid := DerivedMapBatches.Batch019.certificate1530valid
theorem linkedComposition330 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1530.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1530.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate956.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1506.c x) := by
  rw [firstLink330, secondLink330]
  exact DerivedMapBatches.Batch019.certificate1530valid.2 x
theorem firstLink331 : DerivedMapBatches.Batch018.certificate1508.c = DerivedMapBatches.Batch019.certificate1531.a := by decide
theorem secondLink331 : DerivedMapBatches.Batch012.certificate962.algebra.mat = DerivedMapBatches.Batch019.certificate1531.b := by decide
theorem firstValid331 : DerivedMapBatches.Batch018.certificate1508.Valid := DerivedMapBatches.Batch018.certificate1508valid
theorem secondValid331 : DerivedMapBatches.Batch012.certificate962.Valid := DerivedMapBatches.Batch012.certificate962valid
theorem outputValid331 : DerivedMapBatches.Batch019.certificate1531.Valid := DerivedMapBatches.Batch019.certificate1531valid
theorem linkedComposition331 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1531.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1531.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate962.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1508.c x) := by
  rw [firstLink331, secondLink331]
  exact DerivedMapBatches.Batch019.certificate1531valid.2 x
theorem firstLink332 : DerivedMapBatches.Batch018.certificate1510.c = DerivedMapBatches.Batch019.certificate1532.a := by decide
theorem secondLink332 : DerivedMapBatches.Batch012.certificate968.algebra.mat = DerivedMapBatches.Batch019.certificate1532.b := by decide
theorem firstValid332 : DerivedMapBatches.Batch018.certificate1510.Valid := DerivedMapBatches.Batch018.certificate1510valid
theorem secondValid332 : DerivedMapBatches.Batch012.certificate968.Valid := DerivedMapBatches.Batch012.certificate968valid
theorem outputValid332 : DerivedMapBatches.Batch019.certificate1532.Valid := DerivedMapBatches.Batch019.certificate1532valid
theorem linkedComposition332 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1532.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1532.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate968.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1510.c x) := by
  rw [firstLink332, secondLink332]
  exact DerivedMapBatches.Batch019.certificate1532valid.2 x
theorem firstLink333 : DerivedMapBatches.Batch018.certificate1512.c = DerivedMapBatches.Batch019.certificate1533.a := by decide
theorem secondLink333 : DerivedMapBatches.Batch012.certificate974.algebra.mat = DerivedMapBatches.Batch019.certificate1533.b := by decide
theorem firstValid333 : DerivedMapBatches.Batch018.certificate1512.Valid := DerivedMapBatches.Batch018.certificate1512valid
theorem secondValid333 : DerivedMapBatches.Batch012.certificate974.Valid := DerivedMapBatches.Batch012.certificate974valid
theorem outputValid333 : DerivedMapBatches.Batch019.certificate1533.Valid := DerivedMapBatches.Batch019.certificate1533valid
theorem linkedComposition333 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1533.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1533.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate974.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1512.c x) := by
  rw [firstLink333, secondLink333]
  exact DerivedMapBatches.Batch019.certificate1533valid.2 x
theorem firstLink334 : DerivedMapBatches.Batch018.certificate1514.c = DerivedMapBatches.Batch019.certificate1535.a := by decide
theorem secondLink334 : DerivedMapBatches.Batch019.certificate1534.algebra.mat = DerivedMapBatches.Batch019.certificate1535.b := by decide
theorem firstValid334 : DerivedMapBatches.Batch018.certificate1514.Valid := DerivedMapBatches.Batch018.certificate1514valid
theorem secondValid334 : DerivedMapBatches.Batch019.certificate1534.Valid := DerivedMapBatches.Batch019.certificate1534valid
theorem outputValid334 : DerivedMapBatches.Batch019.certificate1535.Valid := DerivedMapBatches.Batch019.certificate1535valid
theorem linkedComposition334 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1535.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1535.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1534.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1514.c x) := by
  rw [firstLink334, secondLink334]
  exact DerivedMapBatches.Batch019.certificate1535valid.2 x
theorem firstLink335 : DerivedMapBatches.Batch018.certificate1515.c = DerivedMapBatches.Batch019.certificate1536.a := by decide
theorem secondLink335 : DerivedMapBatches.Batch015.certificate1267.algebra.mat = DerivedMapBatches.Batch019.certificate1536.b := by decide
theorem firstValid335 : DerivedMapBatches.Batch018.certificate1515.Valid := DerivedMapBatches.Batch018.certificate1515valid
theorem secondValid335 : DerivedMapBatches.Batch015.certificate1267.Valid := DerivedMapBatches.Batch015.certificate1267valid
theorem outputValid335 : DerivedMapBatches.Batch019.certificate1536.Valid := DerivedMapBatches.Batch019.certificate1536valid
theorem linkedComposition335 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1536.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1536.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1267.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1515.c x) := by
  rw [firstLink335, secondLink335]
  exact DerivedMapBatches.Batch019.certificate1536valid.2 x
theorem firstLink336 : DerivedMapBatches.Batch018.certificate1516.c = DerivedMapBatches.Batch019.certificate1537.a := by decide
theorem secondLink336 : DerivedMapBatches.Batch011.certificate903.algebra.mat = DerivedMapBatches.Batch019.certificate1537.b := by decide
theorem firstValid336 : DerivedMapBatches.Batch018.certificate1516.Valid := DerivedMapBatches.Batch018.certificate1516valid
theorem secondValid336 : DerivedMapBatches.Batch011.certificate903.Valid := DerivedMapBatches.Batch011.certificate903valid
theorem outputValid336 : DerivedMapBatches.Batch019.certificate1537.Valid := DerivedMapBatches.Batch019.certificate1537valid
theorem linkedComposition336 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1537.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1537.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate903.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1516.c x) := by
  rw [firstLink336, secondLink336]
  exact DerivedMapBatches.Batch019.certificate1537valid.2 x
theorem firstLink337 : DerivedMapBatches.Batch018.certificate1518.c = DerivedMapBatches.Batch019.certificate1539.a := by decide
theorem secondLink337 : DerivedMapBatches.Batch019.certificate1538.algebra.mat = DerivedMapBatches.Batch019.certificate1539.b := by decide
theorem firstValid337 : DerivedMapBatches.Batch018.certificate1518.Valid := DerivedMapBatches.Batch018.certificate1518valid
theorem secondValid337 : DerivedMapBatches.Batch019.certificate1538.Valid := DerivedMapBatches.Batch019.certificate1538valid
theorem outputValid337 : DerivedMapBatches.Batch019.certificate1539.Valid := DerivedMapBatches.Batch019.certificate1539valid
theorem linkedComposition337 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1539.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1539.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1538.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1518.c x) := by
  rw [firstLink337, secondLink337]
  exact DerivedMapBatches.Batch019.certificate1539valid.2 x
theorem firstLink338 : DerivedMapBatches.Batch018.certificate1519.c = DerivedMapBatches.Batch019.certificate1540.a := by decide
theorem secondLink338 : DerivedMapBatches.Batch011.certificate915.algebra.mat = DerivedMapBatches.Batch019.certificate1540.b := by decide
theorem firstValid338 : DerivedMapBatches.Batch018.certificate1519.Valid := DerivedMapBatches.Batch018.certificate1519valid
theorem secondValid338 : DerivedMapBatches.Batch011.certificate915.Valid := DerivedMapBatches.Batch011.certificate915valid
theorem outputValid338 : DerivedMapBatches.Batch019.certificate1540.Valid := DerivedMapBatches.Batch019.certificate1540valid
theorem linkedComposition338 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1540.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1540.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate915.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1519.c x) := by
  rw [firstLink338, secondLink338]
  exact DerivedMapBatches.Batch019.certificate1540valid.2 x
theorem firstLink339 : DerivedMapBatches.Batch019.certificate1521.c = DerivedMapBatches.Batch019.certificate1542.a := by decide
theorem secondLink339 : DerivedMapBatches.Batch019.certificate1541.algebra.mat = DerivedMapBatches.Batch019.certificate1542.b := by decide
theorem firstValid339 : DerivedMapBatches.Batch019.certificate1521.Valid := DerivedMapBatches.Batch019.certificate1521valid
theorem secondValid339 : DerivedMapBatches.Batch019.certificate1541.Valid := DerivedMapBatches.Batch019.certificate1541valid
theorem outputValid339 : DerivedMapBatches.Batch019.certificate1542.Valid := DerivedMapBatches.Batch019.certificate1542valid
theorem linkedComposition339 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1542.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1542.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1541.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1521.c x) := by
  rw [firstLink339, secondLink339]
  exact DerivedMapBatches.Batch019.certificate1542valid.2 x
theorem firstLink340 : DerivedMapBatches.Batch019.certificate1522.c = DerivedMapBatches.Batch019.certificate1543.a := by decide
theorem secondLink340 : DerivedMapBatches.Batch015.certificate1277.algebra.mat = DerivedMapBatches.Batch019.certificate1543.b := by decide
theorem firstValid340 : DerivedMapBatches.Batch019.certificate1522.Valid := DerivedMapBatches.Batch019.certificate1522valid
theorem secondValid340 : DerivedMapBatches.Batch015.certificate1277.Valid := DerivedMapBatches.Batch015.certificate1277valid
theorem outputValid340 : DerivedMapBatches.Batch019.certificate1543.Valid := DerivedMapBatches.Batch019.certificate1543valid
theorem linkedComposition340 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1543.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1543.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1277.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1522.c x) := by
  rw [firstLink340, secondLink340]
  exact DerivedMapBatches.Batch019.certificate1543valid.2 x
theorem firstLink341 : DerivedMapBatches.Batch019.certificate1523.c = DerivedMapBatches.Batch019.certificate1544.a := by decide
theorem secondLink341 : DerivedMapBatches.Batch011.certificate930.algebra.mat = DerivedMapBatches.Batch019.certificate1544.b := by decide
theorem firstValid341 : DerivedMapBatches.Batch019.certificate1523.Valid := DerivedMapBatches.Batch019.certificate1523valid
theorem secondValid341 : DerivedMapBatches.Batch011.certificate930.Valid := DerivedMapBatches.Batch011.certificate930valid
theorem outputValid341 : DerivedMapBatches.Batch019.certificate1544.Valid := DerivedMapBatches.Batch019.certificate1544valid
theorem linkedComposition341 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1544.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1544.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate930.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1523.c x) := by
  rw [firstLink341, secondLink341]
  exact DerivedMapBatches.Batch019.certificate1544valid.2 x
theorem firstLink342 : DerivedMapBatches.Batch019.certificate1524.c = DerivedMapBatches.Batch019.certificate1545.a := by decide
theorem secondLink342 : DerivedMapBatches.Batch011.certificate933.algebra.mat = DerivedMapBatches.Batch019.certificate1545.b := by decide
theorem firstValid342 : DerivedMapBatches.Batch019.certificate1524.Valid := DerivedMapBatches.Batch019.certificate1524valid
theorem secondValid342 : DerivedMapBatches.Batch011.certificate933.Valid := DerivedMapBatches.Batch011.certificate933valid
theorem outputValid342 : DerivedMapBatches.Batch019.certificate1545.Valid := DerivedMapBatches.Batch019.certificate1545valid
theorem linkedComposition342 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1545.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1545.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate933.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1524.c x) := by
  rw [firstLink342, secondLink342]
  exact DerivedMapBatches.Batch019.certificate1545valid.2 x
theorem firstLink343 : DerivedMapBatches.Batch019.certificate1525.c = DerivedMapBatches.Batch019.certificate1546.a := by decide
theorem secondLink343 : DerivedMapBatches.Batch011.certificate942.algebra.mat = DerivedMapBatches.Batch019.certificate1546.b := by decide
theorem firstValid343 : DerivedMapBatches.Batch019.certificate1525.Valid := DerivedMapBatches.Batch019.certificate1525valid
theorem secondValid343 : DerivedMapBatches.Batch011.certificate942.Valid := DerivedMapBatches.Batch011.certificate942valid
theorem outputValid343 : DerivedMapBatches.Batch019.certificate1546.Valid := DerivedMapBatches.Batch019.certificate1546valid
theorem linkedComposition343 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1546.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1546.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate942.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1525.c x) := by
  rw [firstLink343, secondLink343]
  exact DerivedMapBatches.Batch019.certificate1546valid.2 x
theorem firstLink344 : DerivedMapBatches.Batch019.certificate1526.c = DerivedMapBatches.Batch019.certificate1547.a := by decide
theorem secondLink344 : DerivedMapBatches.Batch011.certificate945.algebra.mat = DerivedMapBatches.Batch019.certificate1547.b := by decide
theorem firstValid344 : DerivedMapBatches.Batch019.certificate1526.Valid := DerivedMapBatches.Batch019.certificate1526valid
theorem secondValid344 : DerivedMapBatches.Batch011.certificate945.Valid := DerivedMapBatches.Batch011.certificate945valid
theorem outputValid344 : DerivedMapBatches.Batch019.certificate1547.Valid := DerivedMapBatches.Batch019.certificate1547valid
theorem linkedComposition344 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1547.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1547.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate945.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1526.c x) := by
  rw [firstLink344, secondLink344]
  exact DerivedMapBatches.Batch019.certificate1547valid.2 x
theorem firstLink345 : DerivedMapBatches.Batch019.certificate1527.c = DerivedMapBatches.Batch019.certificate1548.a := by decide
theorem secondLink345 : DerivedMapBatches.Batch016.certificate1292.algebra.mat = DerivedMapBatches.Batch019.certificate1548.b := by decide
theorem firstValid345 : DerivedMapBatches.Batch019.certificate1527.Valid := DerivedMapBatches.Batch019.certificate1527valid
theorem secondValid345 : DerivedMapBatches.Batch016.certificate1292.Valid := DerivedMapBatches.Batch016.certificate1292valid
theorem outputValid345 : DerivedMapBatches.Batch019.certificate1548.Valid := DerivedMapBatches.Batch019.certificate1548valid
theorem linkedComposition345 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1548.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1548.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1292.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1527.c x) := by
  rw [firstLink345, secondLink345]
  exact DerivedMapBatches.Batch019.certificate1548valid.2 x
theorem firstLink346 : DerivedMapBatches.Batch019.certificate1528.c = DerivedMapBatches.Batch019.certificate1549.a := by decide
theorem secondLink346 : DerivedMapBatches.Batch011.certificate951.algebra.mat = DerivedMapBatches.Batch019.certificate1549.b := by decide
theorem firstValid346 : DerivedMapBatches.Batch019.certificate1528.Valid := DerivedMapBatches.Batch019.certificate1528valid
theorem secondValid346 : DerivedMapBatches.Batch011.certificate951.Valid := DerivedMapBatches.Batch011.certificate951valid
theorem outputValid346 : DerivedMapBatches.Batch019.certificate1549.Valid := DerivedMapBatches.Batch019.certificate1549valid
theorem linkedComposition346 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1549.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1549.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate951.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1528.c x) := by
  rw [firstLink346, secondLink346]
  exact DerivedMapBatches.Batch019.certificate1549valid.2 x
theorem firstLink347 : DerivedMapBatches.Batch019.certificate1529.c = DerivedMapBatches.Batch019.certificate1550.a := by decide
theorem secondLink347 : DerivedMapBatches.Batch011.certificate954.algebra.mat = DerivedMapBatches.Batch019.certificate1550.b := by decide
theorem firstValid347 : DerivedMapBatches.Batch019.certificate1529.Valid := DerivedMapBatches.Batch019.certificate1529valid
theorem secondValid347 : DerivedMapBatches.Batch011.certificate954.Valid := DerivedMapBatches.Batch011.certificate954valid
theorem outputValid347 : DerivedMapBatches.Batch019.certificate1550.Valid := DerivedMapBatches.Batch019.certificate1550valid
theorem linkedComposition347 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1550.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1550.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate954.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1529.c x) := by
  rw [firstLink347, secondLink347]
  exact DerivedMapBatches.Batch019.certificate1550valid.2 x
theorem firstLink348 : DerivedMapBatches.Batch019.certificate1530.c = DerivedMapBatches.Batch019.certificate1551.a := by decide
theorem secondLink348 : DerivedMapBatches.Batch011.certificate957.algebra.mat = DerivedMapBatches.Batch019.certificate1551.b := by decide
theorem firstValid348 : DerivedMapBatches.Batch019.certificate1530.Valid := DerivedMapBatches.Batch019.certificate1530valid
theorem secondValid348 : DerivedMapBatches.Batch011.certificate957.Valid := DerivedMapBatches.Batch011.certificate957valid
theorem outputValid348 : DerivedMapBatches.Batch019.certificate1551.Valid := DerivedMapBatches.Batch019.certificate1551valid
theorem linkedComposition348 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1551.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1551.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate957.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1530.c x) := by
  rw [firstLink348, secondLink348]
  exact DerivedMapBatches.Batch019.certificate1551valid.2 x
theorem firstLink349 : DerivedMapBatches.Batch019.certificate1531.c = DerivedMapBatches.Batch019.certificate1552.a := by decide
theorem secondLink349 : DerivedMapBatches.Batch012.certificate963.algebra.mat = DerivedMapBatches.Batch019.certificate1552.b := by decide
theorem firstValid349 : DerivedMapBatches.Batch019.certificate1531.Valid := DerivedMapBatches.Batch019.certificate1531valid
theorem secondValid349 : DerivedMapBatches.Batch012.certificate963.Valid := DerivedMapBatches.Batch012.certificate963valid
theorem outputValid349 : DerivedMapBatches.Batch019.certificate1552.Valid := DerivedMapBatches.Batch019.certificate1552valid
theorem linkedComposition349 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1552.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1552.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate963.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1531.c x) := by
  rw [firstLink349, secondLink349]
  exact DerivedMapBatches.Batch019.certificate1552valid.2 x
end DerivedLinkageBatches.Batch006
