#ifndef S21_GREP_H_
#define S21_GREP_H_

#include <getopt.h>
#include <regex.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BUFFER 10000

typedef struct {
  int e;
  int i;
  int v;
  int c;
  int l;
  int n;
  int h;
  int s;
  int o;
  int f;
  int counter;
  int count_flag;
  char file_string[BUFFER];
  char string_o[BUFFER];
  char pattern_file[BUFFER];
  char data_pattern[BUFFER];
  int string_number;
} FLAGS;

void read_flag(int argc, char *argv[], FLAGS *flag);
void output(char *argv[], FLAGS *flag);
void flag_f(FLAGS *flag);

#endif