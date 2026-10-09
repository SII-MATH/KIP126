"""Generate the full 17-positive/28-zero center decomposition without selecting a branch."""
import json
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
s=json.loads((P/'search.json').read_text())['branches'][0]['positive_centers']
oldcov=json.loads((R/'Stem125HomologyCertificates/coverage.json').read_text())['pages']['2']['centers']
e4cov=json.loads((R/'Stem125E4Search/coverage.json').read_text())['nonzero_centers']
known=[x for x in s if x['status']=='complete'];known_fs=[x['filtration'] for x in known]
positive_fs=[x['filtration'] for x in s];zero_fs=[x['filtration'] for x in oldcov if x['filtration'] not in positive_fs]
lines=['import Stem125E5Search.Known','namespace Stem125E5Search.Product','open LinearCertificates PageTransitionCertificates Stem125HomologyCertificates','set_option maxRecDepth 10000','set_option maxHeartbeats 12000000','structure Choice where','  nine : Fin 2','  fourteen : Fin 3','  fifteen : Fin 4','  twentyfive : Fin 20','  deriving DecidableEq','def dimension (c : Choice) : Nat := 2 + (Data.nine c.nine).h + (Data.fourteen c.fourteen).h + (Data.fifteen c.fifteen).h + (Data.twentyfive c.twentyfive).h','def wires (c : Choice) (i : Fin 17) : WireComparison := match i with']
for j,x in enumerate(s):
 f=x['filtration']
 if f in known_fs:const=f'Known.wires ⟨{known_fs.index(f)},by decide⟩'
 else:const={9:'Data.nine c.nine',14:'Data.fourteen c.fourteen',15:'Data.fifteen c.fifteen',25:'Data.twentyfive c.twentyfive'}[f]
 lines.append(f'  | ⟨{j},_⟩ => {const}')
lines += ['  | ⟨n+17,h⟩ => False.elim (by omega)','theorem all_complete (c : Choice) (i : Fin 17) : (wires c i).Valid := by','  fin_cases i']
for x in s:
 f=x['filtration'];term=f'Known.all_complete ⟨{known_fs.index(f)},by decide⟩' if f in known_fs else {9:'Data.nine_complete c.nine',14:'Data.fourteen_complete c.fourteen',15:'Data.fifteen_complete c.fifteen',25:'Data.twentyfive_complete c.twentyfive'}[f]
 lines.append('  · exact '+term)
