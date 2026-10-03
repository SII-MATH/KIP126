import KIP126.Interface.Challenge.Challenge2

/-! Correlated existence of the prior-literature background.

The classical category, its actual HF₂-local sphere, HF₂ and Milnor coordinates
are fixed in Def. The auxiliary synthetic category, ν, λ, Adams family and
classical detector are chosen TOGETHER with the source bindings and statements.
There is no prior choice from the weaker `StandardRouteInput` type.

Pstrągowski's construction uses spherical sheaves of spectra on the finite
HF₂-projective ∞-site, not ordinary sheaves on its homotopy category. Its
hypercomplete version is symmetric monoidal; ν of an HF₂-local spectrum is
hypercomplete, and τ-inversion recovers the same HF₂-local classical category.
See Source/Pst/source/synthetic_spectra.tex,
Definition 4.6 and §4.5, in particular
`prop:synthetic_analogue_of_e_local_spectrum_nue_local` and the following
proposition on hypercomplete τ-invertible objects.

The theorem below is the restricted existential consequence of that
construction, the separately inventoried prior results, and their internal
source assembly. It is not a verbatim theorem of one paper, a uniqueness
characterization of synthetic spectra, or a Def construction of the ∞-site.
BHS completeness/strong-convergence hypotheses remain inside the delivered
conditional source statements. The same source assembly fixes Hopf maps,
tmf/unit/labels, classical and synthetic towers, and all source comparisons.

This producer contains no computation certification, route Application,
high125 NonzeroSurvival, generalized Leibniz/Mahowald theorem, or target T.
Those subsequent internal obligations must use this SAME route witness.
-/
namespace KIP126.Interface.Solution.Literature.Route

/-- Produce a single route together with its prior-source background on the
fixed actual classical sphere. The proof must construct the source model and
transport every inventoried prior statement to the shared bindings; it must
not invoke the aggregate Challenge2 producer or any paper conclusion. -/
theorem source_background_exists :
    ∃ route : Classical.Adams.StandardRouteInput,
      ∃ bindings : KIP126.Challenge2.ModelBindings route,
        Nonempty (KIP126.Challenge2.LiteratureInterface route bindings) := by
  sorry

end KIP126.Interface.Solution.Literature.Route
