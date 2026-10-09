CXX ?= c++
CXXFLAGS ?= -O2 -std=c++17 -Wall -Wextra -pedantic

all: finite-filtered-square-export

finite-filtered-square-export: export.cpp ../IndexedFamilyProducer/json.hpp
	$(CXX) $(CXXFLAGS) export.cpp -o $@

test: all
	python3 test.py

.PHONY: all test
