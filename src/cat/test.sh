#!/bin/bash

rm test/s21_cat.txt test/cat.txt diff.txt
echo
echo
echo TEST_1_CAT.TXT
echo
echo no flag
./s21_cat test/test_1_cat.txt >> test/s21_cat.txt
cat test/test_1_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -b
./s21_cat -b test/test_1_cat.txt >> test/s21_cat.txt
cat -b test/test_1_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -e
./s21_cat -e test/test_1_cat.txt >> test/s21_cat.txt
cat -e test/test_1_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -n
./s21_cat -n test/test_1_cat.txt >> test/s21_cat.txt
cat -n test/test_1_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -s
./s21_cat -s test/test_1_cat.txt >> test/s21_cat.txt
cat -s test/test_1_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -t
./s21_cat -t test/test_1_cat.txt >> test/s21_cat.txt
cat -t test/test_1_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -v
./s21_cat -v test/test_1_cat.txt >> test/s21_cat.txt
cat -v test/test_1_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
# echo
# echo --number-nonblank
# ./s21_cat --number-nonblank test/test_1_cat.txt >> test/s21_cat.txt
# cat --number-nonblank test/test_1_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
# echo
# echo --number
# ./s21_cat --number test/test_1_cat.txt >> test/s21_cat.txt
# cat --number test/test_1_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
# echo
# echo --squeeze
# ./s21_cat --squeeze test/test_1_cat.txt >> test/s21_cat.txt
# cat --squeeze test/test_1_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
echo
echo
echo TEST_2_CAT.TXT
echo
echo no flag
./s21_cat test/test_2_cat.txt >> test/s21_cat.txt
cat test/test_2_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -b
./s21_cat -b test/test_2_cat.txt >> test/s21_cat.txt
cat -b test/test_2_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -e
./s21_cat -e test/test_2_cat.txt >> test/s21_cat.txt
cat -e test/test_2_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -n
./s21_cat -n test/test_2_cat.txt >> test/s21_cat.txt
cat -n test/test_2_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -s
./s21_cat -s test/test_2_cat.txt >> test/s21_cat.txt
cat -s test/test_2_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -t
./s21_cat -t test/test_2_cat.txt >> test/s21_cat.txt
cat -t test/test_2_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -v
./s21_cat -v test/test_2_cat.txt >> test/s21_cat.txt
cat -v test/test_2_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
# echo
# echo --number-nonblank
# ./s21_cat --number-nonblank test/test_2_cat.txt >> test/s21_cat.txt
# cat --number-nonblank test/test_2_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
# echo
# echo --number
# ./s21_cat --number test/test_2_cat.txt >> test/s21_cat.txt
# cat --number test/test_2_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
# echo
# echo --squeeze
# ./s21_cat --squeeze test/test_2_cat.txt >> test/s21_cat.txt
# cat --squeeze test/test_2_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
echo
echo
echo TEST_3_CAT.TXT
echo
echo no flag
./s21_cat test/test_3_cat.txt >> test/s21_cat.txt
cat test/test_3_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -b
./s21_cat -b test/test_3_cat.txt >> test/s21_cat.txt
cat -b test/test_3_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -e
./s21_cat -e test/test_3_cat.txt >> test/s21_cat.txt
cat -e test/test_3_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -n
./s21_cat -n test/test_3_cat.txt >> test/s21_cat.txt
cat -n test/test_3_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -s
./s21_cat -s test/test_3_cat.txt >> test/s21_cat.txt
cat -s test/test_3_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -t
./s21_cat -t test/test_3_cat.txt >> test/s21_cat.txt
cat -t test/test_3_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -v
./s21_cat -v test/test_3_cat.txt >> test/s21_cat.txt
cat -v test/test_3_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
# echo
# echo --number-nonblank
# ./s21_cat --number-nonblank test/test_3_cat.txt >> test/s21_cat.txt
# cat --number-nonblank test/test_3_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
# echo
# echo --number
# ./s21_cat --number test/test_3_cat.txt >> test/s21_cat.txt
# cat --number test/test_3_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
# echo
# echo --squeeze
# ./s21_cat --squeeze test/test_3_cat.txt >> test/s21_cat.txt
# cat --squeeze test/test_3_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
echo
echo
echo TEST_4_CAT.TXT
echo
echo no flags
./s21_cat test/test_4_cat.txt >> test/s21_cat.txt
cat test/test_4_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -b
./s21_cat -b test/test_4_cat.txt >> test/s21_cat.txt
cat -b test/test_4_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -e
./s21_cat -e test/test_4_cat.txt >> test/s21_cat.txt
cat -e test/test_4_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -n
./s21_cat -n test/test_4_cat.txt >> test/s21_cat.txt
cat -n test/test_4_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -s
./s21_cat -s test/test_4_cat.txt >> test/s21_cat.txt
cat -s test/test_4_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -t
./s21_cat -t test/test_4_cat.txt >> test/s21_cat.txt
cat -t test/test_4_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -v
./s21_cat -v test/test_4_cat.txt >> test/s21_cat.txt
cat -v test/test_4_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
# echo
# echo --number-nonblank
# ./s21_cat --number-nonblank test/test_4_cat.txt >> test/s21_cat.txt
# cat --number-nonblank test/test_4_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
# echo
# echo --number
# ./s21_cat --number test/test_4_cat.txt >> test/s21_cat.txt
# cat --number test/test_4_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
# echo
# echo --squeeze
# ./s21_cat --squeeze test/test_4_cat.txt >> test/s21_cat.txt
# cat --squeeze test/test_4_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
echo
echo
echo TEST_5_CAT.TXT
echo
echo no flag
./s21_cat test/test_5_cat.txt >> test/s21_cat.txt
cat test/test_5_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -b
./s21_cat -b test/test_5_cat.txt >> test/s21_cat.txt
cat -b test/test_5_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -e
./s21_cat -e test/test_5_cat.txt >> test/s21_cat.txt
cat -e test/test_5_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -n
./s21_cat -n test/test_5_cat.txt >> test/s21_cat.txt
cat -n test/test_5_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -s
./s21_cat -s test/test_5_cat.txt >> test/s21_cat.txt
cat -s test/test_5_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -t
./s21_cat -t test/test_5_cat.txt >> test/s21_cat.txt
cat -t test/test_5_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
echo
echo -v
./s21_cat -v test/test_5_cat.txt >> test/s21_cat.txt
cat -v test/test_5_cat.txt >> test/cat.txt
diff -s test/s21_cat.txt test/cat.txt >> diff.txt
diff -s test/s21_cat.txt test/cat.txt
rm test/s21_cat.txt test/cat.txt
# echo
# echo --number-nonblank
# ./s21_cat --number-nonblank test/test_5_cat.txt >> test/s21_cat.txt
# cat --number-nonblank test/test_5_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
# echo
# echo --number
# ./s21_cat --number test/test_5_cat.txt >> test/s21_cat.txt
# cat --number test/test_5_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
# echo
# echo --squeeze
# ./s21_cat --squeeze test/test_5_cat.txt >> test/s21_cat.txt
# cat --squeeze test/test_5_cat.txt >> test/cat.txt
# diff -s test/s21_cat.txt test/cat.txt >> diff.txt
# diff -s test/s21_cat.txt test/cat.txt
# rm test/s21_cat.txt test/cat.txt
