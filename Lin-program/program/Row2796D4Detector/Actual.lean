import Row2796D4Detector.Shifted
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace Row2796D4Detector.Actual
open Row2796D4Detector.Shifted LinProgramCertificates
def m7_135 : Wire := row2796_shifted% "Row2796D4Detector/wire/s7t135.json"
theorem m7_135_valid : m7_135.Valid := by lin_cert using ()
def m9_136 : Wire := row2796_shifted% "Row2796D4Detector/wire/s9t136.json"
theorem m9_136_valid : m9_136.Valid := by lin_cert using ()
def m11_137 : Wire := row2796_shifted% "Row2796D4Detector/wire/s11t137.json"
theorem m11_137_valid : m11_137.Valid := by lin_cert using ()
def m10_137 : Wire := row2796_shifted% "Row2796D4Detector/wire/s10t137.json"
theorem m10_137_valid : m10_137.Valid := by lin_cert using ()
def m12_138 : Wire := row2796_shifted% "Row2796D4Detector/wire/s12t138.json"
theorem m12_138_valid : m12_138.Valid := by lin_cert using ()
def m14_139 : Wire := row2796_shifted% "Row2796D4Detector/wire/s14t139.json"
theorem m14_139_valid : m14_139.Valid := by lin_cert using ()
def m13_139 : Wire := row2796_shifted% "Row2796D4Detector/wire/s13t139.json"
theorem m13_139_valid : m13_139.Valid := by lin_cert using ()
def m15_140 : Wire := row2796_shifted% "Row2796D4Detector/wire/s15t140.json"
theorem m15_140_valid : m15_140.Valid := by lin_cert using ()
def m17_141 : Wire := row2796_shifted% "Row2796D4Detector/wire/s17t141.json"
theorem m17_141_valid : m17_141.Valid := by lin_cert using ()
def m6_134 : Wire := row2796_shifted% "Row2796D4Detector/wire/s6t134.json"
theorem m6_134_valid : m6_134.Valid := by lin_cert using ()
def m8_135 : Wire := row2796_shifted% "Row2796D4Detector/wire/s8t135.json"
theorem m8_135_valid : m8_135.Valid := by lin_cert using ()
def m10_136 : Wire := row2796_shifted% "Row2796D4Detector/wire/s10t136.json"
theorem m10_136_valid : m10_136.Valid := by lin_cert using ()
end Row2796D4Detector.Actual
