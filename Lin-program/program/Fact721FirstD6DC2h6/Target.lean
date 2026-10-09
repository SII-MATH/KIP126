import Fact721FirstD6DC2h6.Reflection
import Fact721FirstD6DC2h6.ExtraSource

namespace Fact721FirstD6DC2h6.Target
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact761ConstructedActual.Local

abbrev degree : Bidegree := ⟨17,138⟩
abbrev incomingDegree : Bidegree := ⟨14,136⟩
abbrev priorDegree : Bidegree := ⟨11,134⟩
variable {S T : AdamsSpectralSequence} {sp : CertifiedAdamsPages S} {tp : CertifiedAdamsPages T}

structure Stage2 (I : ExtraSource.Stage2 S T sp tp) where
  sphere : Chart degree S 2 4
  sphereStep : Step degree S sp 2 Maps.targetSphere sphere
  incoming : Chart incomingDegree T 2 2
  incomingStep : Step incomingDegree T tp 2 Maps.incoming3 incoming
  prior : Chart priorDegree T 2 6
  priorStep : Step priorDegree T tp 2 Maps.incoming3prior prior

noncomputable def Stage2.sphere3 {I : ExtraSource.Stage2 S T sp tp} (D : Stage2 I) :=
  D.sphereStep.next (by decide)
noncomputable def Stage2.incoming3 {I : ExtraSource.Stage2 S T sp tp} (D : Stage2 I) :=
  D.incomingStep.next (by decide)
noncomputable def Stage2.prior3 {I : ExtraSource.Stage2 S T sp tp} (D : Stage2 I) :=
  D.priorStep.next (by decide)

/-- Row3039 maps to the first target basis vector. Row2859 hits the other
incoming basis vector, whose d3 then vanishes by d3 squared equals zero. -/
structure Meaning {I : ExtraSource.Stage2 S T sp tp} (D : Stage2 I)
    (F : PageMap.Map S T sp tp) where
  map2 : ∀ x, I.target.coordinates.equivalence (F.map 2 degree x) =
    eval Maps.targetMap.algebra.mat (D.sphere.coordinates.equivalence x)
  knownIncoming : I.target3.coordinates.equivalence (T.differential 3 incomingDegree
    (D.incoming3.coordinates.equivalence.symm (fun i => i.val == 0))) = (fun i => i.val == 0)
  knownPrior : D.incoming3.coordinates.equivalence (T.differential 3 priorDegree
    (D.prior3.coordinates.equivalence.symm (fun i => i.val == 2))) = (fun i => i.val == 1)

namespace Meaning
variable {I : ExtraSource.Stage2 S T sp tp} {D : Stage2 I} {F : PageMap.Map S T sp tp}
  (M : Meaning D F)
include M

theorem map3 (x : (S.element 3 degree).carrier) :
    I.target3.coordinates.equivalence (F.map 3 degree x) =
      (fun _ => D.sphere3.coordinates.equivalence x ⟨0,by decide⟩) := by
  have equation := MapCoordinates.next_coordinates F 2 degree Maps.targetSphere Data.target
    D.sphere.coordinates I.target.coordinates D.sphereStep.whole.meaning I.targetStep.whole.meaning
    Maps.targetSphere_valid Data.target_valid D.sphereStep.zeroMeaning I.targetStep.zeroMeaning
    Maps.targetMap.algebra.mat Maps.targetMapUpper.algebra.mat Maps.targetMapLower.algebra.mat
    Maps.target_compatible M.map2 x
  exact equation.trans (Maps.target_map3 _)

theorem second_zero : T.differential 3 incomingDegree
    (D.incoming3.coordinates.equivalence.symm (fun i => i.val == 1)) = 0 := by
  have same : T.differential 3 priorDegree
      (D.prior3.coordinates.equivalence.symm (fun i => i.val == 2)) =
      D.incoming3.coordinates.equivalence.symm (fun i => i.val == 1) :=
    D.incoming3.coordinates.equivalence.injective
      (M.knownPrior.trans (D.incoming3.coordinates.equivalence.apply_symm_apply _).symm)
  exact (congrArg (T.differential 3 incomingDegree) same).symm.trans (T.differentialSq 3 priorDegree _)

