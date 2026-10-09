import IndexedFamilyCertificates.Import
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace IndexedHighD2Certificates
open IndexedFamilyCertificates
def family : Family := family_input% "IndexedFamilyProducer/HighD2/family.json"
theorem family_length : family.length = 351 := by decide
theorem family_unique : UniqueKeys family := by decide
end IndexedHighD2Certificates
