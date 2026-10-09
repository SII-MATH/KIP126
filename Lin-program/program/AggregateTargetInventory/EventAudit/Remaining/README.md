# Remaining aggregate-event dependency ranking

ranking.json traverses all14 unresolved event roots' complete DAGs and
ranks unknown row/page records by shared impact. Exact log matches include
file, record ordinal and physical end line; event ID is the primary locator.
The highest row2796 affects4 event roots and has no exact event log;
row2574 affects3 and remains an actual unknown event. Selected row2861
affects2, has a single concrete bottom-cell detection lead, and is handled
in Row2861Csigma by actual matrix/quotient semantics, not its log string.
Existing conditional overrides may still appear in this raw ranking;
impact is dependency incidence, not the number of unproved new facts.

SamePage.lean separately proves rows2492/2493 cannot lie in the full
same-page incoming image, using the checked complex and their nonzero
outgoing differential. It does not use an earlier-page argument.
