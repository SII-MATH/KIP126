import AffineRemainingSearch.Links
namespace AffineRemainingSearch.Tests
open LinearCertificates PageTransitionCertificates Data Branches
open AggregateTargetInventory.EventAudit

example : checkWire { branch0 with h := 2 } = false := by decide
example : checkWire { branch1 with incoming := [false,true,false] } = false := by decide
example : Executable.check { event0 with target := [false] } = false := by decide
example : Executable.check { event1 with rawSource := [false,false,true,false,false] } = false := by decide

example : eval (witness false).projection named2696 = zero := by decide
example : eval (witness true).projection named2696 ≠ zero := by decide
end AffineRemainingSearch.Tests
