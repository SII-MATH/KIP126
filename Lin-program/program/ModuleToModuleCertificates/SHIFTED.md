# Signed shifts

`ShiftedImport.lean` keeps the old zero-shift algebra wire intact and adds an
outer signed filtration f, suspension u, and source/target bidegrees. Validity
requires target s=source s+f and target t=source t+f-u, plus validity of the
entire algebra matrix certificate. The inner equal-degree labels are normalized
algebra labels; the outer fields carry the actual degree assertion.
`shifted_module_map%` and `lin_cert using ()` support strict canonical import.

`audit_shifts.py` checks all generator-image terms of 85 shifted same-S0
module maps. Every term with available genuine generator IDs has the predicted
degree. 9,322 terms instead contain an unavailable/sentinel generator, notably
4294967295; these are explicitly recorded, not interpreted as zero. This is
stronger than checking only SQL NULL or textual question marks. Zero image
polynomials cannot individually establish a degree convention.

The actual Ceta__Q_Joker map (Ceta -> CW_2_eta) has f=1,u=-1 and sends (s,t)
to (s+1,t+2). All 22 complete source degree blocks through t<=8 pass kernel
checking in `ShiftedActual.lean`. The producer uses target module relations
and lifts single-monomial S0 relations at a target module coordinate when
needed (negative audit relation IDs denote S0 relation row IDs). It refuses
numeric unknown sentinels for every used/densely included source image.
Higher-degree unresolved data is not claimed verified.

```sh
python3 ModuleToModuleCertificates/audit_shifts.py
python3 ModuleToModuleCertificates/export_shifted.py --map Ceta__Q_Joker --max-t 8
python3 ModuleToModuleCertificates/compile_one.py ShiftedImport ShiftedActual ShiftedTests
```

Negative tests reject wrong f, wrong u, wrong target degree and missing image
coordinates. The coefficient ring map is still identity; no general
semilinear or topological realization theorem is claimed.
