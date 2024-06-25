#ifndef FLAGS_S21_CAT_H
#define FLAGS_S21_CAT_H

#include <errno.h>
#include <getopt.h>
#include <stdio.h>
#include <string.h>

typedef struct {
  int number_non_blank;
  int mark_endl;
  int number_all;
  int squeeze;
  int tab;
  int print_non_printable;

} FLAGS;

void cat_set_table(const char *table[static 256]);
void cat_set_endl(const char *table[static 256]);
void cat_set_tab(const char *table[static 256]);
void cat_set_non_printable(const char *table[static 256]);

void cat(int argc, char **argv, FLAGS flags, const char *table[static 256]);
void cat_file(FILE *file, FLAGS flags, const char *table[static 256]);
FLAGS cat_read_flags(int argc, char **argv);

#endif