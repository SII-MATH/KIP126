# Fact 7.21 finite prefixes and permanence gaps

The two requested permanent classes coincide with source classes already
studied by the Fact 7.13 detector work. The original Fact 7.21 modules prove
only finite d2 cycle and nonboundary results.

| Class | Degree | Staircase row/base | E2 basis row | Shared conditional prefix |
| --- | --- | --- | --- | --- |
| `h6 M d0` | `(11,133)` | 2622 / `1` | 2622 | Through E4 |
| `h5 x91,11` | `(12,134)` | 2684 / `0` | 2682 | Through E5 |

Both raw rows remain `NULL`, level 9000. For the first class,
`Fact713DC2h6Source.Actual.actual_row2622_d3_zero` supplies conditional actual
d3 zero. Its next d4 still has a two-dimensional complete target and no
proved value. For the second, `Fact713NextSourceSearch.Actual` supplies
conditional actual d3 zero and `Fact713D4SourceSearch.Assembly` supplies
conditional actual d4 zero.

The second class admits a finite E6 continuation only in the residual
row-2994 branch: its d5 target `(17,138)` then has zero E5. The other branch
has a nonzero target. These two coherent finite families are separate and
neither is identified as the actual Adams family. No branch is chosen to
claim an actual extra page.

The finite prefix dimensions at the tracked degree are:

- First: E2 dimension 2, E3 dimension 2, E4 dimension 1.
- Second: E2 dimension 3, E3 dimension 2, E4 dimension 1, E5 dimension 1.

Incoming source filtration bounds possible hit pages by 11 and 12,
respectively. It places no upper bound on outgoing differentials. Therefore
these prefixes cannot imply permanence without further actual outgoing
control and a genuine tail theorem. The existing
`PermanentCycleCertificates.tail_from_adams_vanishing` exposes the required
all-page vanishing-region premise; a finite database limit cannot discharge
it. Original Adams realization and convergence comparisons remain missing.

`frontier.json` records exact raw rows, both branch matrices, available
conditional theorem routes, first unresolved pages and input hashes. All
files here are new; no registered source or prior certificate is changed.
