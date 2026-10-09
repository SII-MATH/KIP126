# Caller-requested results and the same semantic endpoints

`RequestedHolds family key source target interpretation` fixes the caller's
object, page, source degree, source vector and target vector in the goal.
It includes `ResultMatches` for the exact bound wire, the indexed complete
path semantics, the finite family differential at that caller key, and
explicit equalities between the same semantic endpoint coordinates and
the caller's source and target vectors.

`request_sound` extracts both `checkBound` and `ResultMatches` from
`checkResult`. It reuses `bound_event_transport` and `checkResult_sound`;
the semantic endpoints cannot be exchanged after the request check.
The `IndexedEventData` argument retains all the proved mathematical
interpretation equations. Those equations are not inferred from JSON,
hashes, or the external computation.

```lean
theorem caller6651 : RequestedHolds family
    ⟨"S0", 4, 52, 177⟩ [true] [true] interpreted6651 := by
  lin_cert using ()
```

`SemanticRequest`, `checkRequests`, and `requests_sound` batch the same
contract. The batch `lin_cert` instance proves every independently
requested result with its own explicit interpretation. The existing
`IndexedFamilyCertificates.diagnoseResult` reports the wrong key, source,
target, or underlying bound-certificate failure.

`RequestExample.lean` checks actual6651 in the shared351 family, including
a batch, and rejects wrong object, page, degree, source and target requests.
The positive coordinate lemmas explicitly expose the caller's two vectors
as the coordinates of the true endpoints used in the final differential.

```sh
python3 program/SemanticTrajectoryCertificates/compile_requests.py
python3 program/SemanticTrajectoryCertificates/assert_requests.py
```

This remains a conditional interpretation of a finite indexed family.
It does not establish the topology-to-Adams realization or supply the
mathematical interpretation premises automatically.

Both request modules currently compile with actual exit0. The single and
batch tactics, all five wrong-request rejection examples, and four printed
standard-only axiom reports pass. `assert_requests.py` verifies all20
source/dependency fingerprints, logs and oleans. The actual-family tactic
examples deliberately rerun the executable checker and take several minutes
in this environment.
