default: crush

PREFIX=/usr/local

#crush: crush.o
#	${CC} -s -o crush crush.o -ltestu01 -lprobdist -lmylib -lm

crush: crush.o
	${CC} -s -o crush crush.o -l:libtestu01.a -l:libprobdist.a -l:libmylib.a -lm

crush.o: crush.c
	${CC} -O2 -c crush.c

.PHONY: install

install: crush
	mkdir -p ${PREFIX}/bin/ \
	cp crush ${PREFIX}/bin/crush
