# Source-side route review

`source_routes.py` is a read-only finite E3 factorization screen. Its output
`source-routes.json` is exploratory and not an actual differential theorem.
It uses independently chosen canonical quotient coordinates; those are not
the inherited family coordinates and must not be matched by dimension.

The h2 route found here is implemented and checked with the exact inherited
coordinates in `Row3147H2Product/`. It expresses raw row3147 as h2 times raw
basis 2839 at (15,136). The h0 alternative requires an additional unknown
d3 prefix; it is not used. The naive square factorization alone does not
justify passing a noncycle factor to E3.

All mathematical acceptance and the actual Adams premises belong to the
new Lean package. This review's raw database output is not a trusted proof.
