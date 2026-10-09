# Ordinary differential propagation certificates

This is a conditional semantic checker for one fixed differential on a
semiring, supporting addition, zero, ordinary Leibniz and a family of
commuting maps. The `Model` laws and all external facts require Lean proofs.
It does not translate arbitrary `ss` reason tags or implement the paper's
generalized Leibniz or Mahowald rules.

Build the independent C++ exporter from `program/`:

```
g++ -std=c++17 -O2 -Wall -Wextra -pedantic PropagationCertificates/export.cpp -o PropagationCertificates/propagation-export
PropagationCertificates/propagation-export PropagationCertificates/example.rules > PropagationCertificates/example.jsonl
lake env lean --run PropagationCertificates/Main.lean PropagationCertificates/example.jsonl
```

Multiple `.rules` arguments produce one deterministic JSONL record each.
The line-oriented input commands are:

| Command | Meaning |
|---|---|
| `atom ID NAT` / `zero ID` | Declare an expression |
| `add ID LEFT RIGHT` / `mul ID LEFT RIGHT` | Declare a composite expression |
| `map ID NAT EXPR` | Declare transported expression |
| `fact ID SOURCE TARGET` | Name a candidate differential equation |
| `external FACT` | Declare a required external theorem premise |
| `use FACT` | Use a declared external premise in the DAG |
| `step_zero` | Derive differential of zero |
| `linearity FACT FACT` / `leibniz FACT FACT` | Derive the corresponding sum/product equation |
| `naturality NAT FACT` | Derive equation after a commuting transport |
| `result FACT` | Override the requested result (otherwise the last step's conclusion) |

Blank lines and lines beginning with `#` are ignored. Names must be declared
before use; naming a fact does not establish it. Derived facts can be named
using `fact` plus the appropriate expression declarations; the Lean replay
compares full equations, not names. Unsupported tags fail with filename and
line number. C++ does not decide truth or discharge external premises.

Lean `decode` requires canonical JSON exactly equal to `ToJson.compress`
(sorted object keys, no whitespace, no unknown/duplicate fields), with
schema `lin-propagation/v1`. `importLine` adds one-based JSONL line and
zero-based failed-step location. `Main.lean` streams input and returns exit
status 1 when any line fails. Acceptance establishes structural derivability
only; the CLI explicitly reports its dependence on a model and premise
proofs. `importLine_sound` gives the actual semantic theorem under those
explicit hypotheses.

```
propagation_cert using certificate model m premises h
```

The tactic invokes `check_sound` and kernel `decide`. `Examples.lean` proves
a product differential and checks rejection of forward references and
undeclared inputs. `example.jsonl` exercises all five constructors through
the C++ exporter and Lean importer.

`Branches.lean` checks scoped implication introduction/elimination and exhaustive
case splits. `exclude_sound` discharges hypothetical target assumptions; a
branch hypothesis cannot leak into the outer context. `branch_cert using proof
model valuation premises contextProof` invokes its soundness theorem. This is
a logical kernel for hypothetical branches, not an implemented translator of
the actual T/TI log chronology. Coverage/exhaustiveness premises remain explicit.
