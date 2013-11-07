#
# Makefile for GDB STL Utilities
#
# Code originally by Gilad Mishne
#
# Brought up to date for GCC 3.3.3/3.4.0 by Antal (Tony) Novak
#	see <http://www.stanford.edu/~afn/gdb_stl_utils>
#
# Makefile adapted for multi-architecture builds under Mac OS X
# by Reid Ellis <http://rae.tnir.org>, 2008-05-15
#
#
DEST = ~/.gdb
SSC = StlStdContainers
OS = $(shell uname -s)

install: $(SSC).o gdb_stl_utils
	@mkdir -p $(DEST)
	cp $(SSC).o $(DEST)/$(SSC).o
	sed -e 's!__DEST__!$(DEST)!' gdb_stl_utils >$(DEST)/gdb_stl_utils
	@echo ""
	@echo "Done. You may want to add the following line to your ~/.gdbinit:"
	@echo "         source $(DEST)/gdb_stl_utils"

clean:
	rm -f $(SSC)*.o

uninstall:
	rm -f $(DEST)/$(SSC)*.o $(DEST)/gdb_stl_utils

ifeq ($(OS), Darwin)
#
# build both PPC and Intel versions, then use lipo to make universal
#
$(SSC)-ppc.o: $(SSC).cc
	g++ -Wall -arch ppc  -g -o $@   -c $<

$(SSC)-intel.o: $(SSC).cc
	g++ -Wall -arch i386 -g -o $@ -c $<

$(SSC).o: $(SSC)-ppc.o $(SSC)-intel.o
	lipo -create $(SSC)-intel.o $(SSC)-ppc.o -o $(SSC).o
else
#
# standard version
#
$(SSC).o: $(SSC).cc
	g++ -Wall -g -o $@ -c $<
endif

.PHONY: install
