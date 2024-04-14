CC=gcc

CFLAGS=-Wall -g

TARGET=my_program

all: $(TARGET)

$(TARGET): test.o server.o
	$(CC) $(CFLAGS) -o $(TARGET) test.o server.o

test.o: test.c server.h
	$(CC) $(CFLAGS) -c test.c

server.o: server.c server.h
	$(CC) $(CFLAGS) -c server.c

clean:
	rm -f $(TARGET) *.o

print-% : ; @echo $* = $($*)
