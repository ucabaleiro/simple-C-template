# Use "make" in the console to compile.

# Setup:
#	Change the PROGRAM macro to the name of your program.
#	Change the FILE_EXT macro to the file extension you want for the outfile (can be left blank).
#	Add the corresponding libraries to LIBS if needed.
#	You can change the compiler in CC.
#	You can add compiler flags to CFLAGS.

PROGRAM=programName

FILE_EXT=.out

OUTFILE=$(PROGRAM)$(FILE_EXT)

CC=gcc
CFLAGS=-I$(IDIR) -g -Wall
LIBS=

IDIR=./include
SDIR=./src
ODIR=./obj


DEPS=$(wildcard $(IDIR)/*.h)
SRC=$(wildcard $(SDIR)/*.c)
OBJ=$(patsubst $(SDIR)/%.c,$(ODIR)/%.o,$(SRC))

$(PROGRAM): $(OBJ)
	$(CC) -o $(OUTFILE) $^ $(CFLAGS) $(LIBS)

$(ODIR)/%.o: $(SDIR)/%.c $(DEPS) $(ODIR)
	$(CC) -c -o $@ $< $(CFLAGS)

$(ODIR):
	mkdir -p $@

.PHONY: clean run

clean:
	rm -f $(ODIR)/*.o $(OUTFILE) $(TESTS_OUFILE)

run:
	make clean
	make $(PROGRAM)
	./$(OUTFILE)