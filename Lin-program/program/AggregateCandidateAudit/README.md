# Two-candidate row2574 completion probe

This numerical prototype tests both candidate values established by
Row2574Detector.Additional.Combined: E3 coordinates (0,0,1) and (0,1,1).
The complete target d2 inclusion identifies their raw E2 representatives
as local3 and local2+3 respectively. The aggregate staircase quotient
basis is different: the corresponding aggregate columns are (0,1,0)
and (1,1,0). The probe projects raw representatives into that basis,
and review.py checks both coordinate conventions explicitly. Only the exact unresolved tuple
S0(6,132),d3,row2574,base0,NULL,level9997 is completed; existing conditional
D4 overrides and all other unknowns are retained.

Both branches produce 334 complete comparison blocks, compared to331 in
AggregateD4Conditional. The added blocks are S0(6,132)d3, S0(6,132)d4 and
S0(10,135)d4. All331 old blocks remain identical. Only the first added
block differs between branches; both branches give its quotient dimension0.

Neither branch completes a new event: each still has88 finite nonzero
events and13 unresolved events. Events2696/2697 remain blocked by unknown
row2695 at S0(9,134)d3 (target dimension1). Event2852 remains blocked by
unknown row3147 at S0(16,140)d3 (target dimension2). Consequently this
probe does not establish an additional universally valid event result.
It also does not select one of the two row2574 values.

`prototype.py` runs the existing numerical construction in an isolated
namespace and saves both branch data files plus counts/failure provenance.
It never writes old inputs or Lean modules. `review.py` independently checks
all668 complete comparison identities, exact inserted candidate columns,
and unchanged old data. Both scripts passed. These branch outputs are
exploration artifacts, not Lean-certified universal event theorems; the
candidate restriction retains the explicit semantic hypotheses documented
in Row2574Detector/Additional.
