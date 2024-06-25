#!/bin/bash

scp cat/s21_cat neman@192.168.100.11:/usr/local/bin/
scp grep/s21_grep neman@192.168.100.11:/usr/local/bin/

ssh neman@192.168.100.11 ls -lah /usr/local/bin/
