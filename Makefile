SHELL:='/bin/bash'
CXX=g++
IDIR=include/mcpm/
IDIRS=-Iinclude/
CFLAGS=-std=c++17 -Wall -O2 $(IDIRS) $(LDIR) -fopenmp

_DEPS=graph.h binary_heap.h matching.h globals.h
DEPS=$(patsubst %,$(IDIR)%,$(_DEPS))

bin/example: example.cc
	$(CXX) example.cc -Iinclude/ -o bin/example

.PHONY: clean

clean:
	rm $(ODIR)*.o $(LIB_PATH)*
