CC = clang  # Or gcc
CFLAGS = -Wall -Wextra -O2 -g
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
TARGET = my_program

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

watch:
	pgrep $(TARGET) && pkill $(TARGET); \
	ls *.c | entr -r sh -c 'make && sleep 2 && clear && ./$(TARGET)'


run: $(TARGET)
	# clear
	./$(TARGET)
