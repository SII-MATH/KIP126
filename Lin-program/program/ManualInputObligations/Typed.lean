import ManualInputObligations.Reference.AdamsRules

namespace ManualInputObligations
open Reference

/-- This finite trace uses actual cycle representatives and actual homology
identifications; no compatibility proposition is left uninterpreted. -/
inductive Trace (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (d : Bidegree) : (r : Nat) → (S.element 2 d).carrier → (S.element r d).carrier → Type
  | start (x : (S.element 2 d).carrier) : Trace S pages d 2 x x
  | step {q : Nat} {initial : (S.element 2 d).carrier} {x : (S.element q d).carrier}
      (previous : Trace S pages d q initial x)
      (cycle : S.differential q d x = S.zero q (AdamsTarget q d)) :
      Trace S pages d (q + 1) initial
        ((pages.nextPage q d).toNext (Quotient.mk _ (⟨x, cycle⟩ : PageCycle S q d)))

structure Endpoint (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (d : Bidegree) (initial : (S.element 2 d).carrier) where
  value : (S.element r d).carrier
  trace : Trace S pages d r initial value

def powerDegree (d : Bidegree) : Nat → Bidegree
  | 0 => ⟨0, 0⟩
  | n + 1 => Bidegree.add (powerDegree d n) d

def e2Power (S : AdamsSpectralSequence) (P : AdamsPageProduct S)
    (d : Bidegree) (x : (S.element 2 d).carrier) :
    (n : Nat) → (S.element 2 (powerDegree d n)).carrier
  | 0 => P.unit 2
  | n + 1 => P.multiply 2 (powerDegree d n) d (e2Power S P d x n) x

/-- These are caller-supplied mathematical elements. Their identification
with the named Ext/topological classes is a separate obligation. -/
structure Names (sphere tmf : AdamsSpectralSequence) where
  h0 : (sphere.element 2 ⟨1, 1⟩).carrier
  h6 : (sphere.element 2 ⟨1, 64⟩).carrier
  h7 : (sphere.element 2 ⟨1, 128⟩).carrier
  p6d0 : (sphere.element 2 ⟨28, 90⟩).carrier
  x12660 : (sphere.element 2 ⟨60, 186⟩).carrier
  v2Sixteen : (tmf.element 2 ⟨16, 112⟩).carrier
  beta : (tmf.element 2 ⟨3, 18⟩).carrier
  g : (tmf.element 2 ⟨4, 24⟩).carrier

def source1 (sphere tmf : AdamsSpectralSequence) (P : AdamsPageProduct sphere)
    (names : Names sphere tmf) : (sphere.element 2 ⟨25, 88⟩).carrier :=
  pageCast sphere 2 (by decide : Bidegree.add (powerDegree ⟨1, 1⟩ 24) ⟨1, 64⟩ = ⟨25, 88⟩)
    (P.multiply 2 _ _ (e2Power sphere P ⟨1, 1⟩ names.h0 24) names.h6)

def target1 (sphere tmf : AdamsSpectralSequence) (P : AdamsPageProduct sphere)
    (names : Names sphere tmf) : (sphere.element 2 ⟨30, 92⟩).carrier :=
  pageCast sphere 2 (by decide : Bidegree.add (powerDegree ⟨1, 1⟩ 2) ⟨28, 90⟩ = ⟨30, 92⟩)
    (P.multiply 2 _ _ (e2Power sphere P ⟨1, 1⟩ names.h0 2) names.p6d0)

def source2 (sphere tmf : AdamsSpectralSequence) (P : AdamsPageProduct sphere)
    (names : Names sphere tmf) : (sphere.element 2 ⟨56, 183⟩).carrier :=
  pageCast sphere 2 (by decide : Bidegree.add (powerDegree ⟨1, 1⟩ 55) ⟨1, 128⟩ = ⟨56, 183⟩)
    (P.multiply 2 _ _ (e2Power sphere P ⟨1, 1⟩ names.h0 55) names.h7)

def target2 (sphere tmf : AdamsSpectralSequence) (P : AdamsPageProduct sphere)
    (names : Names sphere tmf) : (sphere.element 2 ⟨62, 188⟩).carrier :=
  pageCast sphere 2 (by decide : Bidegree.add (powerDegree ⟨1, 1⟩ 2) ⟨60, 186⟩ = ⟨62, 188⟩)
    (P.multiply 2 _ _ (e2Power sphere P ⟨1, 1⟩ names.h0 2) names.x12660)

def target3 (sphere tmf : AdamsSpectralSequence) (P : AdamsPageProduct tmf)
    (names : Names sphere tmf) : (tmf.element 2 ⟨19, 114⟩).carrier :=
  pageCast tmf 2 (by decide : Bidegree.add (powerDegree ⟨3, 18⟩ 5) ⟨4, 24⟩ = ⟨19, 114⟩)
    (P.multiply 2 _ _ (e2Power tmf P ⟨3, 18⟩ names.beta 5) names.g)

/-- Optional precise naming obligation for the SQL source monomial w2^2.
It is not inferred from the coincident bidegree. -/
def V2NameMatches (sphere tmf : AdamsSpectralSequence) (P : AdamsPageProduct tmf)
    (names : Names sphere tmf) (w2 : (tmf.element 2 ⟨8, 56⟩).carrier) : Prop :=
  names.v2Sixteen = pageCast tmf 2
    (by decide : powerDegree ⟨8, 56⟩ 2 = ⟨16, 112⟩) (e2Power tmf P ⟨8, 56⟩ w2 2)

structure Context where
  sphere : AdamsSpectralSequence
  tmf : AdamsSpectralSequence
  spherePages : CertifiedAdamsPages sphere
  tmfPages : CertifiedAdamsPages tmf
  sphereProduct : AdamsPageProduct sphere
  tmfProduct : AdamsPageProduct tmf
  names : Names sphere tmf
  left1 : Endpoint sphere spherePages 5 ⟨25, 88⟩ (source1 sphere tmf sphereProduct names)
  right1 : Endpoint sphere spherePages 5 ⟨30, 92⟩ (target1 sphere tmf sphereProduct names)
  left2 : Endpoint sphere spherePages 6 ⟨56, 183⟩ (source2 sphere tmf sphereProduct names)
  right2 : Endpoint sphere spherePages 6 ⟨62, 188⟩ (target2 sphere tmf sphereProduct names)
  left3 : Endpoint tmf tmfPages 3 ⟨16, 112⟩ names.v2Sixteen
  right3 : Endpoint tmf tmfPages 3 ⟨19, 114⟩ (target3 sphere tmf tmfProduct names)

def Manual1 (c : Context) : Prop :=
  c.sphere.differential 5 ⟨25, 88⟩ c.left1.value =
    pageCast c.sphere 5 (by decide : (⟨30, 92⟩ : Bidegree) = AdamsTarget 5 ⟨25, 88⟩) c.right1.value

def Manual2 (c : Context) : Prop :=
  c.sphere.differential 6 ⟨56, 183⟩ c.left2.value =
    pageCast c.sphere 6 (by decide : (⟨62, 188⟩ : Bidegree) = AdamsTarget 6 ⟨56, 183⟩) c.right2.value

def Manual3 (c : Context) : Prop :=
  c.tmf.differential 3 ⟨16, 112⟩ c.left3.value =
    pageCast c.tmf 3 (by decide : (⟨19, 114⟩ : Bidegree) = AdamsTarget 3 ⟨16, 112⟩) c.right3.value

/-- Values require Lean proofs of these exact propositions. No constructor
is exposed by a wire parser, citation lookup, or hash comparison. -/
structure ExternalProofs (c : Context) : Prop where
  imageJ_d5 : Manual1 c
  imageJ_d6 : Manual2 c
  powerOperations_d3 : Manual3 c

theorem consume (c : Context) (proofs : ExternalProofs c) :
    Manual1 c ∧ Manual2 c ∧ Manual3 c :=
  ⟨proofs.imageJ_d5, proofs.imageJ_d6, proofs.powerOperations_d3⟩

theorem trace_page_at_least_two {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {d : Bidegree} {r : Nat} {initial : (S.element 2 d).carrier}
    {value : (S.element r d).carrier} (trace : Trace S pages d r initial value) : 2 ≤ r := by
  induction trace with
  | start => omega
  | step previous cycle ih => omega

#print axioms consume
#print axioms trace_page_at_least_two
end ManualInputObligations
