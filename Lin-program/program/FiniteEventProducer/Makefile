CXX ?= c++
CXXFLAGS ?= -O2 -std=c++17
all: finite-event-export indexed-event-export
finite-event-export: export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@
indexed-event-export: indexed.cpp export.cpp
	$(CXX) $(CXXFLAGS) $< -o $@
test: all
	python3 prepare.py
	./finite-event-export actual.input.jsonl > actual.jsonl
	./finite-event-export all87.input.jsonl > all87.jsonl
	python3 test.py
	python3 prepare_indexed.py
	./indexed-event-export indexed87.input.jsonl > indexed87.jsonl
	python3 indexed_test.py
.PHONY: all test
