import KIP126.Def.StableHomotopy.Source.Orthogonal.Smash
import Mathlib.CategoryTheory.Monoidal.Subcategory

/-! Canonical Day-convolution coherence. Every map is specified on the
universal pairing; the associator is the unique regrouping of triple
pairings. The proof debts are the enriched coend and its laws, not a free
choice of tensor or coherence on the homotopy category. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
noncomputable section

def leftUnitPairing (E : Spectrum) : Pairing sphere E E where
  pair n m :=
    { map := ⟨fun z => (E.action m (n+m)).apply
        (jCompose (jReindex (Nat.zero_add m).symm) (jDirectSum z.1 (jId m))) z.2,
        by sorry⟩
      left_point := by sorry
      right_point := by sorry }
  left_natural := by sorry
  right_natural := by sorry

def rightUnitPairing (E : Spectrum) : Pairing E sphere E where
  pair n m :=
    { map := ⟨fun z => (E.action n (n+m)).apply
        (jCompose (jReindex (Nat.add_zero n).symm) (jDirectSum (jId n) z.2)) z.1,
        by sorry⟩
      left_point := by sorry
      right_point := by sorry }
  left_natural := by sorry
  right_natural := by sorry

instance leftUnit_isIso (E : Spectrum) : IsIso (liftPairing (leftUnitPairing E)) := by sorry
instance rightUnit_isIso (E : Spectrum) : IsIso (liftPairing (rightUnitPairing E)) := by sorry
def leftUnitIso (E : Spectrum) : smash sphere E ≅ E := asIso (liftPairing (leftUnitPairing E))
def rightUnitIso (E : Spectrum) : smash E sphere ≅ E := asIso (liftPairing (rightUnitPairing E))

def swapPairing (E F : Spectrum) : Pairing E F (smash F E) where
  pair n m :=
    { map := ⟨fun z => ((smash F E).action (m+n) (n+m)).apply (jSwap m n)
        ((smashPairing F E).pair m n |>.apply z.2 z.1), by sorry⟩
      left_point := by sorry
      right_point := by sorry }
  left_natural := by sorry
  right_natural := by sorry
instance swap_isIso (E F : Spectrum) : IsIso (liftPairing (swapPairing E F)) := by sorry
def swapIso (E F : Spectrum) : smash E F ≅ smash F E := asIso (liftPairing (swapPairing E F))

/-- The equation on the actual generating triple pairing determines the
associator, including the block-order reindexing in J. -/
def RegroupsTriple (E F G : Spectrum)
    (f : smash (smash E F) G ⟶ smash E (smash F G)) : Prop :=
  ∀ n m k (x : E.level n) (y : F.level m) (z : G.level k),
    (f.level ((n+m)+k)).map
      ((smashPairing (smash E F) G).pair (n+m) k |>.apply
        ((smashPairing E F).pair n m |>.apply x y) z) =
    ((smash E (smash F G)).action (n+(m+k)) ((n+m)+k)).apply
      (jReindex (Nat.add_assoc n m k).symm)
      ((smashPairing E (smash F G)).pair n (m+k) |>.apply x
        ((smashPairing F G).pair m k |>.apply y z))

theorem exists_associator (E F G : Spectrum) :
    ∃ e : smash (smash E F) G ≅ smash E (smash F G), RegroupsTriple E F G e.hom := by sorry
def associatorIso (E F G : Spectrum) : smash (smash E F) G ≅ smash E (smash F G) :=
  Classical.choose (exists_associator E F G)
theorem associator_spec (E F G : Spectrum) : RegroupsTriple E F G (associatorIso E F G).hom :=
  Classical.choose_spec (exists_associator E F G)

instance : MonoidalCategory Spectrum where
  tensorObj := smash
  whiskerLeft E _ _ f := smashMap (𝟙 E) f
  whiskerRight f F := smashMap f (𝟙 F)
  tensorHom := smashMap
  tensorUnit := sphere
  associator := associatorIso
  leftUnitor := leftUnitIso
  rightUnitor := rightUnitIso
  tensorHom_def := by sorry
  whiskerLeft_id := by sorry
  id_whiskerRight := by sorry
  id_tensorHom_id := by sorry
  tensorHom_comp_tensorHom := by sorry
  associator_naturality := by sorry
  leftUnitor_naturality := by sorry
  rightUnitor_naturality := by sorry
  pentagon := by sorry
  triangle := by sorry

instance : SymmetricCategory Spectrum where
  braiding := swapIso
  braiding_naturality_left := by sorry
  braiding_naturality_right := by sorry
  hexagon_forward := by sorry
  hexagon_reverse := by sorry
  symmetry := by sorry

def cofibrantObjects : ObjectProperty Spectrum := Cofibrant
instance : cofibrantObjects.IsMonoidal where
  prop_unit := by sorry
  prop_tensor := by sorry
abbrev CofibrantSpectra := cofibrantObjects.FullSubcategory
abbrev cofibrantInclusion : CofibrantSpectra ⥤ Spectrum := cofibrantObjects.ι

end
end KIP126.StableHomotopy.Source.Orthogonal
