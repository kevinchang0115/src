AR       := ar
ARFLAGS  := cr
CXX      := g++
CPPFLAGS := -O2 -I../lib

all : ../bin/DPT_balance_color
	@echo -n ""

clean :
	rm *.o ../bin/DPT_balance_color

../bin/DPT_balance_color : main.o graph.o myString.o
	$(CXX) $^ -o $@

main.o : main.cpp graph.h
	$(CXX) $(CPPFLAGS) -c $< -o $@

graph.o : graph.cpp graph.h
	$(CXX) $(CPPFLAGS) -c $< -o $@
	
myString.o : myString.cpp
	$(CXX) $(CPPFLAGS) -c $< -o $@

