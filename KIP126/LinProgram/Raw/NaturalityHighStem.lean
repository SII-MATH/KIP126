import KIP126.LinProgram.Raw.Data
import KIP126.LinProgram.Generated.Differentials.Shard057

/-! Lossless native records for the conditional top-cell replay 462481.
The adjacent source 462480 itself has reason N. Neither that reason nor
adjacency supplies a differential theorem. The actual Ceta-to-sphere map
has suspension shift two. -/
namespace KIP126.Computation.LinProofs.Raw.NaturalityHighStem

def source462480Full : LogRow where
  id := 462480
  depth := some 0
  reason := some "N"
  name := some "Ceta"
  stem := some 125
  s := some 15
  t := some 140
  r := some 3
  x := some "1"
  dx := some "0"
  info := some "CW_nu_eta__Ceta"

def output462481Full : LogRow where
  id := 462481
  depth := some 0
  reason := some "N"
  name := some "S0"
  stem := some 123
  s := some 15
  t := some 138
  r := some 3
  x := some "2"
  dx := some "2"
  info := some "Ceta__S0"

/-- The native sphere output retains the exact local coordinates. -/
def output462481 : DifferentialRow := ⟨462481, "N", 15, 138, 3, [2], [2]⟩

set_option maxRecDepth 4096 in
theorem output462481_in_export :
    RawData.shard57[55]? = some output462481 := rfl

def mapSuspension : Int := 2

theorem native_source_degree_shift :
    source462480Full.s = output462481Full.s ∧
      source462480Full.t.map (· - mapSuspension) = output462481Full.t := by
  decide

end KIP126.Computation.LinProofs.Raw.NaturalityHighStem
