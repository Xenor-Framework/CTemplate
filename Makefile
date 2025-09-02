CC=clang
CFLAGS=-Wall -Wextra -Iinclude -O3 -DNDEBUG -DRELEASE_BUILD -march=native -mtune=native -flto
LDFLAGS=-flto -Wl,--gc-sections -s
SRC=$(wildcard src/*.c)
OBJ=$(SRC:.c=.o)
TARGET=bin/CHANGE_ME

all: $(TARGET)

$(TARGET): $(OBJ)
	@mkdir -p bin
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

clean:
	rm -rf src/*.o bin/

.PHONY: all clean