CXX ?= g++
CXXFLAGS ?= -O2 -std=c++17 -Wall -Wextra -Werror

.PHONY: all test
all: prefix-export

prefix-export: prefix_export.cpp ../PageTransitionCertificates/trajectory-export
	$(CXX) $(CXXFLAGS) prefix_export.cpp -o $@

../PageTransitionCertificates/trajectory-export: ../PageTransitionCertificates/trajectory_export.cpp ../PageTransitionCertificates/export.cpp
	$(MAKE) -C .. PageTransitionCertificates/trajectory-export

test: prefix-export
	python3 test_import.py
