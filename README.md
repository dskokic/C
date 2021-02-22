## C programming tutorials

### 1_compile_and_link
Shows how to compile together C and C++ files.
C program `main.c` uses function named `reciprocal()` written in C++. 
Source code of the function is found in file `reciprocal.cpp`, and 
its prototype is put into subdirectory `inc` (`./inc/reciprocal.hpp`).

### 2_make
Shows using make utility to automate compilation and linking of source
files (automate build process). Source files are the same as used in first
example (`1_compile_and_link`) but are organized in separate directories.
Just type `make` to build the code. To see how to use different make targets 
and how to use `CFLAGS` argument with make, please see `Makefile`. 


