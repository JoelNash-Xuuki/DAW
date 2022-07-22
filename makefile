SRC		= src/modsyn.c
CC		= g++

modsyn: $(SRC) 
	$(CC) $(SRC) -o bin/modsyn
