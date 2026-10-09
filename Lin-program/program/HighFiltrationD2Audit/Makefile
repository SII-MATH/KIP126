CXX ?= c++
CXXFLAGS ?= -std=c++17 -O2 -Wall -Wextra -Werror

.PHONY: all test
all: d2-basis-export

d2-basis-export: export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

test: d2-basis-export
	python3 test_export.py
