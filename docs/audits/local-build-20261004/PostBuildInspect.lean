import KIP126.Interface.Solution.Challenge2
import KIP126.Main.Solution.Computation.Lambda
import KIP126.Main.Solution.h6_sq_permanent

set_option pp.universes true

#check KIP126.Solution.Final.H6SquarePermanent.h6_sq_permanent
#print axioms KIP126.Interface.Solution.challenge2
#print axioms KIP126.Main.Axiom.challenge2
#print axioms KIP126.Computation.Route.lambda_powers_injective_62_64
#print axioms KIP126.Computation.Route.theta5_choice_order_two
#print axioms KIP126.Solution.Final.H6SquarePermanent.h6_sq_permanent

-- Existing declarations referenced by the demo audit; these checks do not construct their premises.
#check KIP126.Literature.Route.ClassicalSourceResults.stem62_exponent_two
#check KIP126.Literature.Route.ClassicalSourceResults.h5Square_permanent
#check KIP126.Literature.Route.ClassicalSourceResults.theta5_detection
#check KIP126.Literature.Route.ClassicalSourceResults.theta5_filtration_gap
#check KIP126.Literature.Route.BHSRealizationDetectionAt.detection
#check KIP126.Literature.Route.BHSRealizationDetectionAt.prescribed_lift
#check KIP126.Literature.Route.SyntheticSourceInputs.filtration_lambda
#check KIP126.Kervaire.Route.Model.sphereProductCommutative
