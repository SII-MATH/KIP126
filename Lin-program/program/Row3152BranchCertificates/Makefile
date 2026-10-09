CXX ?= c++
CXXFLAGS ?= -O2 -std=c++17
all: row3152-path-export
row3152-path-export: export.cpp ../IndexedFamilyProducer/json.hpp
	$(CXX) $(CXXFLAGS) $< -o $@
.PHONY: all
