CXX ?= c++
CXXFLAGS ?= -O2 -std=c++17
all: indexed-family-export
indexed-family-export: export.cpp json.hpp
	$(CXX) $(CXXFLAGS) export.cpp -o $@
test: all
	python3 prepare.py
	python3 test.py
.PHONY: all test
