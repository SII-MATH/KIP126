# Exact row2708 configured-map screen

This examines staircase row `(2708,7,134,"0,1",NULL,9997)` obstructing
aggregate events3151 and3152. Its source is E2 local0+local1, database
basis2706+basis2707, with complete E3 coordinates `[1,0]`. The one-dimensional
d3 target at `(10,136)` is represented by E2 local2, database basis2857.
Staircase row2708 is not E2 basis2708/local2 used in the row2576 residual
screen. The NULL9997 marker supplies neither a zero nor a nonzero differential.

All 70 configured S0-domain maps are screened with mandatory database E2
and d2 coverage metadata, complete incoming/outgoing d2 columns, explicit
ring-relation lifts, and cycle checks before projection. There are:

- 35 nonzero source images.
- 14 zero target images after source annihilation.
- 21 unavailable maps with retained stage-specific reasons.
- No source-annihilating map detecting the target.

The earlier complete 0<t<=30 factor screen likewise finds no source-zero
detector for this target. Here six configured maps detect the target but
have nonzero source: Csigma, CW_sigma_nu, CW_2_eta_by_nu, DC2h5, DC2h6, and
Csigma_by_2sigma. `constraints.py` records their actual source staircase
coordinates. Their relevant source differentials retain NULL9997; none
provides an independently known zero differential. For example Csigma sends
the source to row4148, base0,1,NULL9997, so it merely transfers the same
unresolved condition.

`review.py` regenerates byte-identical output and independently replays all
reductions, lifted ring relations, complete quotient matrices, and exact
source/target coordinates against raw SQL. `search_lifted.py` is a relative
symlink to the established bounded reducer; no shared file is modified.

Run `search.py`, `review.py`, and `constraints.py` in this directory (any
working directory is accepted). JSON and logs remain here. This bounded
negative screen is not a theorem that no detector exists. A successful
extension would still need actual full map compatibility and the appropriate
d3 naturality or Leibniz premises; no new Lean differential theorem is claimed.
