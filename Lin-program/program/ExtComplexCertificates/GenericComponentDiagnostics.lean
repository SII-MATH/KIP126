import ExtComplexCertificates.GenericComponentExactness

namespace ExtComplexCertificates.GenericFreeComplex
open MilnorCertificates

def diagnoseArrow (d : Data rank n) (s t : Nat) (a : WireArrow) : List String := Id.run do
  let mut errors := []
  if a.version != 1 then errors := errors ++ ["version mismatch"]
  if a.rank != rank || a.n != n then errors := errors ++ ["rank/generator-count mismatch"]
  if a.sourceS != s+1 || a.targetS != s || a.t != t || a.targetKind != "component" then
    errors := errors ++ ["arrow bidegree/targetKind mismatch"]
  if a.source != wireBasis d (s+1) t then errors := errors ++ ["source coordinates incomplete or wrong order"]
  if a.target != wireBasis d s t then errors := errors ++ ["target coordinates incomplete or wrong order"]
  if a.products.length != a.source.length*n then errors := errors ++ ["products dimension mismatch"]
  if a.witnesses.length != a.source.length*n then errors := errors ++ ["witnesses dimension mismatch"]
  if a.entries.length != a.target.length*a.source.length then errors := errors ++ ["entries dimension mismatch"]
  if !checkArrowShape d s t a then return errors
  let c := a.certificate d s t
  for j in List.finRange (componentBasisList d (s+1) t).length do
    let p := listIndex d (s+1) t j
    for i in List.finRange n do
      let messages := diagnoseAll rank [p.val.2] (d.edge p.val.1 i) (c.output p i) (c.witness p i)
      errors := errors ++ messages.map (fun e => s!"product source-column {j.val}, target-generator {i.val}: {e}")
      for m in c.output p i do
        if !(d.homological i == s && m.length == rank && weight m + d.internal i == t) then
          errors := errors ++ [s!"product source-column {j.val}, target-generator {i.val}: monomial {m} outside target bidegree"]
  for i in List.finRange (componentBasisList d s t).length do
    for j in List.finRange (componentBasisList d (s+1) t).length do
      if a.entries[i.val * a.source.length + j.val]?.getD false != orderedMatrix d s t c i j then
        errors := errors ++ [s!"matrix coefficient mismatch at ({i.val},{j.val})"]
  return errors

def diagnoseComponent (d : Data rank n) (w : WireComponent) : List String := Id.run do
  let mut errors := []
  if w.version != 1 then errors := errors ++ ["component.version: expected 1"]
  if w.status != "exact" then errors := errors ++ [s!"component.status={w.status}: no exactness certificate accepted"]
  errors := errors ++ (diagnoseArrow d w.s w.t w.incoming).map ("incoming: " ++ ·)
  match w.s with
  | 0 =>
    if !checkZeroArrow d w.t w.outgoing then errors := errors ++ ["outgoing: malformed explicit zero-target arrow"]
    let b := orderedMatrix d 0 w.t (w.incoming.certificate d 0 w.t)
    let m := (componentBasisList d 0 w.t).length
    let n' := (componentBasisList d 1 w.t).length
    if w.up.length != n'*m || w.down != [] then errors := errors ++ ["contraction dimensions mismatch"]
    let up := ResolutionCertificates.matrixOf n' m w.up
    for i in List.finRange m do
      for j in List.finRange m do
        if ResolutionCertificates.compose b up i j != ResolutionCertificates.identityMatrix m i j then
          errors := errors ++ [s!"contraction identity failed at ({i.val},{j.val})"]
  | s+1 =>
    errors := errors ++ (diagnoseArrow d s w.t w.outgoing).map ("outgoing: " ++ ·)
    let a := orderedMatrix d s w.t (w.outgoing.certificate d s w.t)
    let b := orderedMatrix d (s+1) w.t (w.incoming.certificate d (s+1) w.t)
    let c := w.contraction d s w.t
    let k := (componentBasisList d s w.t).length
    let m := (componentBasisList d (s+1) w.t).length
    let n' := (componentBasisList d (s+2) w.t).length
    if w.up.length != n'*m || w.down.length != m*k then errors := errors ++ ["contraction dimensions mismatch"]
    for i in List.finRange k do
      for j in List.finRange n' do
        if ResolutionCertificates.compose a b i j then
          errors := errors ++ [s!"square-zero identity failed at ({i.val},{j.val})"]
    for i in List.finRange m do
      for j in List.finRange m do
        if ResolutionCertificates.matrixAdd (ResolutionCertificates.compose b c.up)
            (ResolutionCertificates.compose c.down a) i j != ResolutionCertificates.identityMatrix m i j then
          errors := errors ++ [s!"contraction identity failed at ({i.val},{j.val})"]
  return errors

def decodeComponent (d : Data rank n) (text : String) : Except String WireComponent :=
  match parseComponent text with
  | .error e => .error e
  | .ok w => if checkExactComponent d w then .ok w
      else .error (String.intercalate "; " (diagnoseComponent d w))

theorem decodeComponent_sound (d : Data rank n) (text : String) (w : WireComponent)
    (h : decodeComponent d text = .ok w) : ComponentExact d w.s w.t := by
  unfold decodeComponent at h
  split at h <;> try contradiction
  split at h <;> try contradiction
  rename_i hc
  cases h
  exact checkExactComponent_sound d _ hc

#print axioms decodeComponent_sound
end ExtComplexCertificates.GenericFreeComplex
