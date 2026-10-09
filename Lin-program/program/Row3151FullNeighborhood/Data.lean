import Row3152BranchCertificates.Semantics
import IndexedFamilyCertificates.Results
import IndexedFamilyCertificates.Coherence
namespace Row3151FullNeighborhood.Data
open PageTransitionCertificates IndexedFamilyCertificates AggregateTargetInventory.EventAudit
def incomingD3000 : WireComparison := page_comparison% "Row3151FullNeighborhood/incomingD3000.json"
def incomingD4000 : WireComparison := page_comparison% "Row3151FullNeighborhood/incomingD4000.json"
def event000 : WireComparison := page_comparison% "Row3151FullNeighborhood/event000.json"
def targetD4000 : WireComparison := page_comparison% "Row3151FullNeighborhood/targetD4000.json"
def finite000 : Executable.Wire := finite_event% "Row3151FullNeighborhood/finite000.json"
def indexed000 : Indexed.Wire := indexed_event% "Row3151FullNeighborhood/indexed000.json"
def family000 : Family := family_input% "Row3151FullNeighborhood/family000.json"
def bound000 : BoundWire := bound_event% "Row3151FullNeighborhood/bound000.json"
def incomingD3001 : WireComparison := page_comparison% "Row3151FullNeighborhood/incomingD3001.json"
def incomingD4001 : WireComparison := page_comparison% "Row3151FullNeighborhood/incomingD4001.json"
def event001 : WireComparison := page_comparison% "Row3151FullNeighborhood/event001.json"
def targetD4001 : WireComparison := page_comparison% "Row3151FullNeighborhood/targetD4001.json"
def finite001 : Executable.Wire := finite_event% "Row3151FullNeighborhood/finite001.json"
def indexed001 : Indexed.Wire := indexed_event% "Row3151FullNeighborhood/indexed001.json"
def family001 : Family := family_input% "Row3151FullNeighborhood/family001.json"
def bound001 : BoundWire := bound_event% "Row3151FullNeighborhood/bound001.json"
def incomingD3010 : WireComparison := page_comparison% "Row3151FullNeighborhood/incomingD3010.json"
def incomingD4010 : WireComparison := page_comparison% "Row3151FullNeighborhood/incomingD4010.json"
def event010 : WireComparison := page_comparison% "Row3151FullNeighborhood/event010.json"
def targetD4010 : WireComparison := page_comparison% "Row3151FullNeighborhood/targetD4010.json"
def finite010 : Executable.Wire := finite_event% "Row3151FullNeighborhood/finite010.json"
def indexed010 : Indexed.Wire := indexed_event% "Row3151FullNeighborhood/indexed010.json"
def family010 : Family := family_input% "Row3151FullNeighborhood/family010.json"
def bound010 : BoundWire := bound_event% "Row3151FullNeighborhood/bound010.json"
def incomingD3011 : WireComparison := page_comparison% "Row3151FullNeighborhood/incomingD3011.json"
def incomingD4011 : WireComparison := page_comparison% "Row3151FullNeighborhood/incomingD4011.json"
def event011 : WireComparison := page_comparison% "Row3151FullNeighborhood/event011.json"
def targetD4011 : WireComparison := page_comparison% "Row3151FullNeighborhood/targetD4011.json"
def finite011 : Executable.Wire := finite_event% "Row3151FullNeighborhood/finite011.json"
def indexed011 : Indexed.Wire := indexed_event% "Row3151FullNeighborhood/indexed011.json"
def family011 : Family := family_input% "Row3151FullNeighborhood/family011.json"
def bound011 : BoundWire := bound_event% "Row3151FullNeighborhood/bound011.json"
def incomingD3100 : WireComparison := page_comparison% "Row3151FullNeighborhood/incomingD3100.json"
def incomingD4100 : WireComparison := page_comparison% "Row3151FullNeighborhood/incomingD4100.json"
def event100 : WireComparison := page_comparison% "Row3151FullNeighborhood/event100.json"
def targetD4100 : WireComparison := page_comparison% "Row3151FullNeighborhood/targetD4100.json"
def finite100 : Executable.Wire := finite_event% "Row3151FullNeighborhood/finite100.json"
def indexed100 : Indexed.Wire := indexed_event% "Row3151FullNeighborhood/indexed100.json"
def family100 : Family := family_input% "Row3151FullNeighborhood/family100.json"
def bound100 : BoundWire := bound_event% "Row3151FullNeighborhood/bound100.json"
def incomingD3110 : WireComparison := page_comparison% "Row3151FullNeighborhood/incomingD3110.json"
def incomingD4110 : WireComparison := page_comparison% "Row3151FullNeighborhood/incomingD4110.json"
def event110 : WireComparison := page_comparison% "Row3151FullNeighborhood/event110.json"
def targetD4110 : WireComparison := page_comparison% "Row3151FullNeighborhood/targetD4110.json"
def finite110 : Executable.Wire := finite_event% "Row3151FullNeighborhood/finite110.json"
def indexed110 : Indexed.Wire := indexed_event% "Row3151FullNeighborhood/indexed110.json"
def family110 : Family := family_input% "Row3151FullNeighborhood/family110.json"
def bound110 : BoundWire := bound_event% "Row3151FullNeighborhood/bound110.json"
def incomingD3 (a b q : Bool) : WireComparison :=
  if a then if b then incomingD3110 else incomingD3100
  else if b then if q then incomingD3011 else incomingD3010
  else if q then incomingD3001 else incomingD3000
def incomingD4 (a b q : Bool) : WireComparison :=
  if a then if b then incomingD4110 else incomingD4100
  else if b then if q then incomingD4011 else incomingD4010
  else if q then incomingD4001 else incomingD4000
def event (a b q : Bool) : WireComparison :=
  if a then if b then event110 else event100
  else if b then if q then event011 else event010
  else if q then event001 else event000
def targetD4 (a b q : Bool) : WireComparison :=
  if a then if b then targetD4110 else targetD4100
  else if b then if q then targetD4011 else targetD4010
  else if q then targetD4001 else targetD4000
def finite (a b q : Bool) : Executable.Wire :=
  if a then if b then finite110 else finite100
  else if b then if q then finite011 else finite010
  else if q then finite001 else finite000
def indexed (a b q : Bool) : Indexed.Wire :=
  if a then if b then indexed110 else indexed100
  else if b then if q then indexed011 else indexed010
  else if q then indexed001 else indexed000
def family (a b q : Bool) : Family :=
  if a then if b then family110 else family100
  else if b then if q then family011 else family010
  else if q then family001 else family000
def bound (a b q : Bool) : BoundWire :=
  if a then if b then bound110 else bound100
  else if b then if q then bound011 else bound010
  else if q then bound001 else bound000
end Row3151FullNeighborhood.Data
