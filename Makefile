BIN=bin/
OBJ=obj/
SRC=src/
INC=include/
CFLAG=-o
OBJFLAG=-c

all:    clean program

program:functions
	g++ ${CFLAG} ${BIN}server19 ${SRC}server.cpp ${OBJ}func.o
	g++ ${CFLAG} ${BIN}client19 ${SRC}client.cpp

functions:
	g++ ${OBJFLAG} ${CFLAG} ${OBJ}func.o ${SRC}func.cpp

clean:
	 rm ${OBJ}func.o
	rm ${BIN}server19
	rm ${BIN}client19
