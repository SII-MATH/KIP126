# Exact synthetic rules and algebraic connecting certificate

Source: arXiv:2412.10879v2, downloaded as `kervaire-v2.html` from
`https://arxiv.org/html/2412.10879v2`. `kervaire-v2.txt` is an HTMLParser text
extraction; `exact-statements.txt` preserves both main theorem statements
(MathML and TeX alternatives appear together in this raw extraction).

## Theorem 6.1: Generalized Leibniz Rule

For a classical map f:X->Y, assume 2<=n<=r,
e(f)<=m<=n-2+e(f), l>=e(f), and classes

- x in Z_(r-1)^(s,t)(X),
- y in Z_(r-1-m+e(f))^(s+m,t+m)(Y),
- x_infty in Z_infty^(s+r,t+r-1)(X),
- y_infty in Z_infty^(s+r+l,t+r+l-1)(Y).

The five hypotheses are d_r(x)=x_infty; the (f,E_n)-extension
d_m(x)=y; the (f,E_infty)-extension d_l(x_infty)=y_infty;
either the first differential has no crossing on E_n or the second
extension has no crossing; and the third extension has no crossing.
The conclusion is d_(r+l-m)(y)=y_infty.

This is not the ordinary multiplicative identity d(xy)=d(x)y+xd(y).
The paper derives it using Proposition 4.6, Definition 5.4,
Propositions 4.16/5.10, Corollary 2.15 and Remark 4.12. Example 6.8
explicitly shows that omitting the last no-crossing hypothesis gives a
false answer. Merely checking the numerical length r+l-m is insufficient.

## Theorem 6.12: Generalized Mahowald Trick

Take a distinguished triangle X -f-> Y -g-> Z -h-> Sigma X, with
e(f)+e(g)+e(h)=1. Set r=n+m+l, n1=n-e(f)>=1,
m1=m-e(g)>=0, l1=l-e(h)>=0, and r'=r-m1=n1+l1+1.
Class requirements are x in Z_n1^(s+l,t+l-1)(X),
y in Z_(m1+1)^(s+n+l,t+n+l-1)(Y),
xbar in Z_(r-1)^(s,t)(Z), and
ybar in Z_infty^(s+r,t+r-1)(Z).

Require the (h,E_r')-extension d_l(xbar)=x, d_r(xbar)=ybar,
no crossing for that extension OR no crossing for the Adams differential
on E_r', and the (g,E_(m1+2))-extension d_m(y)=ybar.
Then x lies in Z_(n+m+e(h)), and its
(f,E_(n+m+1+e(h)))-extension satisfies d_n(x)=y modulo B_r'(Y).
The modulus is essential: this is not an unconditional equality of named
basis vectors. The proof uses May's Lemma 6.11 (reference [46], Lemma 4.6
and axiom TC3) applied to smash products of distinguished triangles,
plus synthetic lifting/no-crossing comparisons.

## Implemented algebraic theorem

`Connecting.lean` proves the algebraic connecting-homomorphism argument
for a short exact sequence of additive differential groups:

1. Surjectivity and middle exactness construct a lift b of a cycle c
   and a with i(a)=d(b).
2. Injectivity of i and d squared equal zero prove d(a)=0.
3. Different lifts change a by a boundary.
4. Replacing c by a homologous cycle changes a by a boundary.
5. A commuting map of exact sequences transports the certificate and
   proves naturality.

`checkConnecting` executes the three local witness equations, and
`checkConnecting_sound` proves the output is a cycle with that connecting
witness. Exactness, chain-map laws and differential-square-zero are explicit
structural hypotheses, not an assumed connecting rule. This is a genuine
proved algebraic ingredient of zigzag/connecting arguments. It does NOT
construct synthetic spectra, prove May's TC3, identify the differential
groups with the paper's Adams tower, or prove the two generalized theorems.

## Three manual differentials: exact attribution

The appendix (section 8, introductory bullet list) states:

| Differential | Attribution actually supplied by the paper |
|---|---|
| d5(h0^24 h6)=h0^2 P^6 d0 in S0 | "from the image of J" |
| d6(h0^55 h7)=h0^2 x126,60 in S0 | "from the image of J" |
| d3(v2^16)=beta^5 g in tmf | "derived from power operations (Bruner--Rognes [12])" |

The appendix does NOT provide numbered source theorems for the first two,
nor a theorem/page number within [12] for the third. Reference [12] is
Robert R. Bruner and John Rognes, *The Adams spectral sequence for
topological modular forms*, Mathematical Surveys and Monographs 253,
AMS, 2021. It would be inaccurate to invent exact source theorem numbers.
All three occur as M rows in the actual proof release, but those records
are premises, not Lean proofs. A local search of Reference/ and program/
Lean sources found only claim labels/text for these formulas, no proved
Adams differential statement. Image-of-J and power-operation comparison
theorems remain required external mathematics.

## Fact 7.6(4) and incomplete plot interpretation

The precise statement really is that g^4 Delta h1 g is the only element
in Ext_A^(25,150) surviving to E5. However the appendix specifically warns
that the plotted d4(x126,21) is unresolved whereas proof records exclude
many values, giving

    d4(x126,21) = x125,25,2 + x125,25 + g^4 Delta h1 g
                 + possibly d0^2 e0 g B4.

Therefore counting permanent-sentinel rows in the plot/staircase alone
cannot establish or refute that fact: hypothetical-branch information must
be reconstructed, with candidate constraints and quotient semantics.
