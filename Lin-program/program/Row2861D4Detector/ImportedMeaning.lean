import Row2861D4Detector.Matches
namespace Row2861D4Detector.ImportedMeaning
open LinearCertificates PageTransitionCertificates

structure D3Data where
  sourceOut : Matrix 1 2
  sourceIn : Matrix 2 2
  imageOut : Matrix 0 2
  imageIn : Matrix 2 2
  targetOut : Matrix 1 1
  targetIn : Matrix 1 3
  targetImageOut : Matrix 1 2
  targetImageIn : Matrix 2 3

def checked : D3Data :=
  ⟨matrixOf 1 2 Higher.source.outgoing, matrixOf 2 2 Higher.source.incoming,
   matrixOf 0 2 Higher.target.outgoing, matrixOf 2 2 Higher.target.incoming,
   matrixOf 1 1 Higher.upperSource.outgoing, matrixOf 1 3 Higher.upperSource.incoming,
   matrixOf 1 2 Higher.upperTarget.outgoing, matrixOf 2 3 Higher.upperTarget.incoming⟩

abbrev D3Data.S (d : D3Data) := Homology d.sourceOut d.sourceIn
abbrev D3Data.T (d : D3Data) := Homology d.imageOut d.imageIn
abbrev D3Data.U (d : D3Data) := Homology d.targetOut d.targetIn
abbrev D3Data.V (d : D3Data) := Homology d.targetImageOut d.targetImageIn

/-- The S0 conditional d3 identities and DC2h6 imported prefix identities
must agree with the caller's actual d3 data before these quotients apply. -/
def Meaning (d : D3Data) : Prop := d = checked

def sourceEquiv (d : D3Data) (h : Meaning d) : Naturality.S ≃ d.S := by
  cases h
  exact Equiv.refl _
def imageEquiv (d : D3Data) (h : Meaning d) : Naturality.T ≃ d.T := by
  cases h
  exact Equiv.refl _
def targetEquiv (d : D3Data) (h : Meaning d) : Naturality.U ≃ d.U := by
  cases h
  exact Equiv.refl _
def targetImageEquiv (d : D3Data) (h : Meaning d) : Naturality.V ≃ d.V := by
  cases h
  exact Equiv.refl _

theorem transported_d4_zero (d : D3Data) (meaning : Meaning d)
    (ds : d.S → d.U) (dt : d.T → d.V)
    (zeroPreserving : dt (imageEquiv d meaning Naturality.zt) =
      targetImageEquiv d meaning Naturality.zv)
    (naturality : ∀ x, dt (imageEquiv d meaning (Naturality.f x)) =
      targetImageEquiv d meaning
        (Naturality.g ((targetEquiv d meaning).symm
          (ds (sourceEquiv d meaning x))))) :
    ds (sourceEquiv d meaning Naturality.named) =
      targetEquiv d meaning Naturality.zs := by
  cases meaning
  exact Naturality.named_d4_zero ds dt zeroPreserving naturality

#print axioms transported_d4_zero
end Row2861D4Detector.ImportedMeaning