theorem incoming_last_zero (x : (T.element 3 incomingDegree).carrier) :
    I.target3.coordinates.equivalence (T.differential 3 incomingDegree x) ⟨1,by decide⟩ = false := by
  let a := D.incoming3.coordinates.equivalence.symm (fun i => i.val == 0)
  let b := D.incoming3.coordinates.equivalence.symm (fun i => i.val == 1)
  have cases : ∀ v : Vec 2, v = zero ∨ v = (fun i => i.val == 0) ∨
    v = (fun i => i.val == 1) ∨ v = add (fun i => i.val == 0) (fun i => i.val == 1) := by decide
  rcases cases (D.incoming3.coordinates.equivalence x) with hz | ha | hb | hab
  · have same : x = 0 := D.incoming3.coordinates.equivalence.injective
      (hz.trans D.incoming3.coordinates.zero_value.symm)
    rw [same,(T.differential 3 incomingDegree).map_zero']
    exact congrFun I.target3.coordinates.zero_value ⟨1,by decide⟩
  · have same : x = a := D.incoming3.coordinates.equivalence.injective
      (ha.trans (D.incoming3.coordinates.equivalence.apply_symm_apply _).symm)
    rw [same,M.knownIncoming]
    rfl
  · have same : x = b := D.incoming3.coordinates.equivalence.injective
      (hb.trans (D.incoming3.coordinates.equivalence.apply_symm_apply _).symm)
    rw [same,M.second_zero]
    exact congrFun I.target3.coordinates.zero_value ⟨1,by decide⟩
  · have same : x = a+b := by
      apply D.incoming3.coordinates.equivalence.injective
      rw [D.incoming3.map_add]
      exact hab.trans (congrArg₂ add (D.incoming3.coordinates.equivalence.apply_symm_apply _).symm
        (D.incoming3.coordinates.equivalence.apply_symm_apply _).symm)
    rw [same,(T.differential 3 incomingDegree).map_add',M.second_zero,add_zero,M.knownIncoming]
    rfl

theorem boundary_reflects_zero (x : (S.element 3 degree).carrier)
    (hit : PageBoundary T 3 degree (F.map 3 degree x)) : x = 0 := by
  obtain ⟨y,hy⟩ := (ActualAdamsIncomingBridge.differential_image T 3 degree _).mpr hit
  have same : T.differential 3 incomingDegree (y (by decide)) = F.map 3 degree x := by
    have bridge : ActualAdamsIncomingBridge.differential T 3 degree y =
        T.differential 3 incomingDegree (y (by decide)) := by
      unfold ActualAdamsIncomingBridge.differential
      rw [dif_pos (show 3 ≤ degree.filtration from by decide)]
      rfl
    exact bridge.symm.trans hy
  have last := (congrArg (fun z => I.target3.coordinates.equivalence z ⟨1,by decide⟩) same).symm.trans
    (M.incoming_last_zero _)
  rw [M.map3] at last
  apply D.sphere3.coordinates.equivalence.injective
  rw [D.sphere3.coordinates.zero_value]
  funext i
  have hi : i = ⟨0,by decide⟩ := Fin.ext (show i.val = 0 from by have := i.isLt; change i.val < 1 at this; omega)
  rw [hi]
  exact last

/-- The E3 image (1,1) is independent of the entire incoming d3 image (a,0).
This proves reflection on E4 without interpreting unknown outgoing rows. -/
theorem reflects4 (sz : ActualAdamsSystemBridge.ZeroMeaning S sp)
    (tz : ActualAdamsSystemBridge.ZeroMeaning T tp)
    (x : (S.element 4 degree).carrier) (hx : F.map 4 degree x = 0) : x = 0 := by
  obtain ⟨q,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S sp 3 degree x
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff T tp tz 3 degree (F.cycle 3 degree q)).mp
    (((F.quotient_cycle 3 degree q).symm.trans hx).trans (T.zero_is_zero _ _).symm)
  have same : q = ActualAdamsSystemBridge.zeroCycle S 3 degree :=
    Subtype.ext (M.boundary_reflects_zero q.val boundary)
  rw [same,sz,S.zero_is_zero]

end Meaning
#print axioms Meaning.map3
#print axioms Meaning.second_zero
#print axioms Meaning.incoming_last_zero
#print axioms Meaning.boundary_reflects_zero
#print axioms Meaning.reflects4
end Fact721FirstD6DC2h6.Target
