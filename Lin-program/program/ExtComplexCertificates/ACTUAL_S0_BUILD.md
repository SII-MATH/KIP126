# Actual S0 resolution computation

The full upstream repository was cloned to `SSeqCpp-build-source` at commit
`23d12c973db2b294a6c00c15bd106e70b0af3fa6`. This is the current upstream commit,
**not** the archived Kervaire release. The archived source lacks build dependencies.
System CMake was unavailable; CMake 4.4.3 was installed under `cmake-tool`.
All source, dependencies, binaries, build files and generated data remain here.

Commands from program/:

```sh
ExtComplexCertificates/cmake-tool/cmake/data/bin/cmake -S ExtComplexCertificates/SSeqCpp-build-source -B ExtComplexCertificates/cpp-build -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF
ExtComplexCertificates/cmake-tool/cmake/data/bin/cmake --build ExtComplexCertificates/cpp-build --target Adams -j 1
cd ExtComplexCertificates/actual-s0
../cpp-build/bin/Adams res S0 8
../res-export S0_Adams_res.db > resolution.jsonl
../cpp-build/bin/Adams res_csv S0_Adams_res.db S0_Adams_res resolution.csv
```

The computation succeeded in about 0.427 seconds with 16 free-generator records
and 20 Groebner relations. Source input `Coh_S0` uses generator degree 0 with
relations Sq^(2^i) times the generator, through the requested range. The raw
resolution schema is `S0_Adams_res_generators(id,vid,s,t,diff BLOB)`, where
`id=s*524288+vid`. Additional tables store x1/x2/x2m resolution reduction data.

`res_export.cpp` reads each actual MMod BLOB with the pinned upstream
`MMod::m().ToXi()` API and exports eight Milnor exponents plus target local ID.
It rejects NULL differentials, malformed BLOB sizes and SQLite stepping errors.
It is S0-schema-specific and host-endian, and does not prove the BLOB decoder
correct. The source and database hashes and command are in `actual-s0/manifest.json`.
Compile it using the pinned `include` and `thirdparty/fmt/include` paths and
`-std=c++20 -lsqlite3`.

`ActualResolution.lean` imports all 16 records, checks version, unique IDs,
local-ID encoding, degrees, monomial sizes, zero unused exponents, existence of
targets and differential grading. It reconstructs two-step compositions **in
Lean from the raw imported differentials**. For every target module generator
and every dual monomial of rank 3 and degree <=8, it checks the composite
coefficient by Milnor coproduct pairing. Targets absent from the composite
are also covered by a proved zero-coefficient lemma.

`RawResolutionExample.actualResolutionSquareZero` was checked successfully by
Lean kernel reduction with standard axioms only (`propext`, `Classical.choice`,
`Quot.sound`). This is an actual computed S0 differential dataset with finite
square-zero checks. It does **not** yet prove exactness, identify abstract free
Steenrod modules, upgrade finite pairing to unbounded multiplication, or identify
Ext/Adams E2. No missing/NULL value is treated as a zero differential.

## Finite exactness

`generate_exactness.py` enumerates every supplied resolution generator and every
rank-three Milnor monomial in the residual internal degree, for all 0<=s<=t<=8.
It forms differential matrices by left A-linear extension of the actual raw
generator images, then invokes the C++ Gaussian contraction producer. All 45
contractions (including the augmentation position s=0) are generated under
`actual-s0/exactness`.

`FiniteExactness.lean` independently enumerates the same free-coordinate sets
and recomputes all differential entries from raw data by Milnor coproduct
pairing. `checkLinked` checks exported matrix entries against these definitions.
`checkRawExact` additionally constructs the contraction in the raw dimensions
and checks it against the **raw-generated matrices themselves**.
`checkRawExact_sound` concludes `ExactAt (augmentedOutgoing rows s t)
(freeDifferential rows s t)`. Thus the conclusion is exactness of the semantic
finite maps, not merely consistency of C++ matrices or a Boolean linking flag.

This closes finite-coordinate exactness in the specified range. It still does
not prove the identification of these coordinate spaces with unbounded free
Steenrod modules, completeness of the raw resolution beyond the supplied range,
or the abstract projective-resolution theorem computing Ext.

All 45 generated direct `ExactAt` theorem cases compiled successfully. The
generation/check commands from program/ are:

```sh
python3 ExtComplexCertificates/generate_exactness.py
lake env lean -j1 ExtComplexCertificates/FiniteExactness.lean
lake env lean -j1 ExtComplexCertificates/ActualExactnessExamples.lean
lake env lean -j1 ExtComplexCertificates/ExactnessTactic.lean
```

