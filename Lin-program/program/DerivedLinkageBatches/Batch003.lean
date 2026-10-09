import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch011
import DerivedMapBatches.Batch013
import DerivedMapBatches.Batch014
import DerivedMapBatches.Batch015
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch003
theorem firstLink150 : DerivedMapBatches.Batch013.certificate1054.c = DerivedMapBatches.Batch014.certificate1129.a := by decide
theorem secondLink150 : DerivedMapBatches.Batch014.certificate1128.algebra.mat = DerivedMapBatches.Batch014.certificate1129.b := by decide
theorem firstValid150 : DerivedMapBatches.Batch013.certificate1054.Valid := DerivedMapBatches.Batch013.certificate1054valid
theorem secondValid150 : DerivedMapBatches.Batch014.certificate1128.Valid := DerivedMapBatches.Batch014.certificate1128valid
theorem outputValid150 : DerivedMapBatches.Batch014.certificate1129.Valid := DerivedMapBatches.Batch014.certificate1129valid
theorem linkedComposition150 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1129.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1129.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1128.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1054.c x) := by
  rw [firstLink150, secondLink150]
  exact DerivedMapBatches.Batch014.certificate1129valid.2 x
theorem firstLink151 : DerivedMapBatches.Batch013.certificate1057.c = DerivedMapBatches.Batch014.certificate1131.a := by decide
theorem secondLink151 : DerivedMapBatches.Batch014.certificate1130.algebra.mat = DerivedMapBatches.Batch014.certificate1131.b := by decide
theorem firstValid151 : DerivedMapBatches.Batch013.certificate1057.Valid := DerivedMapBatches.Batch013.certificate1057valid
theorem secondValid151 : DerivedMapBatches.Batch014.certificate1130.Valid := DerivedMapBatches.Batch014.certificate1130valid
theorem outputValid151 : DerivedMapBatches.Batch014.certificate1131.Valid := DerivedMapBatches.Batch014.certificate1131valid
theorem linkedComposition151 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1131.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1131.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1130.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1057.c x) := by
  rw [firstLink151, secondLink151]
  exact DerivedMapBatches.Batch014.certificate1131valid.2 x
theorem firstLink152 : DerivedMapBatches.Batch013.certificate1060.c = DerivedMapBatches.Batch014.certificate1133.a := by decide
theorem secondLink152 : DerivedMapBatches.Batch014.certificate1132.algebra.mat = DerivedMapBatches.Batch014.certificate1133.b := by decide
theorem firstValid152 : DerivedMapBatches.Batch013.certificate1060.Valid := DerivedMapBatches.Batch013.certificate1060valid
theorem secondValid152 : DerivedMapBatches.Batch014.certificate1132.Valid := DerivedMapBatches.Batch014.certificate1132valid
theorem outputValid152 : DerivedMapBatches.Batch014.certificate1133.Valid := DerivedMapBatches.Batch014.certificate1133valid
theorem linkedComposition152 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1133.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1133.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1132.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1060.c x) := by
  rw [firstLink152, secondLink152]
  exact DerivedMapBatches.Batch014.certificate1133valid.2 x
theorem firstLink153 : DerivedMapBatches.Batch013.certificate1063.c = DerivedMapBatches.Batch014.certificate1135.a := by decide
theorem secondLink153 : DerivedMapBatches.Batch014.certificate1134.algebra.mat = DerivedMapBatches.Batch014.certificate1135.b := by decide
theorem firstValid153 : DerivedMapBatches.Batch013.certificate1063.Valid := DerivedMapBatches.Batch013.certificate1063valid
theorem secondValid153 : DerivedMapBatches.Batch014.certificate1134.Valid := DerivedMapBatches.Batch014.certificate1134valid
theorem outputValid153 : DerivedMapBatches.Batch014.certificate1135.Valid := DerivedMapBatches.Batch014.certificate1135valid
theorem linkedComposition153 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1135.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1135.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1134.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1063.c x) := by
  rw [firstLink153, secondLink153]
  exact DerivedMapBatches.Batch014.certificate1135valid.2 x
theorem firstLink154 : DerivedMapBatches.Batch013.certificate1066.c = DerivedMapBatches.Batch014.certificate1137.a := by decide
theorem secondLink154 : DerivedMapBatches.Batch014.certificate1136.algebra.mat = DerivedMapBatches.Batch014.certificate1137.b := by decide
theorem firstValid154 : DerivedMapBatches.Batch013.certificate1066.Valid := DerivedMapBatches.Batch013.certificate1066valid
theorem secondValid154 : DerivedMapBatches.Batch014.certificate1136.Valid := DerivedMapBatches.Batch014.certificate1136valid
theorem outputValid154 : DerivedMapBatches.Batch014.certificate1137.Valid := DerivedMapBatches.Batch014.certificate1137valid
theorem linkedComposition154 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1137.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1137.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1136.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1066.c x) := by
  rw [firstLink154, secondLink154]
  exact DerivedMapBatches.Batch014.certificate1137valid.2 x
theorem firstLink155 : DerivedMapBatches.Batch013.certificate1069.c = DerivedMapBatches.Batch014.certificate1139.a := by decide
theorem secondLink155 : DerivedMapBatches.Batch014.certificate1138.algebra.mat = DerivedMapBatches.Batch014.certificate1139.b := by decide
theorem firstValid155 : DerivedMapBatches.Batch013.certificate1069.Valid := DerivedMapBatches.Batch013.certificate1069valid
theorem secondValid155 : DerivedMapBatches.Batch014.certificate1138.Valid := DerivedMapBatches.Batch014.certificate1138valid
theorem outputValid155 : DerivedMapBatches.Batch014.certificate1139.Valid := DerivedMapBatches.Batch014.certificate1139valid
theorem linkedComposition155 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1139.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1139.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1138.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1069.c x) := by
  rw [firstLink155, secondLink155]
  exact DerivedMapBatches.Batch014.certificate1139valid.2 x
