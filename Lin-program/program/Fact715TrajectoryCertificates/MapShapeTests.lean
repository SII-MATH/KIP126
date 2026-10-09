import Fact715TrajectoryCertificates.MapImported
namespace Fact715TrajectoryCertificates
open MapImport MapImported
example : ({ basis5159 with input := ⟨[],4294967295⟩ } : Wire).shape = false := by decide
example : ({ basis5159 with input := ⟨[4294967295],5⟩ } : Wire).shape = false := by decide
example : ({ basis5159 with output := [[4294967295]] } : Wire).shape = false := by decide
example : ({ basis5159 with targetT := basis5159.targetT - 2 } : Wire).shape = false := by decide
end Fact715TrajectoryCertificates
