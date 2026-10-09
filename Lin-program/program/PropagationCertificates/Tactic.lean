import PropagationCertificates.Rules

open Lean Elab Tactic

/-- The supplied premise proof must establish every external fact semantically. -/
syntax "propagation_cert" " using " term " model " term " premises " term : tactic

macro_rules
  | `(tactic| propagation_cert using $steps:term model $m:term premises $h:term) =>
    `(tactic| exact PropagationCertificates.check_sound $m _ $h $steps _ (by decide))