theorem firstLink156 : DerivedMapBatches.Batch013.certificate1072.c = DerivedMapBatches.Batch014.certificate1141.a := by decide
theorem secondLink156 : DerivedMapBatches.Batch014.certificate1140.algebra.mat = DerivedMapBatches.Batch014.certificate1141.b := by decide
theorem firstValid156 : DerivedMapBatches.Batch013.certificate1072.Valid := DerivedMapBatches.Batch013.certificate1072valid
theorem secondValid156 : DerivedMapBatches.Batch014.certificate1140.Valid := DerivedMapBatches.Batch014.certificate1140valid
theorem outputValid156 : DerivedMapBatches.Batch014.certificate1141.Valid := DerivedMapBatches.Batch014.certificate1141valid
theorem linkedComposition156 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1141.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1141.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1140.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1072.c x) := by
  rw [firstLink156, secondLink156]
  exact DerivedMapBatches.Batch014.certificate1141valid.2 x
theorem firstLink157 : DerivedMapBatches.Batch013.certificate1075.c = DerivedMapBatches.Batch014.certificate1143.a := by decide
theorem secondLink157 : DerivedMapBatches.Batch014.certificate1142.algebra.mat = DerivedMapBatches.Batch014.certificate1143.b := by decide
theorem firstValid157 : DerivedMapBatches.Batch013.certificate1075.Valid := DerivedMapBatches.Batch013.certificate1075valid
theorem secondValid157 : DerivedMapBatches.Batch014.certificate1142.Valid := DerivedMapBatches.Batch014.certificate1142valid
theorem outputValid157 : DerivedMapBatches.Batch014.certificate1143.Valid := DerivedMapBatches.Batch014.certificate1143valid
theorem linkedComposition157 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1143.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1143.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1142.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1075.c x) := by
  rw [firstLink157, secondLink157]
  exact DerivedMapBatches.Batch014.certificate1143valid.2 x
theorem firstLink158 : DerivedMapBatches.Batch013.certificate1078.c = DerivedMapBatches.Batch014.certificate1145.a := by decide
theorem secondLink158 : DerivedMapBatches.Batch014.certificate1144.algebra.mat = DerivedMapBatches.Batch014.certificate1145.b := by decide
theorem firstValid158 : DerivedMapBatches.Batch013.certificate1078.Valid := DerivedMapBatches.Batch013.certificate1078valid
theorem secondValid158 : DerivedMapBatches.Batch014.certificate1144.Valid := DerivedMapBatches.Batch014.certificate1144valid
theorem outputValid158 : DerivedMapBatches.Batch014.certificate1145.Valid := DerivedMapBatches.Batch014.certificate1145valid
theorem linkedComposition158 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1145.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1145.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1144.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1078.c x) := by
  rw [firstLink158, secondLink158]
  exact DerivedMapBatches.Batch014.certificate1145valid.2 x
theorem firstLink159 : DerivedMapBatches.Batch013.certificate1081.c = DerivedMapBatches.Batch014.certificate1147.a := by decide
theorem secondLink159 : DerivedMapBatches.Batch014.certificate1146.algebra.mat = DerivedMapBatches.Batch014.certificate1147.b := by decide
theorem firstValid159 : DerivedMapBatches.Batch013.certificate1081.Valid := DerivedMapBatches.Batch013.certificate1081valid
theorem secondValid159 : DerivedMapBatches.Batch014.certificate1146.Valid := DerivedMapBatches.Batch014.certificate1146valid
theorem outputValid159 : DerivedMapBatches.Batch014.certificate1147.Valid := DerivedMapBatches.Batch014.certificate1147valid
theorem linkedComposition159 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1147.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1147.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1146.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1081.c x) := by
  rw [firstLink159, secondLink159]
  exact DerivedMapBatches.Batch014.certificate1147valid.2 x
theorem firstLink160 : DerivedMapBatches.Batch013.certificate1084.c = DerivedMapBatches.Batch014.certificate1149.a := by decide
theorem secondLink160 : DerivedMapBatches.Batch014.certificate1148.algebra.mat = DerivedMapBatches.Batch014.certificate1149.b := by decide
theorem firstValid160 : DerivedMapBatches.Batch013.certificate1084.Valid := DerivedMapBatches.Batch013.certificate1084valid
theorem secondValid160 : DerivedMapBatches.Batch014.certificate1148.Valid := DerivedMapBatches.Batch014.certificate1148valid
theorem outputValid160 : DerivedMapBatches.Batch014.certificate1149.Valid := DerivedMapBatches.Batch014.certificate1149valid
theorem linkedComposition160 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1149.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1149.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1148.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1084.c x) := by
  rw [firstLink160, secondLink160]
  exact DerivedMapBatches.Batch014.certificate1149valid.2 x
theorem firstLink161 : DerivedMapBatches.Batch013.certificate1087.c = DerivedMapBatches.Batch014.certificate1151.a := by decide
theorem secondLink161 : DerivedMapBatches.Batch014.certificate1150.algebra.mat = DerivedMapBatches.Batch014.certificate1151.b := by decide
theorem firstValid161 : DerivedMapBatches.Batch013.certificate1087.Valid := DerivedMapBatches.Batch013.certificate1087valid
theorem secondValid161 : DerivedMapBatches.Batch014.certificate1150.Valid := DerivedMapBatches.Batch014.certificate1150valid
theorem outputValid161 : DerivedMapBatches.Batch014.certificate1151.Valid := DerivedMapBatches.Batch014.certificate1151valid
theorem linkedComposition161 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1151.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1151.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1150.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1087.c x) := by
  rw [firstLink161, secondLink161]
  exact DerivedMapBatches.Batch014.certificate1151valid.2 x
