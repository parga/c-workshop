CC = clang  # Or gcc
CFLAGS = -Wall -Wextra -O2 -g
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
TARGET = my_program

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

watch:
	pgrep $(TARGET) && pkill $(TARGET); \
	find . -name "*.c" -o -name "*.h" | entr -r sh -c 'make && sleep 2 && clear && $(TARGET)'


run: $(TARGET)
	# clear
	./$(TARGET)
