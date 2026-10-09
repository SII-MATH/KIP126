import AggregateLeibniz3564Conditional.Source
import IndexedFamilyCertificates.Results
import IndexedFamilyCertificates.Coherence
namespace Row3992BranchCertificates.Imports
open PageTransitionCertificates IndexedFamilyCertificates
open AggregateTargetInventory.EventAudit
def comparison000 : WireComparison := page_comparison% "Row3992BranchCertificates/comparison000.json"
def finite000 : Executable.Wire := finite_event% "Row3992BranchCertificates/finite000.json"
def indexed000 : Indexed.Wire := indexed_event% "Row3992BranchCertificates/indexed000.json"
def family000 : Family := family_input% "Row3992BranchCertificates/family000.json"
def bound000 : BoundWire := bound_event% "Row3992BranchCertificates/bound000.json"
def comparison001 : WireComparison := page_comparison% "Row3992BranchCertificates/comparison001.json"
def finite001 : Executable.Wire := finite_event% "Row3992BranchCertificates/finite001.json"
def indexed001 : Indexed.Wire := indexed_event% "Row3992BranchCertificates/indexed001.json"
def family001 : Family := family_input% "Row3992BranchCertificates/family001.json"
def bound001 : BoundWire := bound_event% "Row3992BranchCertificates/bound001.json"
def comparison010 : WireComparison := page_comparison% "Row3992BranchCertificates/comparison010.json"
def finite010 : Executable.Wire := finite_event% "Row3992BranchCertificates/finite010.json"
def indexed010 : Indexed.Wire := indexed_event% "Row3992BranchCertificates/indexed010.json"
def family010 : Family := family_input% "Row3992BranchCertificates/family010.json"
def bound010 : BoundWire := bound_event% "Row3992BranchCertificates/bound010.json"
def comparison011 : WireComparison := page_comparison% "Row3992BranchCertificates/comparison011.json"
def finite011 : Executable.Wire := finite_event% "Row3992BranchCertificates/finite011.json"
def indexed011 : Indexed.Wire := indexed_event% "Row3992BranchCertificates/indexed011.json"
def family011 : Family := family_input% "Row3992BranchCertificates/family011.json"
def bound011 : BoundWire := bound_event% "Row3992BranchCertificates/bound011.json"
def comparison100 : WireComparison := page_comparison% "Row3992BranchCertificates/comparison100.json"
def finite100 : Executable.Wire := finite_event% "Row3992BranchCertificates/finite100.json"
def indexed100 : Indexed.Wire := indexed_event% "Row3992BranchCertificates/indexed100.json"
def family100 : Family := family_input% "Row3992BranchCertificates/family100.json"
def bound100 : BoundWire := bound_event% "Row3992BranchCertificates/bound100.json"
def comparison101 : WireComparison := page_comparison% "Row3992BranchCertificates/comparison101.json"
def finite101 : Executable.Wire := finite_event% "Row3992BranchCertificates/finite101.json"
def indexed101 : Indexed.Wire := indexed_event% "Row3992BranchCertificates/indexed101.json"
def family101 : Family := family_input% "Row3992BranchCertificates/family101.json"
def bound101 : BoundWire := bound_event% "Row3992BranchCertificates/bound101.json"
def comparison110 : WireComparison := page_comparison% "Row3992BranchCertificates/comparison110.json"
def finite110 : Executable.Wire := finite_event% "Row3992BranchCertificates/finite110.json"
def indexed110 : Indexed.Wire := indexed_event% "Row3992BranchCertificates/indexed110.json"
def family110 : Family := family_input% "Row3992BranchCertificates/family110.json"
def bound110 : BoundWire := bound_event% "Row3992BranchCertificates/bound110.json"
def comparison111 : WireComparison := page_comparison% "Row3992BranchCertificates/comparison111.json"
def finite111 : Executable.Wire := finite_event% "Row3992BranchCertificates/finite111.json"
def indexed111 : Indexed.Wire := indexed_event% "Row3992BranchCertificates/indexed111.json"
def family111 : Family := family_input% "Row3992BranchCertificates/family111.json"
def bound111 : BoundWire := bound_event% "Row3992BranchCertificates/bound111.json"
def comparison (b c d : Bool) : WireComparison :=
  match b,c,d with
  | false,false,false => comparison000
  | false,false,true => comparison001
  | false,true,false => comparison010
  | false,true,true => comparison011
  | true,false,false => comparison100
  | true,false,true => comparison101
  | true,true,false => comparison110
  | true,true,true => comparison111
def finite (b c d : Bool) : Executable.Wire :=
  match b,c,d with
  | false,false,false => finite000
  | false,false,true => finite001
  | false,true,false => finite010
  | false,true,true => finite011
  | true,false,false => finite100
  | true,false,true => finite101
  | true,true,false => finite110
  | true,true,true => finite111
def indexed (b c d : Bool) : Indexed.Wire :=
  match b,c,d with
  | false,false,false => indexed000
  | false,false,true => indexed001
  | false,true,false => indexed010
  | false,true,true => indexed011
  | true,false,false => indexed100
  | true,false,true => indexed101
  | true,true,false => indexed110
  | true,true,true => indexed111
def family (b c d : Bool) : Family :=
  match b,c,d with
  | false,false,false => family000
  | false,false,true => family001
  | false,true,false => family010
  | false,true,true => family011
  | true,false,false => family100
  | true,false,true => family101
  | true,true,false => family110
  | true,true,true => family111
def bound (b c d : Bool) : BoundWire :=
  match b,c,d with
  | false,false,false => bound000
  | false,false,true => bound001
  | false,true,false => bound010
  | false,true,true => bound011
  | true,false,false => bound100
  | true,false,true => bound101
  | true,true,false => bound110
  | true,true,true => bound111
end Row3992BranchCertificates.Imports