theorem firstLink162 : DerivedMapBatches.Batch013.certificate1090.c = DerivedMapBatches.Batch014.certificate1153.a := by decide
theorem secondLink162 : DerivedMapBatches.Batch014.certificate1152.algebra.mat = DerivedMapBatches.Batch014.certificate1153.b := by decide
theorem firstValid162 : DerivedMapBatches.Batch013.certificate1090.Valid := DerivedMapBatches.Batch013.certificate1090valid
theorem secondValid162 : DerivedMapBatches.Batch014.certificate1152.Valid := DerivedMapBatches.Batch014.certificate1152valid
theorem outputValid162 : DerivedMapBatches.Batch014.certificate1153.Valid := DerivedMapBatches.Batch014.certificate1153valid
theorem linkedComposition162 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1153.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1153.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1152.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1090.c x) := by
  rw [firstLink162, secondLink162]
  exact DerivedMapBatches.Batch014.certificate1153valid.2 x
theorem firstLink163 : DerivedMapBatches.Batch013.certificate1093.c = DerivedMapBatches.Batch014.certificate1155.a := by decide
theorem secondLink163 : DerivedMapBatches.Batch014.certificate1154.algebra.mat = DerivedMapBatches.Batch014.certificate1155.b := by decide
theorem firstValid163 : DerivedMapBatches.Batch013.certificate1093.Valid := DerivedMapBatches.Batch013.certificate1093valid
theorem secondValid163 : DerivedMapBatches.Batch014.certificate1154.Valid := DerivedMapBatches.Batch014.certificate1154valid
theorem outputValid163 : DerivedMapBatches.Batch014.certificate1155.Valid := DerivedMapBatches.Batch014.certificate1155valid
theorem linkedComposition163 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1155.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1155.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1154.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1093.c x) := by
  rw [firstLink163, secondLink163]
  exact DerivedMapBatches.Batch014.certificate1155valid.2 x
theorem firstLink164 : DerivedMapBatches.Batch013.certificate1096.c = DerivedMapBatches.Batch014.certificate1157.a := by decide
theorem secondLink164 : DerivedMapBatches.Batch014.certificate1156.algebra.mat = DerivedMapBatches.Batch014.certificate1157.b := by decide
theorem firstValid164 : DerivedMapBatches.Batch013.certificate1096.Valid := DerivedMapBatches.Batch013.certificate1096valid
theorem secondValid164 : DerivedMapBatches.Batch014.certificate1156.Valid := DerivedMapBatches.Batch014.certificate1156valid
theorem outputValid164 : DerivedMapBatches.Batch014.certificate1157.Valid := DerivedMapBatches.Batch014.certificate1157valid
theorem linkedComposition164 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1157.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1157.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1156.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1096.c x) := by
  rw [firstLink164, secondLink164]
  exact DerivedMapBatches.Batch014.certificate1157valid.2 x
theorem firstLink165 : DerivedMapBatches.Batch013.certificate1099.c = DerivedMapBatches.Batch014.certificate1159.a := by decide
theorem secondLink165 : DerivedMapBatches.Batch014.certificate1158.algebra.mat = DerivedMapBatches.Batch014.certificate1159.b := by decide
theorem firstValid165 : DerivedMapBatches.Batch013.certificate1099.Valid := DerivedMapBatches.Batch013.certificate1099valid
theorem secondValid165 : DerivedMapBatches.Batch014.certificate1158.Valid := DerivedMapBatches.Batch014.certificate1158valid
theorem outputValid165 : DerivedMapBatches.Batch014.certificate1159.Valid := DerivedMapBatches.Batch014.certificate1159valid
theorem linkedComposition165 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1159.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1159.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1158.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1099.c x) := by
  rw [firstLink165, secondLink165]
  exact DerivedMapBatches.Batch014.certificate1159valid.2 x
theorem firstLink166 : DerivedMapBatches.Batch013.certificate1102.c = DerivedMapBatches.Batch014.certificate1161.a := by decide
theorem secondLink166 : DerivedMapBatches.Batch014.certificate1160.algebra.mat = DerivedMapBatches.Batch014.certificate1161.b := by decide
theorem firstValid166 : DerivedMapBatches.Batch013.certificate1102.Valid := DerivedMapBatches.Batch013.certificate1102valid
theorem secondValid166 : DerivedMapBatches.Batch014.certificate1160.Valid := DerivedMapBatches.Batch014.certificate1160valid
theorem outputValid166 : DerivedMapBatches.Batch014.certificate1161.Valid := DerivedMapBatches.Batch014.certificate1161valid
theorem linkedComposition166 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1161.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1161.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1160.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1102.c x) := by
  rw [firstLink166, secondLink166]
  exact DerivedMapBatches.Batch014.certificate1161valid.2 x
theorem firstLink167 : DerivedMapBatches.Batch013.certificate1105.c = DerivedMapBatches.Batch014.certificate1163.a := by decide
theorem secondLink167 : DerivedMapBatches.Batch014.certificate1162.algebra.mat = DerivedMapBatches.Batch014.certificate1163.b := by decide
theorem firstValid167 : DerivedMapBatches.Batch013.certificate1105.Valid := DerivedMapBatches.Batch013.certificate1105valid
theorem secondValid167 : DerivedMapBatches.Batch014.certificate1162.Valid := DerivedMapBatches.Batch014.certificate1162valid
theorem outputValid167 : DerivedMapBatches.Batch014.certificate1163.Valid := DerivedMapBatches.Batch014.certificate1163valid
theorem linkedComposition167 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1163.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1163.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1162.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1105.c x) := by
  rw [firstLink167, secondLink167]
  exact DerivedMapBatches.Batch014.certificate1163valid.2 x
theorem firstLink168 : DerivedMapBatches.Batch013.certificate1108.c = DerivedMapBatches.Batch014.certificate1165.a := by decide
theorem secondLink168 : DerivedMapBatches.Batch014.certificate1164.algebra.mat = DerivedMapBatches.Batch014.certificate1165.b := by decide
theorem firstValid168 : DerivedMapBatches.Batch013.certificate1108.Valid := DerivedMapBatches.Batch013.certificate1108valid
theorem secondValid168 : DerivedMapBatches.Batch014.certificate1164.Valid := DerivedMapBatches.Batch014.certificate1164valid
theorem outputValid168 : DerivedMapBatches.Batch014.certificate1165.Valid := DerivedMapBatches.Batch014.certificate1165valid
theorem linkedComposition168 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1165.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1165.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1164.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1108.c x) := by
  rw [firstLink168, secondLink168]
  exact DerivedMapBatches.Batch014.certificate1165valid.2 x
