CXX ?= c++
CXXFLAGS ?= -O2 -std=c++17 -Wall -Wextra -pedantic

all: representative-square-export

representative-square-export: export.cpp ../IndexedFamilyProducer/json.hpp
	$(CXX) $(CXXFLAGS) export.cpp -o $@

test: all
	python3 test.py

.PHONY: all test
