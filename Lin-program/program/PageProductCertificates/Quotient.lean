import PageProductCertificates.Basic
namespace PageProductCertificates
open LinearCertificates PageTransitionCertificates ResolutionCertificates

variable (oa : Matrix ka a) (ia : Matrix a na)
  (ob : Matrix kb b) (ib : Matrix b nb) (oc : Matrix kc c) (ic : Matrix c nc)
  (t : Tensor a b c) (valid : Valid oa ia ob ib oc ic t)

def onCycles (x : Cycle oa) (y : Cycle ob) : Homology oc ic :=
  Quot.mk _ (⟨product t x.val y.val, valid.cycles _ _ x.property y.property⟩ : Cycle oc)

theorem onCycles_left (x x' : Cycle oa) (y : Cycle ob)
    (h : BoundaryRelated ia x x') :
    onCycles oa ia ob ib oc ic t valid x y = onCycles oa ia ob ib oc ic t valid x' y := by
  apply Quot.sound
  change InImage ic (add (product t x.val y.val) (product t x'.val y.val))
  rw [← product_add_left]
  exact valid.leftBoundary _ _ h y.property

theorem onCycles_right (x : Cycle oa) (y y' : Cycle ob)
    (h : BoundaryRelated ib y y') :
    onCycles oa ia ob ib oc ic t valid x y = onCycles oa ia ob ib oc ic t valid x y' := by
  apply Quot.sound
  change InImage ic (add (product t x.val y.val) (product t x.val y'.val))
  rw [← product_add_right]
  exact valid.rightBoundary _ _ x.property h

def descended : Homology oa ia → Homology ob ib → Homology oc ic :=
  Quot.lift (fun x : Cycle oa => Quot.lift
    (fun y : Cycle ob => onCycles oa ia ob ib oc ic t valid x y)
    (fun y y' h => onCycles_right oa ia ob ib oc ic t valid x y y' h))
    (by
      intro x x' h
      funext y
      induction y using Quot.inductionOn with | h y =>
        exact onCycles_left oa ia ob ib oc ic t valid x x' y h)

theorem coordinate_formula (cc : Comparison kc c nc hc)
    (hc : HomologyComparison oc ic cc) (x : Cycle oa) (y : Cycle ob) :
    (homologyEquivalence oc ic cc hc).toCoordinates
      (descended oa ia ob ib oc ic t valid (Quot.mk _ x) (Quot.mk _ y)) =
      eval cc.projection (product t x.val y.val) := rfl

end PageProductCertificates
