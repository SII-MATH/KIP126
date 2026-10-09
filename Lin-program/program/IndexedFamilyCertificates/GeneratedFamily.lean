import IndexedFamilyCertificates.Import
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace IndexedFamilyCertificates.Generated
def family : Family := family_input% "IndexedFamilyProducer/family.json"
theorem family_length : family.length = 336 := by decide
theorem family_unique : UniqueKeys family := by decide
end IndexedFamilyCertificates.Generated
