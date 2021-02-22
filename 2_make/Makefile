# You can pass to this script a CFLAGS variable: just call make with setting
# CFLAGS variable
# 	make [CFLAGS=<gcc options>] [make target]
#
# e.g.: make
# 	make reciprocal.o
# 	make CFLAGS=-g
# 	make CFLAGS=-g reciprocal.o
# 	make CFLAGS="-g -O2"
#       make CGLAGS="-g -O2 -NDEBUG"
#       ...
#
SRC_DIR = ./src
INC_DIR = ./inc
BIN_DIR = ./bin

# List of targets that can be used as arguments when executing make.
# First target (rec) is the defaut target. So, when make executed
# with no arguments this target will be executed.
#
# Each target name ends with colon (:) after which follows a list of
# targets that this targets depends on (targets that will be executed
# automatically before executing rules in current target).
# What follows after the target line is set of one or more commands,
# called rules, that will be executed when this target is invoked.
# IMPORTANT: each rule must start with TAB character!!!

# rec target is executed when make is called with "make", or "make rec"
rec: main.o reciprocal.o
	g++ $(CFLAGS) -o $(BIN_DIR)/rec $(BIN_DIR)/main.o $(BIN_DIR)/reciprocal.o

# main.o target is executed when make is called with "make main.o"
main.o: $(SRC_DIR)/main.c $(INC_DIR)/reciprocal.hpp
	mkdir -p $(BIN_DIR)
	gcc $(CFLAGS) -c -I . -o $(BIN_DIR)/main.o $(SRC_DIR)/main.c

# reciprocal.o target is executed when make is called with "make reciprocal.o"
reciprocal.o: $(SRC_DIR)/reciprocal.cpp $(INC_DIR)/reciprocal.hpp
	mkdir -p $(BIN_DIR)
	g++ $(CFLAGS) -c -I . -o $(BIN_DIR)/reciprocal.o $(SRC_DIR)/reciprocal.cpp

# clean target is executed when make is called with "make clean"
clean:
	rm -f $(BIN_DIR)/*
