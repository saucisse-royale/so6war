CC ?= cc
CCDILLE ?= ç
CFLAGS = -ansi -std=c11 -W -Wall -Werror -Wextra -Wno-unused-parameter -pedantic -pedantic-errors -g
LFLAGS = -lssl -lcrypto

all: main

main.c: main.c.fr
	$(CCDILLE) traduire main.c.fr
main: main.c
	$(CC) $(CFLAGS) -o main main.c $(LFLAGS)

.PHONY: clean
clean:
	rm -f main main.c
