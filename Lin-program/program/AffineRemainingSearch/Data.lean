import PageTransitionCertificates.Import
import AggregateTargetInventory.EventAudit.Executable
import Row2574Detector.Additional.Combined
namespace AffineRemainingSearch.Data
open PageTransitionCertificates
def branch0 : WireComparison := page_comparison% "AffineRemainingSearch/branch2574-0.json"
theorem branch0_checked : branch0.Valid := by lin_cert using ()
def branch1 : WireComparison := page_comparison% "AffineRemainingSearch/branch2574-1.json"
theorem branch1_checked : branch1.Valid := by lin_cert using ()
def choice0 : WireComparison := page_comparison% "AffineRemainingSearch/branch2708-0.json"
theorem choice0_checked : choice0.Valid := by lin_cert using ()
def choice1 : WireComparison := page_comparison% "AffineRemainingSearch/branch2708-1.json"
theorem choice1_checked : choice1.Valid := by lin_cert using ()
def d2source2697 : WireComparison := page_comparison% "AffineRemainingSearch/d2source2697.json"
theorem d2source2697_checked : d2source2697.Valid := by lin_cert using ()
def d2target2697 : WireComparison := page_comparison% "AffineRemainingSearch/d2target2697.json"
theorem d2target2697_checked : d2target2697.Valid := by lin_cert using ()
def d2source2708 : WireComparison := page_comparison% "AffineRemainingSearch/d2source2708.json"
theorem d2source2708_checked : d2source2708.Valid := by lin_cert using ()
def d2target2708 : WireComparison := page_comparison% "AffineRemainingSearch/d2target2708.json"
theorem d2target2708_checked : d2target2708.Valid := by lin_cert using ()
def event0 : AggregateTargetInventory.EventAudit.Executable.Wire := finite_event% "AffineRemainingSearch/event2697-branch0.json"
theorem event0_valid : event0.Valid := by lin_cert using ()
theorem event0_comparison : event0.event = branch0 := rfl
theorem event0_source : (event0.sourceStages[0]).wire = d2source2697 := rfl
theorem event0_target : (event0.targetStages[0]).wire = d2target2697 := rfl
def event1 : AggregateTargetInventory.EventAudit.Executable.Wire := finite_event% "AffineRemainingSearch/event2697-branch1.json"
theorem event1_valid : event1.Valid := by lin_cert using ()
theorem event1_comparison : event1.event = branch1 := rfl
theorem event1_source : (event1.sourceStages[0]).wire = d2source2697 := rfl
theorem event1_target : (event1.targetStages[0]).wire = d2target2697 := rfl
end AffineRemainingSearch.Data
