#CFLAGS = -g -O0
LDFLAGS = -lpthread
CC = g++

default: uffd

uffd.o: uffd.cpp
	$(CC) $(CFLAGS) -o $@ -c $^

uffd: uffd.o

.PHONY: clean

clean:
	@rm -f uffd.o uffd