The completed 45-case run used Lean's default worker setting; subsequent checks
use explicit `-j1` for serial compilation. `ExactnessTactic.lean` provides
`RawExactClaim` and `lin_cert using witness`, and rejects tampered contraction
entries and a removed raw generator. It compiled with `-j1`. The exactness
soundness theorem uses only `propext` and `Quot.sound`. Source pin remains
`23d12c973db2b294a6c00c15bd106e70b0af3fa6`; generated witness hashes are in
`actual-s0/exactness/checksums.json`.

## Actual minimal Hom coordinates

`MinimalHom.lean` checks every raw differential coefficient has positive Milnor
degree and zero augmentation (constant coefficient). It proves precomposition
is zero for **every** assignment of F2 values to target generators. The typed
`HomCoordinates` and `coordinateDifferential` use the actual generator lists;
`coordinateDifferential_zero`, `all_cochains_cycles` and `boundaries_only_zero`
prove all cochains are cycles and the only boundaries are zero. Consequently
the finite coordinate cohomology has one free Boolean coordinate per generator;
an abstract Ext_A comparison is still not supplied.

`compare_hom.py` independently queries the archived paper S0 E2 basis table.
All 45 bidegree counts for t<=8 agree with the 16 total newly computed raw
resolution generators. The JSON records source hash and comparison status;
`MinimalHomDimensions.lean` kernel-checks all 45 generator counts. Agreement
of dimensions is not an identification of cohomology objects or named bases.

The exporter is now reproducibly built by
`make ExtComplexCertificates/res-export` from program/.
`make test-actual` checks deterministic raw-resolution output, malformed/NULL
BLOB rejection, and the named Cnu/Fact7.13 finite d2 source certificates.

## Ring, module, homogeneous exactness, and actual Hom cohomology

The later Lean chain now supplies the representation bridges that the original
finite-coordinate stages left open. `MilnorCertificates.BundledDual` defines
a genuine ring on all rank-three dual coefficient functions. This ring allows
infinite support across degrees; it is not identified with the full Steenrod
algebra.

`ActualResolutionRing` promotes the imported two-step products to zero in that
ring on every monomial, using the checked window and the general degree-support
theorem. `ActualModuleComplex` defines the actual 16-generator free left module,
its linear differential, degree descent, and `d.comp d = 0`. Left coefficients
multiply the raw terms in the order coefficient * outer * inner.

`ActualHomogeneousCoordinates` proves extraction/reconstruction inverses with
the exact ordered `freeBasis` coordinates, including uniqueness, completeness,
and vanishing of all other coefficients. `ActualDifferentialCoordinates`
proves actual module-level intertwining for every coordinate vector and
preservation of the homogeneous components. `ActualHomogeneousExactness`
transports the original 45 contraction theorems, proving every positive-degree
homogeneous cycle is a boundary for internal degree t<=8. Above-diagonal
components are proved zero. `ActualAugmentation` supplies the root constant-
coefficient augmentation, an explicit homogeneous section, epsilon composed
with d equal to zero, and degree-zero augmentation-kernel exactness for t<=8.

`ActualAugmentationHom` constructs the coefficient augmentation as a RingHom,
the field as a module through that RingHom, and genuine R-linear maps out of
the actual free module. Their precomposition with d is zero. Bidegree-supported
maps are equivalent to the corresponding raw-generator coordinates.
`ActualHomCohomology` defines the actual cochain differential by this
precomposition and its kernel/image quotient, with an additive equivalence to
`Fin (actualHomDimension s t) -> AugmentationField`. This is a cohomology-object
identification, not merely equality of dimensions. The coordinate ordering of
this last equivalence is not asserted to be the archived paper's named basis.

The chain does not prove exactness in internal degrees above eight, does not
supply a complete resolution over the full Steenrod algebra, and does not
identify this Hom cohomology with Ext_A. The upstream source pin and provenance
limitations stated earlier remain unchanged. All these new module files were
individually compiled; their audited theorem dependencies contain only the
standard `propext`, `Classical.choice`, and `Quot.sound`. Full-project logs are
maintained by the integration task.

The finite-support restriction is now implemented in ActualFiniteModule and ActualFiniteExactness: an injective coefficient inclusion intertwines the actual differentials, and homogeneous exactness witnesses through t<=8 lift into the finite ring. This does not yet identify the existing full-dual Hom cohomology with the finite-ring Hom cohomology; that comparison is a separate remaining obligation. Full maintained build1715 includes these files.
