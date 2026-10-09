CXX ?= c++
CXXFLAGS ?= -std=c++17 -O2 -Wall -Wextra -Wpedantic

.PHONY: all clean test test-actual test-augmented-cli test-family-cli export-manifest export-claims

test-family-cli:
	python3 IndexedFamilyCertificates/cli_test.py
	python3 IndexedFamilyProducer/HighD2/cli_test.py
	python3 IndexedFamilyProducer/HighD2/request_cli_test.py
	python3 IndexedFamilyProducer/D5/cli_test.py
	python3 IndexedFamilyProducer/D5/request_cli_test.py
	python3 AggregateIncomingTargetCompletion/cli_test.py

test-augmented-cli:
	python3 ExtComplexCertificates/check_augmented_cli_test.py

all: GenericFreeComplexProducer/generic-free-export
all: GenericFreeComplexProducer/generic-components
all: GenericFreeComplexProducer/generic-augmented
all: FiniteEventProducer/finite-event-export
all: FiniteEventProducer/indexed-event-export
all: IndexedFamilyProducer/indexed-family-export
all: HighFiltrationD2Audit/d2-basis-export
all: PermanentCycleCertificates/prefix-export UniqueHomologyCertificates/unique-export
all: OutgoingCycleCertificates/outgoing-prefix-export
all: RepresentativeSquareProducer/representative-square-export
all: FilteredExtensionProducer/filtered-extension-export
all: FilteredCrossingCertificates/filtered-stable-export
all: FiniteFilteredSquareProducer/finite-filtered-square-export
all: Row3152BranchCertificates/row3152-path-export

Row3152BranchCertificates/row3152-path-export: Row3152BranchCertificates/export.cpp IndexedFamilyProducer/json.hpp
	$(CXX) $(CXXFLAGS) $< -o $@

FiniteFilteredSquareProducer/finite-filtered-square-export: FiniteFilteredSquareProducer/export.cpp IndexedFamilyProducer/json.hpp
	$(CXX) $(CXXFLAGS) $< -o $@

FilteredCrossingCertificates/filtered-stable-export: FilteredCrossingCertificates/export.cpp FilteredExtensionProducer/export.cpp IndexedFamilyProducer/json.hpp
	$(CXX) $(CXXFLAGS) $< -o $@

FilteredExtensionProducer/filtered-extension-export: FilteredExtensionProducer/export.cpp IndexedFamilyProducer/json.hpp
	$(CXX) $(CXXFLAGS) $< -o $@

RepresentativeSquareProducer/representative-square-export: RepresentativeSquareProducer/export.cpp IndexedFamilyProducer/json.hpp
	$(CXX) $(CXXFLAGS) $< -o $@

OutgoingCycleCertificates/outgoing-prefix-export: OutgoingCycleCertificates/export.cpp PermanentCycleCertificates/prefix_export.cpp PageTransitionCertificates/trajectory-export
	$(CXX) $(CXXFLAGS) $< -o $@

PermanentCycleCertificates/prefix-export: PermanentCycleCertificates/prefix_export.cpp PageTransitionCertificates/trajectory-export
	$(CXX) $(CXXFLAGS) $< -o $@

UniqueHomologyCertificates/unique-export: UniqueHomologyCertificates/export.cpp PageTransitionCertificates/export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

HighFiltrationD2Audit/d2-basis-export: HighFiltrationD2Audit/export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

IndexedFamilyProducer/indexed-family-export: IndexedFamilyProducer/export.cpp IndexedFamilyProducer/json.hpp
	$(CXX) $(CXXFLAGS) $< -o $@

FiniteEventProducer/indexed-event-export: FiniteEventProducer/indexed.cpp FiniteEventProducer/export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

FiniteEventProducer/finite-event-export: FiniteEventProducer/export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

GenericFreeComplexProducer/generic-augmented: GenericFreeComplexProducer/augmented.cpp GenericFreeComplexProducer/components.cpp GenericFreeComplexProducer/export.cpp MilnorCertificates/export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

GenericFreeComplexProducer/generic-free-export: GenericFreeComplexProducer/export.cpp MilnorCertificates/export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

GenericFreeComplexProducer/generic-components: GenericFreeComplexProducer/components.cpp GenericFreeComplexProducer/export.cpp MilnorCertificates/export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

all: PageProductCertificates/page-product-export PageTransitionCertificates/trajectory-export NamedElementCertificates/module-export PageTransitionCertificates/induced-export StaircaseCertificates/staircase-export PageTransitionCertificates/page-transition-export ResolutionCertificates/resolution-export lin-cert-export d2-export LinearCertificates/linear_export MilnorCertificates/milnor-export PropagationCertificates/propagation-export

lin-cert-export: cert_export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

