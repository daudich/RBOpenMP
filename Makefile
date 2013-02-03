FLAGS = -std=c99 -Wall -g -lm -omp -pthread -pedantic -o2
CC = gcc
FILES = server.c

all: objects
	$(CC) $(FLAGS) orbs.o -o orbs

objects: $(FILES)
	$(CC) $(FLAGS) -c server.c -o server.o

clean: 
	rm redblue.txt output.txt *.o orbs

run: all
	echo "USAGE: ./orbs p[1..16] b[1..N] t[2..N] c[1..99] m[1..100] s[1..n] [i]"
