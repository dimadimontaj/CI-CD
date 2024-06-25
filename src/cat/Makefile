FLAGS = -Wall -Wextra -Werror -std=c11 -pedantic

all: s21_cat

s21_cat: 
	gcc $(FLAGS) s21_cat.c s21_raw_table.c -o s21_cat

format:
	clang-format -n *.c *.h

fix:
	clang-format -i *.c *.h

test: clean fix reset s21_cat
	sh test.sh

rebuild: clean build

mem:
	leaks -atExit -- ./s21_cat
cpp:
	cppcheck --enable=all --suppress=missingIncludeSystem ./*.c

clean:
	rm -rf s21_cat s21_cat.dSYM

reset:
	reset | bash