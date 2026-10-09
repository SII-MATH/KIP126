import ActualTraceRequestsE10.Basic

namespace ActualTraceRequestsE10
open Lean Elab Tactic

syntax "actual_trace_e10_cert" " using " term : tactic

elab_rules : tactic
  | `(tactic| actual_trace_e10_cert using $meaning:term) => do
      let saved ← saveState
      try
        evalTactic (← `(tactic| first
          | exact request_sound $meaning _ (by decide)
          | exact batch_sound $meaning _ (by decide)))
      catch _ =>
        saved.restore
        throwError "actual_trace_e10_cert: request or actual Prefix10 differs from the goal; use ActualTraceRequests.diagnose or diagnoseBatch with ActualTraceRequestsE10.spec to locate the field and record"

end ActualTraceRequestsE10