theorem firstLink169 : DerivedMapBatches.Batch013.certificate1111.c = DerivedMapBatches.Batch014.certificate1167.a := by decide
theorem secondLink169 : DerivedMapBatches.Batch014.certificate1166.algebra.mat = DerivedMapBatches.Batch014.certificate1167.b := by decide
theorem firstValid169 : DerivedMapBatches.Batch013.certificate1111.Valid := DerivedMapBatches.Batch013.certificate1111valid
theorem secondValid169 : DerivedMapBatches.Batch014.certificate1166.Valid := DerivedMapBatches.Batch014.certificate1166valid
theorem outputValid169 : DerivedMapBatches.Batch014.certificate1167.Valid := DerivedMapBatches.Batch014.certificate1167valid
theorem linkedComposition169 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1167.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1167.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1166.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1111.c x) := by
  rw [firstLink169, secondLink169]
  exact DerivedMapBatches.Batch014.certificate1167valid.2 x
theorem firstLink170 : DerivedMapBatches.Batch013.certificate1114.c = DerivedMapBatches.Batch014.certificate1169.a := by decide
theorem secondLink170 : DerivedMapBatches.Batch014.certificate1168.algebra.mat = DerivedMapBatches.Batch014.certificate1169.b := by decide
theorem firstValid170 : DerivedMapBatches.Batch013.certificate1114.Valid := DerivedMapBatches.Batch013.certificate1114valid
theorem secondValid170 : DerivedMapBatches.Batch014.certificate1168.Valid := DerivedMapBatches.Batch014.certificate1168valid
theorem outputValid170 : DerivedMapBatches.Batch014.certificate1169.Valid := DerivedMapBatches.Batch014.certificate1169valid
theorem linkedComposition170 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1169.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1169.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1168.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1114.c x) := by
  rw [firstLink170, secondLink170]
  exact DerivedMapBatches.Batch014.certificate1169valid.2 x
theorem firstLink171 : DerivedMapBatches.Batch013.certificate1117.c = DerivedMapBatches.Batch014.certificate1171.a := by decide
theorem secondLink171 : DerivedMapBatches.Batch014.certificate1170.algebra.mat = DerivedMapBatches.Batch014.certificate1171.b := by decide
theorem firstValid171 : DerivedMapBatches.Batch013.certificate1117.Valid := DerivedMapBatches.Batch013.certificate1117valid
theorem secondValid171 : DerivedMapBatches.Batch014.certificate1170.Valid := DerivedMapBatches.Batch014.certificate1170valid
theorem outputValid171 : DerivedMapBatches.Batch014.certificate1171.Valid := DerivedMapBatches.Batch014.certificate1171valid
theorem linkedComposition171 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1171.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1171.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1170.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1117.c x) := by
  rw [firstLink171, secondLink171]
  exact DerivedMapBatches.Batch014.certificate1171valid.2 x
theorem firstLink172 : DerivedMapBatches.Batch014.certificate1120.c = DerivedMapBatches.Batch014.certificate1173.a := by decide
theorem secondLink172 : DerivedMapBatches.Batch014.certificate1172.algebra.mat = DerivedMapBatches.Batch014.certificate1173.b := by decide
theorem firstValid172 : DerivedMapBatches.Batch014.certificate1120.Valid := DerivedMapBatches.Batch014.certificate1120valid
theorem secondValid172 : DerivedMapBatches.Batch014.certificate1172.Valid := DerivedMapBatches.Batch014.certificate1172valid
theorem outputValid172 : DerivedMapBatches.Batch014.certificate1173.Valid := DerivedMapBatches.Batch014.certificate1173valid
theorem linkedComposition172 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1173.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1173.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1172.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1120.c x) := by
  rw [firstLink172, secondLink172]
  exact DerivedMapBatches.Batch014.certificate1173valid.2 x
theorem firstLink173 : DerivedMapBatches.Batch014.certificate1123.c = DerivedMapBatches.Batch014.certificate1175.a := by decide
theorem secondLink173 : DerivedMapBatches.Batch014.certificate1174.algebra.mat = DerivedMapBatches.Batch014.certificate1175.b := by decide
theorem firstValid173 : DerivedMapBatches.Batch014.certificate1123.Valid := DerivedMapBatches.Batch014.certificate1123valid
theorem secondValid173 : DerivedMapBatches.Batch014.certificate1174.Valid := DerivedMapBatches.Batch014.certificate1174valid
theorem outputValid173 : DerivedMapBatches.Batch014.certificate1175.Valid := DerivedMapBatches.Batch014.certificate1175valid
theorem linkedComposition173 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1175.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1175.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1174.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1123.c x) := by
  rw [firstLink173, secondLink173]
  exact DerivedMapBatches.Batch014.certificate1175valid.2 x
theorem firstLink174 : DerivedMapBatches.Batch014.certificate1176.algebra.mat = DerivedMapBatches.Batch014.certificate1178.a := by decide
theorem secondLink174 : DerivedMapBatches.Batch014.certificate1177.algebra.mat = DerivedMapBatches.Batch014.certificate1178.b := by decide
theorem firstValid174 : DerivedMapBatches.Batch014.certificate1176.Valid := DerivedMapBatches.Batch014.certificate1176valid
theorem secondValid174 : DerivedMapBatches.Batch014.certificate1177.Valid := DerivedMapBatches.Batch014.certificate1177valid
theorem outputValid174 : DerivedMapBatches.Batch014.certificate1178.Valid := DerivedMapBatches.Batch014.certificate1178valid
theorem linkedComposition174 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1178.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1178.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1177.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1176.algebra.mat x) := by
  rw [firstLink174, secondLink174]
  exact DerivedMapBatches.Batch014.certificate1178valid.2 x
