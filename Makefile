CXX := g++
CXXFLAGS := -g -O2 -Wall -std=gnu++17 -I .

.PHONY: test
test: $(ARGS)
	./$(ARGS) < test.txt
