#!/bin/bash

rm test/s21_grep.txt test/grep.txt
echo 
echo TEST_1_GREP.TXT
echo 
echo test 1 file
./s21_grep torvalds test/test_1_grep.txt > test/s21_grep.txt
grep torvalds test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -e test 1 file
./s21_grep -e torvalds test/test_1_grep.txt > test/s21_grep.txt
grep -e torvalds test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -e THINGS -e torvalds 1 file
./s21_grep -e THINGS -e torvalds test/test_1_grep.txt > test/s21_grep.txt
grep -e THINGS -e torvalds test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -i test 1 file
./s21_grep -i THINGS test/test_1_grep.txt > test/s21_grep.txt
grep -i THINGS test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -v test 1 file
./s21_grep -v torvalds test/test_1_grep.txt > test/s21_grep.txt
grep -v torvalds test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -c test 1 file
./s21_grep -c torvalds test/test_1_grep.txt > test/s21_grep.txt
grep -c torvalds test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -l test 1 file
./s21_grep -l torvalds test/test_1_grep.txt > test/s21_grep.txt
grep -l torvalds test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -n test 1 file
./s21_grep -n torvalds test/test_1_grep.txt > test/s21_grep.txt
grep -n torvalds test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -h test 1 file
./s21_grep -h torvalds test/test_1_grep.txt > test/s21_grep.txt
grep -h torvalds test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -s test 1 file
./s21_grep -s torvalds test/test_1_grep.txt > test/s21_grep.txt
grep -s torvalds test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -f pattern.txt 1 file
./s21_grep -f test/pattern.txt test/test_1_grep.txt > test/s21_grep.txt
grep -f test/pattern.txt test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -o test 1 file
./s21_grep -o 000 test/test_1_grep.txt > test/s21_grep.txt
grep -o 000 test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -in test 1 file
./s21_grep -in OS test/test_1_grep.txt > test/s21_grep.txt
grep -in OS test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -iv test 1 file
./s21_grep -iv OS test/test_1_grep.txt > test/s21_grep.txt
grep -iv OS test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt


echo 
echo -lv test 1 file
./s21_grep -lv OS test/test_1_grep.txt > test/s21_grep.txt
grep -lv OS test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -clv test 1 file
./s21_grep -clv OS test/test_1_grep.txt > test/s21_grep.txt
grep -clv OS test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -cv test 1 file
./s21_grep -cv OS test/test_1_grep.txt > test/s21_grep.txt
grep -cv OS test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -cl test 1 file
./s21_grep -cl OS test/test_1_grep.txt > test/s21_grep.txt
grep -cl OS test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -vn test 1 file
./s21_grep -vn OS test/test_1_grep.txt > test/s21_grep.txt
grep -vn OS test/test_1_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt
echo 
echo 
echo TEST_2_GREP.TXT
echo 
echo test 2 file
./s21_grep torvalds test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep torvalds test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -e torvalds 2 file
./s21_grep -e torvalds test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -e torvalds test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -e THINGS -e torvalds 2 file
./s21_grep -e THINGS -e torvalds test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -e THINGS -e torvalds test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -i test 2 file
./s21_grep -i THINGS test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -i THINGS test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -v test 2 file
./s21_grep -v torvalds test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -v torvalds test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -c test 2 file
./s21_grep -c torvalds test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -c torvalds test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -l test 2 file
./s21_grep -l torvalds test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -l torvalds test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -n test 2 file
./s21_grep -n torvalds test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -n torvalds test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -h test 2 file
./s21_grep -h torvalds test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -h torvalds test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -s test 2 file
./s21_grep -s torvalds test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -s torvalds test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -f pattern.txt 2 file
./s21_grep -f test/pattern.txt test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -f test/pattern.txt test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -o test 2 file
./s21_grep -o OOO test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -o OOO test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -in test 2 file
./s21_grep -in OS test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -in OS test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -iv test 2 file
./s21_grep -iv OS test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -iv OS test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -lv test 2 file
./s21_grep -lv OS test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -lv OS test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -clv test 2 file
./s21_grep -clv OS test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -clv OS test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -cv test 2 file
./s21_grep -cv OS test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -cv OS test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -cl test 2 file
./s21_grep -cl OS test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -cl OS test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -vn test 2 file
./s21_grep -vn OS test/test_1_grep.txt test/test_2_grep.txt > test/s21_grep.txt
grep -vn OS test/test_1_grep.txt test/test_2_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt
echo 
echo 
echo TEST_3_GREP.TXT
echo 
echo test 3 file
./s21_grep torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -e torvalds 3 file
./s21_grep -e torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -e torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -e THINGS -e torvalds 3 file
./s21_grep -e THINGS -e torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -e THINGS -e torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -i test 3 file
./s21_grep -i THINGS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -i THINGS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -v test 3 file
./s21_grep -v torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -v torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -c test 3 file
./s21_grep -c torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -c torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -l test 3 file
./s21_grep -l torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -l torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -n test 3 file
./s21_grep -n torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -n torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -h test 3 file
./s21_grep -h torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -h torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -s test 3 file
./s21_grep -s torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -s torvalds test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -f pattern.txt 3 file
./s21_grep -f test/pattern.txt test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -f test/pattern.txt test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -o test 3 file
./s21_grep -o 00 test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -o 00 test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -in test 3 file
./s21_grep -in OS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -in OS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -iv test 3 file
./s21_grep -iv OS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -iv OS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -lv test 3 file
./s21_grep -lv OS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -lv OS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -clv test 3 file
./s21_grep -clv OS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -clv OS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -cv test 3 file
./s21_grep -cv OS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -cv OS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -cl test 3 file
./s21_grep -cl OS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -cl OS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt

echo 
echo -vn test 3 file
./s21_grep -vn OS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/s21_grep.txt
grep -vn OS test/test_1_grep.txt test/test_2_grep.txt test/test_3_grep.txt > test/grep.txt
diff -s test/s21_grep.txt test/grep.txt
rm test/s21_grep.txt test/grep.txt