theorem firstLink175 : DerivedMapBatches.Batch014.certificate1179.algebra.mat = DerivedMapBatches.Batch014.certificate1181.a := by decide
theorem secondLink175 : DerivedMapBatches.Batch014.certificate1180.algebra.mat = DerivedMapBatches.Batch014.certificate1181.b := by decide
theorem firstValid175 : DerivedMapBatches.Batch014.certificate1179.Valid := DerivedMapBatches.Batch014.certificate1179valid
theorem secondValid175 : DerivedMapBatches.Batch014.certificate1180.Valid := DerivedMapBatches.Batch014.certificate1180valid
theorem outputValid175 : DerivedMapBatches.Batch014.certificate1181.Valid := DerivedMapBatches.Batch014.certificate1181valid
theorem linkedComposition175 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1181.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1181.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1180.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1179.algebra.mat x) := by
  rw [firstLink175, secondLink175]
  exact DerivedMapBatches.Batch014.certificate1181valid.2 x
theorem firstLink176 : DerivedMapBatches.Batch014.certificate1182.algebra.mat = DerivedMapBatches.Batch014.certificate1183.a := by decide
theorem secondLink176 : DerivedMapBatches.Batch011.certificate902.algebra.mat = DerivedMapBatches.Batch014.certificate1183.b := by decide
theorem firstValid176 : DerivedMapBatches.Batch014.certificate1182.Valid := DerivedMapBatches.Batch014.certificate1182valid
theorem secondValid176 : DerivedMapBatches.Batch011.certificate902.Valid := DerivedMapBatches.Batch011.certificate902valid
theorem outputValid176 : DerivedMapBatches.Batch014.certificate1183.Valid := DerivedMapBatches.Batch014.certificate1183valid
theorem linkedComposition176 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1183.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1183.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate902.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1182.algebra.mat x) := by
  rw [firstLink176, secondLink176]
  exact DerivedMapBatches.Batch014.certificate1183valid.2 x
theorem firstLink177 : DerivedMapBatches.Batch014.certificate1184.algebra.mat = DerivedMapBatches.Batch014.certificate1185.a := by decide
theorem secondLink177 : DerivedMapBatches.Batch011.certificate905.algebra.mat = DerivedMapBatches.Batch014.certificate1185.b := by decide
theorem firstValid177 : DerivedMapBatches.Batch014.certificate1184.Valid := DerivedMapBatches.Batch014.certificate1184valid
theorem secondValid177 : DerivedMapBatches.Batch011.certificate905.Valid := DerivedMapBatches.Batch011.certificate905valid
theorem outputValid177 : DerivedMapBatches.Batch014.certificate1185.Valid := DerivedMapBatches.Batch014.certificate1185valid
theorem linkedComposition177 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1185.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1185.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate905.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1184.algebra.mat x) := by
  rw [firstLink177, secondLink177]
  exact DerivedMapBatches.Batch014.certificate1185valid.2 x
theorem firstLink178 : DerivedMapBatches.Batch014.certificate1186.algebra.mat = DerivedMapBatches.Batch014.certificate1187.a := by decide
theorem secondLink178 : DerivedMapBatches.Batch011.certificate908.algebra.mat = DerivedMapBatches.Batch014.certificate1187.b := by decide
theorem firstValid178 : DerivedMapBatches.Batch014.certificate1186.Valid := DerivedMapBatches.Batch014.certificate1186valid
theorem secondValid178 : DerivedMapBatches.Batch011.certificate908.Valid := DerivedMapBatches.Batch011.certificate908valid
theorem outputValid178 : DerivedMapBatches.Batch014.certificate1187.Valid := DerivedMapBatches.Batch014.certificate1187valid
theorem linkedComposition178 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1187.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1187.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate908.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1186.algebra.mat x) := by
  rw [firstLink178, secondLink178]
  exact DerivedMapBatches.Batch014.certificate1187valid.2 x
theorem firstLink179 : DerivedMapBatches.Batch014.certificate1188.algebra.mat = DerivedMapBatches.Batch014.certificate1190.a := by decide
theorem secondLink179 : DerivedMapBatches.Batch014.certificate1189.algebra.mat = DerivedMapBatches.Batch014.certificate1190.b := by decide
theorem firstValid179 : DerivedMapBatches.Batch014.certificate1188.Valid := DerivedMapBatches.Batch014.certificate1188valid
theorem secondValid179 : DerivedMapBatches.Batch014.certificate1189.Valid := DerivedMapBatches.Batch014.certificate1189valid
theorem outputValid179 : DerivedMapBatches.Batch014.certificate1190.Valid := DerivedMapBatches.Batch014.certificate1190valid
theorem linkedComposition179 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1190.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1190.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1189.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1188.algebra.mat x) := by
  rw [firstLink179, secondLink179]
  exact DerivedMapBatches.Batch014.certificate1190valid.2 x
theorem firstLink180 : DerivedMapBatches.Batch014.certificate1191.algebra.mat = DerivedMapBatches.Batch014.certificate1192.a := by decide
theorem secondLink180 : DerivedMapBatches.Batch011.certificate914.algebra.mat = DerivedMapBatches.Batch014.certificate1192.b := by decide
theorem firstValid180 : DerivedMapBatches.Batch014.certificate1191.Valid := DerivedMapBatches.Batch014.certificate1191valid
theorem secondValid180 : DerivedMapBatches.Batch011.certificate914.Valid := DerivedMapBatches.Batch011.certificate914valid
theorem outputValid180 : DerivedMapBatches.Batch014.certificate1192.Valid := DerivedMapBatches.Batch014.certificate1192valid
theorem linkedComposition180 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1192.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1192.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate914.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1191.algebra.mat x) := by
  rw [firstLink180, secondLink180]
  exact DerivedMapBatches.Batch014.certificate1192valid.2 x
