import ActualTraceRequestsNext.Fact713
import ActualTraceRequestsNext.Fact721
import ActualTraceRequestsNext.Prop79

namespace ActualTraceRequestsNext
open Lean Elab Tactic

syntax "actual_trace_next_cert" " using " term : tactic
syntax "actual_trace_next_cert" " using " term " incoming " term : tactic

elab_rules : tactic
  | `(tactic| actual_trace_next_cert using $meaning:term) => do
      let saved ← saveState
      try
        evalTactic (← `(tactic| first
          | exact Fact713.request_sound $meaning _ (by decide)
          | exact Fact713.batch_sound $meaning _ (by decide)
          | exact Fact721.First.request_sound $meaning _ (by decide)
          | exact Fact721.First.batch_sound $meaning _ (by decide)
          | exact Fact721.Second.request_sound $meaning _ (by decide)
          | exact Fact721.Second.batch_sound $meaning _ (by decide)))
      catch _ =>
        saved.restore
        throwError "actual_trace_next_cert: request or actual prefix differs from the goal; use ActualTraceRequests.diagnose or diagnoseBatch with the goal's spec for a field location"
  | `(tactic| actual_trace_next_cert using $meaning:term incoming $input:term) => do
      let saved ← saveState
      try
        evalTactic (← `(tactic| first
          | exact Prop79.request_sound $meaning $input _ (by decide)
          | exact Prop79.batch_sound $meaning $input _ (by decide)))
      catch _ =>
        saved.restore
        throwError "actual_trace_next_cert: request, prefix, or complete incoming d5 meaning differs from the goal; use ActualTraceRequests.diagnose or diagnoseBatch with Prop79.spec"

end ActualTraceRequestsNext
