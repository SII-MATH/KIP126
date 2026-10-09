CXX ?= c++
CXXFLAGS ?= -O2 -std=c++17 -Wall -Wextra -pedantic
all: generic-free-export generic-components

generic-free-export: export.cpp ../MilnorCertificates/export.cpp
	$(CXX) $(CXXFLAGS) export.cpp -o $@

generic-components: components.cpp export.cpp ../MilnorCertificates/export.cpp
	$(CXX) $(CXXFLAGS) components.cpp -o $@

test: generic-free-export generic-components
	python3 test.py
	python3 component_test.py

.PHONY: all test