theorem firstLink181 : DerivedMapBatches.Batch014.certificate1193.algebra.mat = DerivedMapBatches.Batch014.certificate1195.a := by decide
theorem secondLink181 : DerivedMapBatches.Batch014.certificate1194.algebra.mat = DerivedMapBatches.Batch014.certificate1195.b := by decide
theorem firstValid181 : DerivedMapBatches.Batch014.certificate1193.Valid := DerivedMapBatches.Batch014.certificate1193valid
theorem secondValid181 : DerivedMapBatches.Batch014.certificate1194.Valid := DerivedMapBatches.Batch014.certificate1194valid
theorem outputValid181 : DerivedMapBatches.Batch014.certificate1195.Valid := DerivedMapBatches.Batch014.certificate1195valid
theorem linkedComposition181 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1195.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1195.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1194.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1193.algebra.mat x) := by
  rw [firstLink181, secondLink181]
  exact DerivedMapBatches.Batch014.certificate1195valid.2 x
theorem firstLink182 : DerivedMapBatches.Batch014.certificate1196.algebra.mat = DerivedMapBatches.Batch014.certificate1198.a := by decide
theorem secondLink182 : DerivedMapBatches.Batch014.certificate1197.algebra.mat = DerivedMapBatches.Batch014.certificate1198.b := by decide
theorem firstValid182 : DerivedMapBatches.Batch014.certificate1196.Valid := DerivedMapBatches.Batch014.certificate1196valid
theorem secondValid182 : DerivedMapBatches.Batch014.certificate1197.Valid := DerivedMapBatches.Batch014.certificate1197valid
theorem outputValid182 : DerivedMapBatches.Batch014.certificate1198.Valid := DerivedMapBatches.Batch014.certificate1198valid
theorem linkedComposition182 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1198.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1198.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1197.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1196.algebra.mat x) := by
  rw [firstLink182, secondLink182]
  exact DerivedMapBatches.Batch014.certificate1198valid.2 x
theorem firstLink183 : DerivedMapBatches.Batch014.certificate1199.algebra.mat = DerivedMapBatches.Batch015.certificate1200.a := by decide
theorem secondLink183 : DerivedMapBatches.Batch011.certificate920.algebra.mat = DerivedMapBatches.Batch015.certificate1200.b := by decide
theorem firstValid183 : DerivedMapBatches.Batch014.certificate1199.Valid := DerivedMapBatches.Batch014.certificate1199valid
theorem secondValid183 : DerivedMapBatches.Batch011.certificate920.Valid := DerivedMapBatches.Batch011.certificate920valid
theorem outputValid183 : DerivedMapBatches.Batch015.certificate1200.Valid := DerivedMapBatches.Batch015.certificate1200valid
theorem linkedComposition183 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1200.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1200.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate920.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1199.algebra.mat x) := by
  rw [firstLink183, secondLink183]
  exact DerivedMapBatches.Batch015.certificate1200valid.2 x
theorem firstLink184 : DerivedMapBatches.Batch015.certificate1201.algebra.mat = DerivedMapBatches.Batch015.certificate1202.a := by decide
theorem secondLink184 : DerivedMapBatches.Batch011.certificate923.algebra.mat = DerivedMapBatches.Batch015.certificate1202.b := by decide
theorem firstValid184 : DerivedMapBatches.Batch015.certificate1201.Valid := DerivedMapBatches.Batch015.certificate1201valid
theorem secondValid184 : DerivedMapBatches.Batch011.certificate923.Valid := DerivedMapBatches.Batch011.certificate923valid
theorem outputValid184 : DerivedMapBatches.Batch015.certificate1202.Valid := DerivedMapBatches.Batch015.certificate1202valid
theorem linkedComposition184 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1202.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1202.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate923.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1201.algebra.mat x) := by
  rw [firstLink184, secondLink184]
  exact DerivedMapBatches.Batch015.certificate1202valid.2 x
theorem firstLink185 : DerivedMapBatches.Batch015.certificate1203.algebra.mat = DerivedMapBatches.Batch015.certificate1205.a := by decide
theorem secondLink185 : DerivedMapBatches.Batch015.certificate1204.algebra.mat = DerivedMapBatches.Batch015.certificate1205.b := by decide
theorem firstValid185 : DerivedMapBatches.Batch015.certificate1203.Valid := DerivedMapBatches.Batch015.certificate1203valid
theorem secondValid185 : DerivedMapBatches.Batch015.certificate1204.Valid := DerivedMapBatches.Batch015.certificate1204valid
theorem outputValid185 : DerivedMapBatches.Batch015.certificate1205.Valid := DerivedMapBatches.Batch015.certificate1205valid
theorem linkedComposition185 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1205.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1205.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1204.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1203.algebra.mat x) := by
  rw [firstLink185, secondLink185]
  exact DerivedMapBatches.Batch015.certificate1205valid.2 x
theorem firstLink186 : DerivedMapBatches.Batch015.certificate1206.algebra.mat = DerivedMapBatches.Batch015.certificate1207.a := by decide
theorem secondLink186 : DerivedMapBatches.Batch011.certificate929.algebra.mat = DerivedMapBatches.Batch015.certificate1207.b := by decide
theorem firstValid186 : DerivedMapBatches.Batch015.certificate1206.Valid := DerivedMapBatches.Batch015.certificate1206valid
theorem secondValid186 : DerivedMapBatches.Batch011.certificate929.Valid := DerivedMapBatches.Batch011.certificate929valid
theorem outputValid186 : DerivedMapBatches.Batch015.certificate1207.Valid := DerivedMapBatches.Batch015.certificate1207valid
theorem linkedComposition186 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1207.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1207.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate929.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1206.algebra.mat x) := by
  rw [firstLink186, secondLink186]
  exact DerivedMapBatches.Batch015.certificate1207valid.2 x
theorem firstLink187 : DerivedMapBatches.Batch015.certificate1208.algebra.mat = DerivedMapBatches.Batch015.certificate1209.a := by decide
theorem secondLink187 : DerivedMapBatches.Batch011.certificate932.algebra.mat = DerivedMapBatches.Batch015.certificate1209.b := by decide
theorem firstValid187 : DerivedMapBatches.Batch015.certificate1208.Valid := DerivedMapBatches.Batch015.certificate1208valid
theorem secondValid187 : DerivedMapBatches.Batch011.certificate932.Valid := DerivedMapBatches.Batch011.certificate932valid
theorem outputValid187 : DerivedMapBatches.Batch015.certificate1209.Valid := DerivedMapBatches.Batch015.certificate1209valid
theorem linkedComposition187 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1209.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1209.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate932.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1208.algebra.mat x) := by
  rw [firstLink187, secondLink187]
  exact DerivedMapBatches.Batch015.certificate1209valid.2 x
