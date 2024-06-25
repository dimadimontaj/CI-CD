#!/bin/bash

if [ -f "clang_out.txt" ];
then
	if [ -s "clang_out.txt" ];
	then
		exit 1
	else
		echo "No style errors were found"
		echo "Code is clang-formatted"
	fi
else
	echo "clang_out.txt file doesn't exist"
	echo "Run the code style check to generate the file"
	exit 1
fi