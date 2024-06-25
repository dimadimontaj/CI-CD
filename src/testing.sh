#!/bin/bash
RES=0
cd cat/
make test &> result_cat.txt
RES_C=$(grep -c "<" result_cat.txt)
if [ "$RES_C" -ne "$RES" ]; then
    exit 1
fi
rm -rf result_cat.txt diff.txt
cd ../grep
make test &> result_grep.txt
RES_G=$(grep -c "<" result_grep.txt)
if [ "$RES_C" -ne "$RES" ]; then
    exit 1
fi
rm -rf result_grep.txt diff.txt
