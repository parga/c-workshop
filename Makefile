CC = clang  # Or gcc
CFLAGS = -Wall -Wextra -O2
SRC = $(wildcard *.c)  # Find all .c files
OBJ = $(SRC:.c=.o)  # Convert .c files to .o files
TARGET = my_program  # Name of output executable

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)
