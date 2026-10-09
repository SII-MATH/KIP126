import DiagnosticTacticReview.Examples
import FilteredCrossingCertificates.Examples

namespace DiagnosticTacticReview
open FilteredCrossingCertificates FilteredCrossingCertificates.Examples

theorem actual_good : ResultValid input := by lin_cert_diagnose using certificate

theorem actual_stability_diagnostic : ¬ ResultValid crossingInput → True := by
  intro notValid
  by_contra impossible
  have result : ResultValid crossingInput := by
    expect_cert_error "representative-square: stability: row 0, column 1: matrix composite bits differ"
      using crossingCert
    exact False.elim (impossible trivial)
  exact notValid result

#print axioms actual_good
#print axioms actual_stability_diagnostic
end DiagnosticTacticReview
