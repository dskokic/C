#!/bin/bash

# using -I compiler (preprocessor) option to tell preprocessor in which 
# directories, in additon to standard ones (/usr/include, /usr/include/sys),
# to search for header files

# compile C file
gcc -c -I . main.c

# compile c++ file
# to compile without assertions included use NDEBUG macro when calling g++
# g++ -c -D NDEBUG -I . reciprocal.cpp
g++ -c -I . reciprocal.cpp

# link both files
g++ -o rec main.o reciprocal.o
