"""Link every actual polynomial product column to its finite coefficient matrix."""
import json
import sqlite3
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
c=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
def mon(raw):
    xs=list(map(int,raw.split(','))) if raw else []
    return sorted(g for g,e in zip(xs[::2],xs[1::2]) for _ in range(e))
def pl(poly):return json.dumps(poly,separators=(',',':'))
lines=['import Row2576Detector.Quotient','import BranchReplayCertificates.BasisSemantics',
       'namespace Row2576Detector.ProductSemantics',
       'open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics h2',
       'variable {R : Type*} [CommRing R] [CharP R 2]']
for s,t in [(4,132),(7,134)]:
    rows=c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
    targets=c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s+1,t+4)).fetchall()
    src,tgt,mat=f'source{s}_{t}',f'target{s}_{t}',f'matrix{s}_{t}'
    lines += [f'def {src} : Fin {len(rows)} → Polynomial := fun i => ({pl([[mon(raw)] for _,raw in rows])} : List Polynomial)[i.val]!',
              f'def {tgt} : Fin {len(targets)} → Polynomial := fun i => ({pl([[mon(raw)] for _,raw in targets])} : List Polynomial)[i.val]!']
    for j,(bid,raw) in enumerate(rows):
        lines += [f'theorem decode{bid} : EqualModuloRelations []',
                  f'    (decodedBasisVector {tgt} (fun i => {mat} i ⟨{j},by decide⟩)) column{bid}.output := by',
                  '  lin_cert using ([] : List Term)',
                  f'theorem semantic{bid} (v : Nat → R)',
                  f'    (hr : ∀ r ∈ column{bid}.relations, evaluate v r = 0) :',
                  f'    interpret (fun i => evaluate v ({tgt} i)) (fun i => {mat} i ⟨{j},by decide⟩) =',
                  f'      evaluate v factor * evaluate v ({src} ⟨{j},by decide⟩) := by',
                  f'  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ decode{bid} (by simp)]',
                  f'  have hp := equalModulo_evaluate v _ _ _ column{bid}_product hr',
                  '  rw [evaluate_multiply] at hp',
                  '  exact hp.symm']
    lines += [f'theorem all_vectors{s}_{t} (v : Nat → R)']
    for bid,_ in rows:lines += [f'    (hr{bid} : ∀ r ∈ column{bid}.relations, evaluate v r = 0)']
    lines += [f'    (x : Vec {len(rows)}) :',
              f'    interpret (fun i => evaluate v ({tgt} i)) (eval {mat} x) =',
              f'      evaluate v factor * interpret (fun j => evaluate v ({src} j)) x := by',
              f'  apply all_products v {src} {tgt} {mat} factor _ x',
              '  intro j','  obtain ⟨j,hj⟩ := j',
              '  have casesJ : '+' ∨ '.join(f'j = {i}' for i in range(len(rows)))+' := by omega',
              '  rcases casesJ with '+' | '.join('h'+str(i) for i in range(len(rows)))]
    for j,(bid,_) in enumerate(rows):lines += [f'  · subst j',f'    exact semantic{bid} v hr{bid}']
    lines += [f'#print axioms all_vectors{s}_{t}']
lines += ['end Row2576Detector.ProductSemantics']
(HERE/'ProductSemantics.lean').write_text('\n'.join(lines)+'\n')
