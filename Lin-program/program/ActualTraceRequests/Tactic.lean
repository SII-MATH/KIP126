import ActualTraceRequests.Fact715
import ActualTraceRequests.Fact719

namespace ActualTraceRequests
open Lean Elab Tactic

/-- The checker has only closed request data as input; the semantic prefix
is passed to the soundness theorem and is never evaluated as certificate data. -/
syntax "actual_trace_cert" " using " term : tactic

elab_rules : tactic
  | `(tactic| actual_trace_cert using $meaning:term) => do
      let saved ← saveState
      try
        evalTactic (← `(tactic| first
          | exact ActualTraceRequests.Fact715.request_sound $meaning _ (by decide)
          | exact ActualTraceRequests.Fact715.batch_sound $meaning _ (by decide)
          | exact ActualTraceRequests.Fact719.request_sound $meaning _ (by decide)
          | exact ActualTraceRequests.Fact719.batch_sound $meaning _ (by decide)))
      catch _ =>
        saved.restore
        throwError "actual_trace_cert: request or semantic prefix does not match the goal; use ActualTraceRequests.diagnose or diagnoseBatch to locate the invalid request field"

end ActualTraceRequests