theorem firstLink188 : DerivedMapBatches.Batch015.certificate1210.algebra.mat = DerivedMapBatches.Batch015.certificate1212.a := by decide
theorem secondLink188 : DerivedMapBatches.Batch015.certificate1211.algebra.mat = DerivedMapBatches.Batch015.certificate1212.b := by decide
theorem firstValid188 : DerivedMapBatches.Batch015.certificate1210.Valid := DerivedMapBatches.Batch015.certificate1210valid
theorem secondValid188 : DerivedMapBatches.Batch015.certificate1211.Valid := DerivedMapBatches.Batch015.certificate1211valid
theorem outputValid188 : DerivedMapBatches.Batch015.certificate1212.Valid := DerivedMapBatches.Batch015.certificate1212valid
theorem linkedComposition188 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1212.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1212.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1211.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1210.algebra.mat x) := by
  rw [firstLink188, secondLink188]
  exact DerivedMapBatches.Batch015.certificate1212valid.2 x
theorem firstLink189 : DerivedMapBatches.Batch015.certificate1213.algebra.mat = DerivedMapBatches.Batch015.certificate1214.a := by decide
theorem secondLink189 : DerivedMapBatches.Batch011.certificate935.algebra.mat = DerivedMapBatches.Batch015.certificate1214.b := by decide
theorem firstValid189 : DerivedMapBatches.Batch015.certificate1213.Valid := DerivedMapBatches.Batch015.certificate1213valid
theorem secondValid189 : DerivedMapBatches.Batch011.certificate935.Valid := DerivedMapBatches.Batch011.certificate935valid
theorem outputValid189 : DerivedMapBatches.Batch015.certificate1214.Valid := DerivedMapBatches.Batch015.certificate1214valid
theorem linkedComposition189 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1214.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1214.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate935.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1213.algebra.mat x) := by
  rw [firstLink189, secondLink189]
  exact DerivedMapBatches.Batch015.certificate1214valid.2 x
theorem firstLink190 : DerivedMapBatches.Batch015.certificate1215.algebra.mat = DerivedMapBatches.Batch015.certificate1217.a := by decide
theorem secondLink190 : DerivedMapBatches.Batch015.certificate1216.algebra.mat = DerivedMapBatches.Batch015.certificate1217.b := by decide
theorem firstValid190 : DerivedMapBatches.Batch015.certificate1215.Valid := DerivedMapBatches.Batch015.certificate1215valid
theorem secondValid190 : DerivedMapBatches.Batch015.certificate1216.Valid := DerivedMapBatches.Batch015.certificate1216valid
theorem outputValid190 : DerivedMapBatches.Batch015.certificate1217.Valid := DerivedMapBatches.Batch015.certificate1217valid
theorem linkedComposition190 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1217.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1217.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1216.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1215.algebra.mat x) := by
  rw [firstLink190, secondLink190]
  exact DerivedMapBatches.Batch015.certificate1217valid.2 x
theorem firstLink191 : DerivedMapBatches.Batch015.certificate1218.algebra.mat = DerivedMapBatches.Batch015.certificate1219.a := by decide
theorem secondLink191 : DerivedMapBatches.Batch011.certificate941.algebra.mat = DerivedMapBatches.Batch015.certificate1219.b := by decide
theorem firstValid191 : DerivedMapBatches.Batch015.certificate1218.Valid := DerivedMapBatches.Batch015.certificate1218valid
theorem secondValid191 : DerivedMapBatches.Batch011.certificate941.Valid := DerivedMapBatches.Batch011.certificate941valid
theorem outputValid191 : DerivedMapBatches.Batch015.certificate1219.Valid := DerivedMapBatches.Batch015.certificate1219valid
theorem linkedComposition191 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1219.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1219.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate941.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1218.algebra.mat x) := by
  rw [firstLink191, secondLink191]
  exact DerivedMapBatches.Batch015.certificate1219valid.2 x
theorem firstLink192 : DerivedMapBatches.Batch015.certificate1220.algebra.mat = DerivedMapBatches.Batch015.certificate1221.a := by decide
theorem secondLink192 : DerivedMapBatches.Batch011.certificate944.algebra.mat = DerivedMapBatches.Batch015.certificate1221.b := by decide
theorem firstValid192 : DerivedMapBatches.Batch015.certificate1220.Valid := DerivedMapBatches.Batch015.certificate1220valid
theorem secondValid192 : DerivedMapBatches.Batch011.certificate944.Valid := DerivedMapBatches.Batch011.certificate944valid
theorem outputValid192 : DerivedMapBatches.Batch015.certificate1221.Valid := DerivedMapBatches.Batch015.certificate1221valid
theorem linkedComposition192 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1221.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1221.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate944.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1220.algebra.mat x) := by
  rw [firstLink192, secondLink192]
  exact DerivedMapBatches.Batch015.certificate1221valid.2 x
theorem firstLink193 : DerivedMapBatches.Batch015.certificate1222.algebra.mat = DerivedMapBatches.Batch015.certificate1224.a := by decide
theorem secondLink193 : DerivedMapBatches.Batch015.certificate1223.algebra.mat = DerivedMapBatches.Batch015.certificate1224.b := by decide
theorem firstValid193 : DerivedMapBatches.Batch015.certificate1222.Valid := DerivedMapBatches.Batch015.certificate1222valid
theorem secondValid193 : DerivedMapBatches.Batch015.certificate1223.Valid := DerivedMapBatches.Batch015.certificate1223valid
theorem outputValid193 : DerivedMapBatches.Batch015.certificate1224.Valid := DerivedMapBatches.Batch015.certificate1224valid
theorem linkedComposition193 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1224.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1224.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1223.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1222.algebra.mat x) := by
  rw [firstLink193, secondLink193]
  exact DerivedMapBatches.Batch015.certificate1224valid.2 x
