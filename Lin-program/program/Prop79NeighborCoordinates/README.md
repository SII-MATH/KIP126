# Constructed neighboring coordinates for Proposition 7.9

The main target trace already derives its own later coordinates. This package
also derives the neighboring coordinates used by the E4 and E5 incoming
checks from complete initial E2 coordinates and known whole differential
interpretations:

| Neighbor | Degree | Derived dimensions |
| --- | --- | --- |
| Incoming d4 source | (10,136) | E2 3, E3 1, E4 0 |
| Outgoing d4 target | (18,142) | E2 2, E3 0, E4 0 |
| Incoming d5 source | (9,135) | E2 5, E3 3, E4 2, E5 1 |

`assemble5` feeds the two derived zero-dimensional coordinate equivalences to
`Prop79TargetSearch.Assembly.prefix5`. Thus these E4 equivalences are not
independent caller inputs. `all_incoming5_zero` uses the derived complete
one-dimensional E5 coordinates, actual zero preservation, and just one named
basis differential value to prove the entire incoming d5 map zero.
`finalPage` and `requested_result` supply the existing `prop79_cert` result for
the caller's exact initial element, including four nonboundary statements.

The single d5 basis value still needs its actual future-prefix interpretation;
it is not obtained from the SQL level. Initial coordinates, all complete
neighboring differential meanings and local quotient laws remain explicit.
No d5 outgoing cycle, E6 survival or unconditional topological proposition is
claimed. The zero-dimensional conclusions follow from checked finite
comparisons transported through the actual quotient interfaces.

Two leaves compile directly with 11 standard-axiom reports. `check_models.py`
checks every finite quotient pair, transported actual carrier coordinates and
countermodels to removing the named d5 premise. Failed compilation evidence
is retained separately.

```sh
python3 program/Prop79NeighborCoordinates/compile.py
python3 program/Prop79NeighborCoordinates/check_models.py
```
