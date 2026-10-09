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
lines=['import Row2925EtaD4.Products','import BranchReplayCertificates.BasisSemantics',
       'namespace Row2925EtaD4.ProductSemantics',
       'open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics',
       'variable {R : Type*} [CommRing R] [CharP R 2]']
for tag,ds,dt,degrees in [('Products',1,2,sorted({(s+ds,t+dt) for s,t in [(8,135),(11,137),(14,139),(12,138),(15,140),(18,142)] for ds,dt in [(-2,-1),(0,0),(2,1)]}))]:
 for s,t in degrees:
     rows=c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t)).fetchall()
     targets=c.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s+ds,t+dt)).fetchall()
     src,tgt,mat=f'{tag}.source{s}_{t}',f'{tag}.target{s}_{t}',f'{tag}.matrix{s}_{t}'
     lines += [f'def {src} : Fin {len(rows)} → Polynomial := fun i => ({pl([[mon(raw)] for _,raw in rows])} : List Polynomial)[i.val]!',
               f'def {tgt} : Fin {len(targets)} → Polynomial := fun i => ({pl([[mon(raw)] for _,raw in targets])} : List Polynomial)[i.val]!']
     for j,(bid,raw) in enumerate(rows):
         lines += [f'theorem {tag}.decode{bid} : EqualModuloRelations []',
                   f'    (decodedBasisVector {tgt} (fun i => {mat} i ⟨{j},by decide⟩)) {tag}.column{bid}.output := by',
                   '  lin_cert using ([] : List Term)',
                   f'theorem {tag}.semantic{bid} (v : Nat → R)',
                   f'    (hr : ∀ r ∈ {tag}.column{bid}.relations, evaluate v r = 0) :',
                   f'    interpret (fun i => evaluate v ({tgt} i)) (fun i => {mat} i ⟨{j},by decide⟩) =',
                   f'      evaluate v {tag}.factor * evaluate v ({src} ⟨{j},by decide⟩) := by',
                   f'  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ {tag}.decode{bid} (by simp)]',
                   f'  have hp := equalModulo_evaluate v _ _ _ {tag}.column{bid}_product hr',
                   '  rw [evaluate_multiply] at hp',
                   '  exact hp.symm']
     lines += [f'theorem {tag}.all_vectors{s}_{t} (v : Nat → R)']
     for bid,_ in rows:lines += [f'    (hr{bid} : ∀ r ∈ {tag}.column{bid}.relations, evaluate v r = 0)']
     lines += [f'    (x : Vec {len(rows)}) :',
               f'    interpret (fun i => evaluate v ({tgt} i)) (eval {mat} x) =',
               f'      evaluate v {tag}.factor * interpret (fun j => evaluate v ({src} j)) x := by',
               f'  apply all_products v {src} {tgt} {mat} {tag}.factor _ x',
               '  intro j','  obtain ⟨j,hj⟩ := j',
               '  have casesJ : '+' ∨ '.join(f'j = {i}' for i in range(len(rows)))+' := by omega',
               '  rcases casesJ with '+' | '.join('h'+str(i) for i in range(len(rows)))]
     for j,(bid,_) in enumerate(rows):lines += [f'  · subst j',f'    exact {tag}.semantic{bid} v hr{bid}']
     lines += [f'#print axioms {tag}.all_vectors{s}_{t}']
lines += ['end Row2925EtaD4.ProductSemantics']
(HERE/'ProductSemantics.lean').write_text('\n'.join(lines)+'\n')
