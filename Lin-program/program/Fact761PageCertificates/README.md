# Fact7.6(1): actual finite d2 quotient of the named sum

`Survivor.lean` proves x126,8,4+x126,8, local vector e0+e3 at S0(8,134),
is a cycle and not a d2 boundary in the complete imported three-block
complex. Outgoing d2 has exactly one nonzero column, source local1 sent
to target local3. Incoming d2 has exactly one nonzero column, source
local1 sent to local5. Thus the finite quotient has dimension4, with
representatives e0,e2,e3,e4. The named class has coordinates(1,0,1,0)
and `targetClass_nonzero` proves nonzero of the quotient class itself.

`expression_decode` binds its polynomial decoding to namedCase0 and
`named_expression_evaluation` proves the named expression agrees under
every characteristic-two valuation satisfying the imported relations.
The existing filtered survival query through E6 is a different theorem;
this quotient construction does not prove actual Adams E6 survival.

`comparison.json` comes from the existing C++ page-transition exporter;
`source.json` preserves all three SQLite blocks and the database hash.
All d2 values used are non-NULL TEXT. No higher differential is read.

```
python3 program/Fact761PageCertificates/review.py --check
```

Default checking is read-only and verifies all source rows, exact C++
certificate bytes and four unknown-value rejection cases. Explicit
`--regenerate` replaces only the certificate after source validation.
Lean `lin_cert` and comparison soundness verify the finite mathematics;
Ext/topological comparison and higher-page provenance remain unproved.
