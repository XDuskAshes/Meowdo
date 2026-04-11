CC      = gcc
CFLAGS  = -O2 -Wall
LIBS    = $(shell pkg-config --libs ncursesw 2>/dev/null || echo -lncursesw)

meowdo: meowdo.c
	$(CC) $(CFLAGS) -o $@ $< $(LIBS)

clean:
	rm -f meowdo
