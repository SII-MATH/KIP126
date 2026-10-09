# Homogeneous component producer design

A coordinate is `(generator position, Milnor exponent vector)`. Number coordinates by increasing generator position, then lexicographically increasing exponent vector, restricted to homological degree s and weight(m)+internal(generator)=t. Completeness must be checked against the Lean component basis; an arbitrary Fintype enumeration is not assumed to match this order.

For the differential column `(i,a)`, its coefficient at `(j,b)` is the coefficient of b in the actual Milnor product `a * edge(i,j)`. This is left-module linear extension and order must not be reversed. Each product carries an AllCertificate. Matrix orientation is target rows, source columns.

Exactness at `(s,t)` compares outgoing `(s,t)->(s-1,t)` and incoming `(s+1,t)->(s,t)`. An arrow with sourceS>0 has targetKind="component" and targetS=sourceS-1 (the canonical source=target+1 Nat pattern). At sourceS=0, targetKind="zero" explicitly identifies the zero module and its coordinate list must be empty; targetS=0 is an ignored placeholder, not the ordinary degree-zero component. This is not augmentation. Contractions certify `incoming*up + down*outgoing = I` and zero composite. Failure to find a contraction is a nonexact result, never a zero matrix assumption.

Arrow fields: version,rank,n,sourceS,targetS,targetKind,t,source,target,entries,products,witnesses. products/witnesses use source-column-major indexing col*n+targetGenerator. Envelope fields: version,s,t,status,incoming,outgoing,up,down. status is exact, nonexact, or not_complex. Nonexact is a reported result, not an I/O failure; up/down are empty unless an exact witness exists.