lines += ['theorem coordinate_count (c : Choice) : Fintype.card (CoordinateIndex (fun i => (wires c i).h)) = dimension c := by','  obtain ⟨a,b,c,d⟩ := c','  exact (show ∀ a : Fin 2, ∀ b : Fin 3, ∀ c : Fin 4, ∀ d : Fin 20, Fintype.card (CoordinateIndex (fun i => (wires ⟨a,b,c,d⟩ i).h)) = dimension ⟨a,b,c,d⟩ from by decide) a b c d','theorem input_count (c : Choice) : Fintype.card (CoordinateIndex (fun i => (wires c i).m)) = 24 := by','  obtain ⟨a,b,c,d⟩ := c','  exact (show ∀ a : Fin 2, ∀ b : Fin 3, ∀ c : Fin 4, ∀ d : Fin 20, Fintype.card (CoordinateIndex (fun i => (wires ⟨a,b,c,d⟩ i).m)) = 24 from by decide) a b c d','theorem dimension_bounds (c : Choice) : 2 ≤ dimension c ∧ dimension c ≤ 7 := by','  obtain ⟨a,b,c,d⟩ := c','  exact (show ∀ a : Fin 2, ∀ b : Fin 3, ∀ c : Fin 4, ∀ d : Fin 20, 2 ≤ dimension ⟨a,b,c,d⟩ ∧ dimension ⟨a,b,c,d⟩ ≤ 7 from by decide) a b c d','abbrev PositiveHomology (c : Choice) := TotalHomology (wires c)','noncomputable def equivalence (c : Choice) : PositiveHomology c ≃ Vec (dimension c) := totalFlatEquiv (wires c) (all_complete c) (coordinate_count c)','theorem cardinality (c : Choice) : Nat.card (PositiveHomology c) = 2 ^ dimension c := total_card (wires c) (all_complete c) (coordinate_count c)','theorem preserves_addition (c : Choice) (x y : PositiveHomology c) : equivalence c (totalAdd (wires c) x y) = add (equivalence c x) (equivalence c y) := totalFlatEquiv_add (wires c) (all_complete c) (coordinate_count c) x y','def positiveFiltrations : List Nat := '+json.dumps(positive_fs),'def zeroFiltrations : List Nat := '+json.dumps(zero_fs),'def positiveIndex (i : Fin 17) : Fin 31 := match i with']
for j,x in enumerate(s):lines.append(f'  | ⟨{j},_⟩ => ⟨{[g["filtration"] for g in e4cov].index(x["filtration"])},by decide⟩')
lines+=['  | ⟨n+17,h⟩ => False.elim (by omega)','theorem previous_dimensions (b : Bool) (c : Choice) (i : Fin 17) : (wires c i).m = (Stem125E4Search.Product.wires b (positiveIndex i)).h := by','  cases b <;> fin_cases i <;> first | rfl | (obtain ⟨a,b,c,d⟩ := c; fin_cases a <;> fin_cases b <;> fin_cases c <;> fin_cases d <;> rfl)','def previousHomologyEquiv (b : Bool) (c : Choice) : ((i : Fin 17) → LocalHomology (Stem125E4Search.Product.wires b (positiveIndex i))) ≃ ((i : Fin 17) → Vec (wires c i).m) :=','  Equiv.piCongrRight (fun i => (localEquiv _ (Stem125E4Search.Product.all_complete b _)).trans','    (Equiv.cast (congrArg Vec (previous_dimensions b c i).symm)))','#print axioms cardinality','#print axioms preserves_addition','end Stem125E5Search.Product']

lines=lines[:-1]
positive_original=[[g['filtration'] for g in oldcov].index(f) for f in positive_fs]
zero_original=[[g['filtration'] for g in oldcov].index(f) for f in zero_fs]
new_zero=[(j,g) for j,g in enumerate(e4cov) if g['filtration'] not in positive_fs]
assert len(new_zero)==14
lines+=['def newlyZeroIndex (i : Fin 14) : Fin 31 := match i with']
for i,(j,g) in enumerate(new_zero):lines.append(f'  | ⟨{i},_⟩ => ⟨{j},by decide⟩')
lines+=['  | ⟨n+14,h⟩ => False.elim (by omega)','theorem newly_zero_previous_dimension (b : Bool) (i : Fin 14) : (Stem125E4Search.Product.wires b (newlyZeroIndex i)).h = 0 := by cases b <;> fin_cases i <;> rfl','theorem previous_partition : Function.Bijective (Sum.elim positiveIndex newlyZeroIndex : Fin 17 ⊕ Fin 14 → Fin 31) := by decide']
lines+=['def originalPositive (i : Fin 17) : Fin 45 := match i with']
for j,i in enumerate(positive_original):lines.append(f'  | ⟨{j},_⟩ => ⟨{i},by decide⟩')
lines+=['  | ⟨n+17,h⟩ => False.elim (by omega)','def originalZero (i : Fin 28) : Fin 45 := match i with']
for j,i in enumerate(zero_original):lines.append(f'  | ⟨{j},_⟩ => ⟨{i},by decide⟩')
lines+=['  | ⟨n+28,h⟩ => False.elim (by omega)','def partitionMap : Fin 17 ⊕ Fin 28 → Fin 45 := Sum.elim originalPositive originalZero','theorem partition_bijective : Function.Bijective partitionMap := by decide','noncomputable def partitionEquiv : (Fin 17 ⊕ Fin 28) ≃ Fin 45 := Equiv.ofBijective partitionMap partition_bijective','end Stem125E5Search.Product']
(P/'Product.lean').write_text('\n'.join(lines)+'\n')
print('generated 480 unchosen local combinations; 17positive/28zero centers; exact E4input24')
