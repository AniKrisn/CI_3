CC = gcc
CFLAGS = -Wall -Wextra -std=c99
DEPS = chunk.h common.h

# If you add more source files, add them to SRCS
SRCS = main.c
OBJS = $(SRCS:.c=.o)
TARGET = main

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET)