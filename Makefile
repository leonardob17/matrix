all: debug
debug: Matrix.o SymbolabFormatter.o WolframAlphaFormatter.o main.o
	g++ -o debug Matrix.o SymbolabFormatter.o WolframAlphaFormatter.o main.o
Matrix.o: Matrix.cpp
	g++ -o Matrix.o -c Matrix.cpp -std=c++11 #-W -Wall -ansi -pedantic
SymbolabFormatter.o: SymbolabFormatter.cpp
	g++ -o SymbolabFormatter.o -c SymbolabFormatter.cpp -std=c++11 #-W -Wall -ansi -pedantic
WolframAlphaFormatter.o: WolframAlphaFormatter.cpp
	g++ -o WolframAlphaFormatter.o -c WolframAlphaFormatter.cpp -std=c++11 #-W -Wall -ansi -pedantic
main.o: main.cpp
	g++ -o main.o -c main.cpp -std=c++11 #-W -Wall -ansi -pedantic
clean:
	rm -rf *.o *.gch
mrproper: clean
	rm -rf debug
recompile: mrproper debug
