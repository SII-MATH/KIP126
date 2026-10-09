import Fact721FirstD6DC2h6.Maps
import Fact721FirstD6DC2h6.PageMap
import Fact762CsigmasqD5.Descent

namespace Fact721FirstD6DC2h6.MapCoordinates
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Row3151ActualTransport (Coordinates)

variable {S T : AdamsSpectralSequence} {sp : CertifiedAdamsPages S} {tp : CertifiedAdamsPages T}

/-- Bind the map at the earlier page. The next formula is a theorem of both
complete quotients and the actual map's quotient law. -/
def input (F : PageMap.Map S T sp tp) (r : Nat) (d : Bidegree)
    (ws wt : WireComparison) (cs : Coordinates S r d ws.m) (ct : Coordinates T r d wt.m)
    (sm : Meaning S r d ws cs) (tm : Meaning T r d wt ct)
    (vs : ws.Valid) (vt : wt.Valid)
    (sz : LocalZeroMeaning sp r d) (tz : LocalZeroMeaning tp r d)
    (matrix : Matrix wt.m ws.m) (upper : Matrix wt.k ws.k) (lower : Matrix wt.n ws.n)
    (compatible : CompatibleMap (matrixOf ws.k ws.m ws.outgoing) (matrixOf ws.m ws.n ws.incoming)
      (matrixOf wt.k wt.m wt.outgoing) (matrixOf wt.m wt.n wt.incoming) matrix upper lower)
    (equation : ∀ x, ct.equivalence (F.map r d x) = eval matrix (cs.equivalence x)) :
    Fact713D4SourceSearch.ActualDescent.Input S T r d d ws wt cs ct where
  sourceMeaning := sm
  targetMeaning := tm
  sourcePages := sp
  targetPages := tp
  sourceValid := vs
  targetValid := vt
  sourceZero := sz
  targetZero := tz
  matrix := matrix
  upper := upper
  lower := lower
  compatible := compatible
  currentMap := F.map r d
  currentEquation := equation
  nextMap := F.map (r+1) d

theorem transition (F : PageMap.Map S T sp tp) (r : Nat) (d : Bidegree)
    (ws wt : WireComparison) (cs : Coordinates S r d ws.m) (ct : Coordinates T r d wt.m)
    (sm : Meaning S r d ws cs) (tm : Meaning T r d wt ct)
    (vs : ws.Valid) (vt : wt.Valid)
    (sz : LocalZeroMeaning sp r d) (tz : LocalZeroMeaning tp r d)
    (matrix : Matrix wt.m ws.m) (upper : Matrix wt.k ws.k) (lower : Matrix wt.n ws.n)
    (compatible : CompatibleMap (matrixOf ws.k ws.m ws.outgoing) (matrixOf ws.m ws.n ws.incoming)
      (matrixOf wt.k wt.m wt.outgoing) (matrixOf wt.m wt.n wt.incoming) matrix upper lower)
    (equation : ∀ x, ct.equivalence (F.map r d x) = eval matrix (cs.equivalence x)) :
    (input F r d ws wt cs ct sm tm vs vt sz tz matrix upper lower compatible equation).Transition := by
  intro x
  exact F.quotient r d x _ rfl

theorem next_coordinates (F : PageMap.Map S T sp tp) (r : Nat) (d : Bidegree)
    (ws wt : WireComparison) (cs : Coordinates S r d ws.m) (ct : Coordinates T r d wt.m)
    (sm : Meaning S r d ws cs) (tm : Meaning T r d wt ct)
    (vs : ws.Valid) (vt : wt.Valid)
    (sz : LocalZeroMeaning sp r d) (tz : LocalZeroMeaning tp r d)
    (matrix : Matrix wt.m ws.m) (upper : Matrix wt.k ws.k) (lower : Matrix wt.n ws.n)
    (compatible : CompatibleMap (matrixOf ws.k ws.m ws.outgoing) (matrixOf ws.m ws.n ws.incoming)
      (matrixOf wt.k wt.m wt.outgoing) (matrixOf wt.m wt.n wt.incoming) matrix upper lower)
    (equation : ∀ x, ct.equivalence (F.map r d x) = eval matrix (cs.equivalence x))
    (x : (S.element (r+1) d).carrier) :
    (tm.nextCoordinates tp vt tz).equivalence (F.map (r+1) d x) =
      eval (coordinateMap ws.comparison wt.comparison matrix)
        ((sm.nextCoordinates sp vs sz).equivalence x) :=
  Fact713D4SourceSearch.ActualDescent.next_map_coordinates
    (input F r d ws wt cs ct sm tm vs vt sz tz matrix upper lower compatible equation)
    (transition F r d ws wt cs ct sm tm vs vt sz tz matrix upper lower compatible equation) x

#print axioms transition
#print axioms next_coordinates
end Fact721FirstD6DC2h6.MapCoordinates
