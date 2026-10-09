import LinProgramReference.SteenrodAdams

/-!
# Adams 页的实际同调商（E04–E05）

对固定页 r 和双次数 d，下面直接构造 d_r 的循环子类型、入射边界关系以及
循环模边界的商。`PageHomologyIdentification` 要求下一页的载体和这个商之间
给出互为逆的映射；因此“下一页是同调”不再是一个没有内容的 `Prop`。
-/

namespace LinProgramReference

/-- Adams 微分目标双次数的公式是单射，因此不同源双次数不会混成同一个目标。 -/
theorem adamsTarget_injective (r : Nat) {a b : Bidegree}
    (h : AdamsTarget r a = AdamsTarget r b) : a = b := by
  cases a with
  | mk af ai =>
    cases b with
    | mk bf bi =>
      simp [AdamsTarget] at h
      congr <;> omega

/-- 第 r 页、双次数 d 的循环元素。 -/
def PageCycle (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree) :=
  {x : (S.element r d).carrier //
    S.differential r d x = S.zero r (AdamsTarget r d)}

/-- 第 r 页、双次数 d 的入射边界元素。 -/
def PageBoundary (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x : (S.element r d).carrier) : Prop :=
  x = 0 ∨ ∃ e, ∃ y, ∃ h : AdamsTarget r e = d,
    h ▸ S.differential r e y = x

/-- 两个循环代表相差一个当前页微分的像。 -/
def PageEquivalent (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x y : PageCycle S r d) : Prop :=
  x.1 = y.1 ∨ PageBoundary S r d (x.1 + y.1)

/-- 在 F₂ 空间中，和为零等价于两个向量相等。 -/
theorem f2_add_eq_zero_implies_eq (V : F2Space) {x y : V.carrier}
    (h : x + y = 0) : x = y := by
  have hneg : -x = x := by
    rw [neg_eq_iff_add_eq_zero]
    exact f2Space_add_self V x
  have hnegxy : -x = y := (neg_eq_iff_add_eq_zero).2 h
  exact hneg.symm.trans hnegxy

/-- 页面同调中的“相差边界”是一个等价关系。 -/
def pageSetoid (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree) :
    Setoid (PageCycle S r d) where
  r := PageEquivalent S r d
  iseqv := by
    constructor
    · intro x
      exact Or.inl rfl
    · intro x y h
      rcases h with hxy | hxy
      · exact Or.inl hxy.symm
      · rcases hxy with hzero | ⟨e, z, he, hz⟩
        · exact Or.inr (Or.inl (by simpa [add_comm] using hzero))
        · exact Or.inr (Or.inr ⟨e, z, he, by simpa [add_comm] using hz⟩)
    · intro x y z hxy hyz
      rcases hxy with hxy | hxy
      · rcases hyz with hyz | hyz
        · exact Or.inl (hxy.trans hyz)
        · have hxySub : x = y := Subtype.ext hxy
          subst y
          exact Or.inr hyz
      · rcases hyz with hyz | hyz
        · have hyzSub : y = z := Subtype.ext hyz
          subst y
          exact Or.inr hxy
        · rcases hxy with hxy | ⟨e₁, u, he₁, hu⟩
          · have hxy' : x.1 = y.1 :=
              f2_add_eq_zero_implies_eq (S.element r d) hxy
            have hxySub : x = y := Subtype.ext hxy'
            subst y
            exact Or.inr hyz
          · rcases hyz with hyz | ⟨e₂, v, he₂, hv⟩
            · have hyz' : y.1 = z.1 :=
                f2_add_eq_zero_implies_eq (S.element r d) hyz
              have hyzSub : y = z := Subtype.ext hyz'
              subst z
              exact Or.inr (Or.inr ⟨e₁, u, he₁, hu⟩)
            · have he : e₁ = e₂ := adamsTarget_injective r (he₁.trans he₂.symm)
              subst e₂
              have hproof : he₂ = he₁ := Subsingleton.elim _ _
              cases hproof
              subst d
              have hu' : S.differential r e₁ u = x.1 + y.1 := by
                simpa using hu
              have hv' : S.differential r e₁ v = y.1 + z.1 := by
                simpa using hv
              refine Or.inr (Or.inr ⟨e₁, u + v, rfl, ?_⟩)
              change S.differential r e₁ (u + v) = x.1 + z.1
              rw [(S.differential r e₁).map_add', hu', hv']
              calc
                (x.1 + y.1) + (y.1 + z.1) =
                    x.1 + (y.1 + y.1) + z.1 := by abel
                _ = x.1 + 0 + z.1 := by
                  rw [f2Space_add_self (S.element r (AdamsTarget r e₁)) y.1]
                _ = x.1 + z.1 := by simp

/-- 第 r 页在双次数 d 的同调商。 -/
abbrev PageHomology (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree) :=
  Quotient (pageSetoid S r d)

/-- 下一页的指定双次数载体与当前页同调商之间的语义识别。 -/
structure PageHomologyIdentification (S : AdamsSpectralSequence)
    (r : Nat) (d : Bidegree) where
  /-- 从同调商到下一页的映射。 -/
  toNext : PageHomology S r d → (S.element (r + 1) d).carrier
  /-- 从下一页回到同调商的映射。 -/
  fromNext : (S.element (r + 1) d).carrier → PageHomology S r d
  /-- 两个方向互为逆映射。 -/
  leftInverse : ∀ x, fromNext (toNext x) = x
  rightInverse : ∀ y, toNext (fromNext y) = y

/-- 整个 Adams 谱序列的逐页同调识别数据。 -/
structure CertifiedAdamsPages (S : AdamsSpectralSequence) where
  /-- 对每个页和双次数，下一页确实是当前微分的同调。 -/
  nextPage : ∀ r d, PageHomologyIdentification S r d

/-- 线性微分把零元送到零元，因而零元是页面边界。 -/
theorem zero_is_page_boundary (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree) :
    PageBoundary S r d (0 : (S.element r d).carrier) := by
  exact Or.inl rfl

end LinProgramReference