test: all
	mkdir -p tests/output
	./lin-cert-export self-test
	./lin-cert-export manifest tests/output/lin-program-manifest.jsonl
	test "$$(wc -l < tests/output/lin-program-manifest.jsonl)" -eq 295
	./lin-cert-export claims ../doc_data/kervaire_claims.csv tests/output/lin-program-claims.jsonl
	test "$$(wc -l < tests/output/lin-program-claims.jsonl)" -eq 18
	./lin-cert-export adams examples/adams_sample.csv tests/output/lin-program-adams.jsonl
	./lin-cert-export proofs examples/proof_sample.csv tests/output/lin-program-proof.jsonl

	python3 tests/test_export.py
	python3 tests/assert_claim_coverage.py
	python3 Step4ContractAudit/audit_coverage.py
	python3 tests/audit_search_coverage.py
	python3 tests/audit_event_coverage.py
	python3 LinearCertificates/test_export.py
	python3 ResolutionCertificates/test_export.py
	python3 PageTransitionCertificates/test_export.py
	python3 PageTransitionCertificates/test_induced_export.py
	python3 PageTransitionCertificates/test_trajectory_export.py
	python3 NamedElementCertificates/test_module_export.py
	python3 PageProductCertificates/test_export.py
	python3 GenericFreeComplexProducer/test.py
	python3 GenericFreeComplexProducer/component_test.py
	python3 GenericFreeComplexProducer/augmented_test.py
	python3 GenericFreeComplexProducer/augmented_review_test.py
	python3 FiniteEventProducer/test.py
	python3 FiniteEventProducer/indexed_test.py
	python3 FiniteEventProducer/D4/test.py
	python3 FiniteEventProducer/ThreeProduct/test.py
	python3 FiniteEventProducer/HighD2/test.py
	python3 FiniteEventProducer/D5/test.py
	python3 HighFiltrationD2Audit/test_export.py
	python3 IndexedFamilyProducer/test.py
	python3 IndexedFamilyProducer/HighD2/review.py
	python3 IndexedFamilyProducer/D5/review.py
	python3 AffineRemainingSearch/Pipeline/review.py
	python3 PermanentCycleCertificates/test_import.py
	python3 UniqueHomologyCertificates/test.py
	python3 OutgoingCycleCertificates/test.py
	python3 RepresentativeSquareProducer/test.py
	python3 FilteredExtensionProducer/test.py
	python3 FilteredCrossingCertificates/test.py
	python3 FiniteFilteredSquareProducer/test.py
	python3 Row3152BranchCertificates/review.py

test-actual: all ExtComplexCertificates/res-export
	python3 tests/test_res_export.py
	python3 CnuPageCertificates/review.py --check
	python3 Fact713PageCertificates/review.py --check
	python3 Fact761PageCertificates/review.py --check
	python3 Fact715PageCertificates/review.py --check
	python3 Fact719PageCertificates/review.py --check
	python3 Fact762PageCertificates/review.py --check
	python3 Fact763PageCertificates/review.py --check
	python3 Fact721PageCertificates/first-review.py --check
	python3 Fact721PageCertificates/second-review.py --check
	python3 NamedPageComparison/review.py
	python3 NamedPageComparison/review_d3.py
	python3 NamedPageComparison/Row2858/review_bridges.py
	python3 NamedPageComparison/Row2858/review_h1_zero.py
	python3 ModuleToModuleCertificates/assert_actual.py
	python3 PageProductCertificates/row2858_review.py
	python3 NamedPageComparison/review_conditional_higher.py
	python3 Fact719TrajectoryCertificates/review.py
	python3 Fact715TrajectoryCertificates/review.py
	python3 ModuleToModuleCertificates/test_module_ring_sources.py
	python3 SemilinearMapCertificates/assert_sources.py
	python3 Fact713TrajectoryCertificates/review.py

ExtComplexCertificates/res-export: ExtComplexCertificates/res_export.cpp
	$(CXX) $(filter-out -std=c++17,$(CXXFLAGS)) -std=c++20 -I ExtComplexCertificates/SSeqCpp-build-source/include -I ExtComplexCertificates/SSeqCpp-build-source/thirdparty/fmt/include $< -lsqlite3 -o $@

export-manifest: lin-cert-export
	./lin-cert-export manifest program-manifest.jsonl

export-claims: lin-cert-export
	./lin-cert-export claims ../doc_data/kervaire_claims.csv kervaire-claims.jsonl

clean:
	rm -f lin-cert-export program-manifest.jsonl kervaire-claims.jsonl Row3152BranchCertificates/row3152-path-export

d2-export: d2_export.cpp
	$(CXX) $(CXXFLAGS) $< -lsqlite3 -o $@

LinearCertificates/linear_export: LinearCertificates/linear_export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

MilnorCertificates/milnor-export: MilnorCertificates/export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

PropagationCertificates/propagation-export: PropagationCertificates/export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

ResolutionCertificates/resolution-export: ResolutionCertificates/export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

StaircaseCertificates/staircase-export: StaircaseCertificates/export.cpp
	$(CXX) $(CXXFLAGS) $< -lsqlite3 -o $@

PageTransitionCertificates/page-transition-export: PageTransitionCertificates/export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

PageTransitionCertificates/induced-export: PageTransitionCertificates/induced_export.cpp PageTransitionCertificates/export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

NamedElementCertificates/module-export: NamedElementCertificates/module_export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

PageTransitionCertificates/trajectory-export: PageTransitionCertificates/trajectory_export.cpp PageTransitionCertificates/export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

PageProductCertificates/page-product-export: PageProductCertificates/export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@