theorem firstLink194 : DerivedMapBatches.Batch015.certificate1225.algebra.mat = DerivedMapBatches.Batch015.certificate1227.a := by decide
theorem secondLink194 : DerivedMapBatches.Batch015.certificate1226.algebra.mat = DerivedMapBatches.Batch015.certificate1227.b := by decide
theorem firstValid194 : DerivedMapBatches.Batch015.certificate1225.Valid := DerivedMapBatches.Batch015.certificate1225valid
theorem secondValid194 : DerivedMapBatches.Batch015.certificate1226.Valid := DerivedMapBatches.Batch015.certificate1226valid
theorem outputValid194 : DerivedMapBatches.Batch015.certificate1227.Valid := DerivedMapBatches.Batch015.certificate1227valid
theorem linkedComposition194 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1227.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1227.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1226.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1225.algebra.mat x) := by
  rw [firstLink194, secondLink194]
  exact DerivedMapBatches.Batch015.certificate1227valid.2 x
theorem firstLink195 : DerivedMapBatches.Batch015.certificate1228.algebra.mat = DerivedMapBatches.Batch015.certificate1229.a := by decide
theorem secondLink195 : DerivedMapBatches.Batch011.certificate950.algebra.mat = DerivedMapBatches.Batch015.certificate1229.b := by decide
theorem firstValid195 : DerivedMapBatches.Batch015.certificate1228.Valid := DerivedMapBatches.Batch015.certificate1228valid
theorem secondValid195 : DerivedMapBatches.Batch011.certificate950.Valid := DerivedMapBatches.Batch011.certificate950valid
theorem outputValid195 : DerivedMapBatches.Batch015.certificate1229.Valid := DerivedMapBatches.Batch015.certificate1229valid
theorem linkedComposition195 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1229.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1229.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate950.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1228.algebra.mat x) := by
  rw [firstLink195, secondLink195]
  exact DerivedMapBatches.Batch015.certificate1229valid.2 x
theorem firstLink196 : DerivedMapBatches.Batch015.certificate1230.algebra.mat = DerivedMapBatches.Batch015.certificate1231.a := by decide
theorem secondLink196 : DerivedMapBatches.Batch011.certificate953.algebra.mat = DerivedMapBatches.Batch015.certificate1231.b := by decide
theorem firstValid196 : DerivedMapBatches.Batch015.certificate1230.Valid := DerivedMapBatches.Batch015.certificate1230valid
theorem secondValid196 : DerivedMapBatches.Batch011.certificate953.Valid := DerivedMapBatches.Batch011.certificate953valid
theorem outputValid196 : DerivedMapBatches.Batch015.certificate1231.Valid := DerivedMapBatches.Batch015.certificate1231valid
theorem linkedComposition196 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1231.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1231.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate953.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1230.algebra.mat x) := by
  rw [firstLink196, secondLink196]
  exact DerivedMapBatches.Batch015.certificate1231valid.2 x
theorem firstLink197 : DerivedMapBatches.Batch015.certificate1232.algebra.mat = DerivedMapBatches.Batch015.certificate1234.a := by decide
theorem secondLink197 : DerivedMapBatches.Batch015.certificate1233.algebra.mat = DerivedMapBatches.Batch015.certificate1234.b := by decide
theorem firstValid197 : DerivedMapBatches.Batch015.certificate1232.Valid := DerivedMapBatches.Batch015.certificate1232valid
theorem secondValid197 : DerivedMapBatches.Batch015.certificate1233.Valid := DerivedMapBatches.Batch015.certificate1233valid
theorem outputValid197 : DerivedMapBatches.Batch015.certificate1234.Valid := DerivedMapBatches.Batch015.certificate1234valid
theorem linkedComposition197 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1234.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1234.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1233.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1232.algebra.mat x) := by
  rw [firstLink197, secondLink197]
  exact DerivedMapBatches.Batch015.certificate1234valid.2 x
theorem firstLink198 : DerivedMapBatches.Batch015.certificate1235.algebra.mat = DerivedMapBatches.Batch015.certificate1236.a := by decide
theorem secondLink198 : DerivedMapBatches.Batch011.certificate956.algebra.mat = DerivedMapBatches.Batch015.certificate1236.b := by decide
theorem firstValid198 : DerivedMapBatches.Batch015.certificate1235.Valid := DerivedMapBatches.Batch015.certificate1235valid
theorem secondValid198 : DerivedMapBatches.Batch011.certificate956.Valid := DerivedMapBatches.Batch011.certificate956valid
theorem outputValid198 : DerivedMapBatches.Batch015.certificate1236.Valid := DerivedMapBatches.Batch015.certificate1236valid
theorem linkedComposition198 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1236.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1236.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate956.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1235.algebra.mat x) := by
  rw [firstLink198, secondLink198]
  exact DerivedMapBatches.Batch015.certificate1236valid.2 x
theorem firstLink199 : DerivedMapBatches.Batch015.certificate1237.algebra.mat = DerivedMapBatches.Batch015.certificate1238.a := by decide
theorem secondLink199 : DerivedMapBatches.Batch011.certificate959.algebra.mat = DerivedMapBatches.Batch015.certificate1238.b := by decide
theorem firstValid199 : DerivedMapBatches.Batch015.certificate1237.Valid := DerivedMapBatches.Batch015.certificate1237valid
theorem secondValid199 : DerivedMapBatches.Batch011.certificate959.Valid := DerivedMapBatches.Batch011.certificate959valid
theorem outputValid199 : DerivedMapBatches.Batch015.certificate1238.Valid := DerivedMapBatches.Batch015.certificate1238valid
theorem linkedComposition199 (x : LinearCertificates.Vec DerivedMapBatches.Batch015.certificate1238.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1238.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate959.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1237.algebra.mat x) := by
  rw [firstLink199, secondLink199]
  exact DerivedMapBatches.Batch015.certificate1238valid.2 x
end DerivedLinkageBatches.Batch003
