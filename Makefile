BIN=bin/
OBJ=obj/
SRC=src/
INC=include/
CFLAG=-o
OBJFLAG=-c

all:    clean program

program:functions
	g++ ${CFLAG} ${BIN}server ${SRC}server.cpp ${OBJ}server.o
	g++ ${CFLAG} ${BIN}client ${SRC}client.cpp ${OBJ}client.o

functions:
	g++ ${OBJFLAG} ${CFLAG} ${OBJ}server.o ${SRC}serverProgram.cpp
	g++ ${OBJFLAG} ${CFLAG} ${OBJ}client.o ${SRC}clientProgram.cpp

clean:
	 rm ${OBJ}server.o
	 rm ${OBJ}client.o
	rm ${BIN}server
	rm ${BIN}client
