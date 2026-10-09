import GenericComponentT8.Sliced.Verified
namespace GenericComponentT8
open ExtComplexCertificates.GenericFreeComplex
abbrev bundle := Sliced.bundle
theorem valid : bundle.Valid := Sliced.valid
theorem square_zero : (differential bundle.data).comp (differential bundle.data) = 0 := valid.2.2.2.2.2.2.2
#print axioms valid
end GenericComponentT8
