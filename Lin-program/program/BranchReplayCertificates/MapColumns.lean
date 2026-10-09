import RealMapCertificates.Substitution
namespace BranchReplayCertificates.MapColumns
open NamedElementCertificates RealMapCertificates
def images : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 51 => [[7,7,7]]
  | 80 => []
  | 500 => []
  | 510 => []
  | 530 => []
  | 558 => []
  | 559 => [[0,0,5,8,12,12]]
  | _ => []
def column3748 : Bundle := named_bundle% "RealMapCertificates/relations/basis3748.json"
theorem column3748_proved : IsMapEvaluation images column3748.relations [530] column3748.output := by lin_cert using column3748.terms
def column3749 : Bundle := named_bundle% "RealMapCertificates/relations/basis3749.json"
theorem column3749_proved : IsMapEvaluation images column3749.relations [1,510] column3749.output := by lin_cert using column3749.terms
def column3750 : Bundle := named_bundle% "RealMapCertificates/relations/basis3750.json"
theorem column3750_proved : IsMapEvaluation images column3750.relations [0,0,0,500] column3750.output := by lin_cert using column3750.terms
def column3992 : Bundle := named_bundle% "RealMapCertificates/relations/basis3992.json"
theorem column3992_proved : IsMapEvaluation images column3992.relations [559] column3992.output := by lin_cert using column3992.terms
def column3993 : Bundle := named_bundle% "RealMapCertificates/relations/basis3993.json"
theorem column3993_proved : IsMapEvaluation images column3993.relations [558] column3993.output := by lin_cert using column3993.terms
def column3994 : Bundle := named_bundle% "RealMapCertificates/relations/basis3994.json"
theorem column3994_proved : IsMapEvaluation images column3994.relations [13,13,13,13,51] column3994.output := by lin_cert using column3994.terms
def column3995 : Bundle := named_bundle% "RealMapCertificates/relations/basis3995.json"
theorem column3995_proved : IsMapEvaluation images column3995.relations [8,8,9,13,80] column3995.output := by lin_cert using column3995.terms
end BranchReplayCertificates.MapColumns
