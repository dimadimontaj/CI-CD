FLAGS = -Wall -Wextra -Werror -std=c11 -pedantic

all: s21_grep

s21_grep: 
	gcc $(FLAGS) s21_grep.c -o s21_grep

format:
	clang-format -n *.c *.h

fix:
	clang-format -i *.c *.h

test: clean fix reset s21_grep
	sh test.sh
	sh test2.sh

rebuild: clean build

mem:
	leaks -atExit -- ./s21_grep
cpp:
	cppcheck --enable=all --suppress=missingIncludeSystem ./*.c

clean:
	rm -rf s21_grep s21_grep.dSYM

reset:
	reset | bash

