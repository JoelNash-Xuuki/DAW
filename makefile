SRC		= src/modsyn.cpp
CC		= g++

modsyn: $(SRC) 
	$(CC) $(SRC) -o ~/.bin/modsyn
