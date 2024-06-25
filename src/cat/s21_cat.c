#include "s21_cat.h"

int main(int argc, char **argv) {
  FLAGS flags = cat_read_flags(argc, argv);
  const char *table[256];
  cat_set_table(table);
  if (flags.mark_endl) cat_set_endl(table);
  if (flags.tab) cat_set_tab(table);
  if (flags.print_non_printable) cat_set_non_printable(table);
  cat(argc, argv, flags, table);
  return 0;
}

FLAGS cat_read_flags(int argc, char **argv) {
  struct option long_options[] = {{"number-nonblank", 0, NULL, 'b'},
                                  {"number", 0, NULL, 'n'},
                                  {"squeeze", 0, NULL, 's'},
                                  {NULL, 0, NULL, 0}};

  int current_flag = getopt_long(argc, argv, "benstvET", long_options, NULL);
  FLAGS flags = {0};
  while (current_flag != -1) {
    if (current_flag == 'b') flags.number_non_blank = 1;
    if (current_flag == 'e') {
      flags.mark_endl = 1;
      flags.print_non_printable = 1;
    }
    if (current_flag == 'n') flags.number_all = 1;
    if (current_flag == 's') flags.squeeze = 1;
    if (current_flag == 't') {
      flags.tab = 1;
      flags.print_non_printable = 1;
    }
    if (current_flag == 'v') flags.print_non_printable = 1;
    if (current_flag == 'E') flags.mark_endl = 1;
    if (current_flag == 'T') flags.tab = 1;
    current_flag = getopt_long(argc, argv, "benstvET", long_options, NULL);
  }
  return flags;
}

void cat(int argc, char **argv, FLAGS flags, const char *table[static 256]) {
  for (char **filename = &argv[1], **end = &argv[argc]; filename != end;
       ++filename) {
    if (**filename == '-') continue;
    FILE *file = fopen(*filename, "rb");
    if (errno) {
      fprintf(stderr, "%s ", argv[0]);
      perror(*filename);
      continue;
    }
    cat_file(file, flags, table);
    fclose(file);
  }
}

void cat_file(FILE *file, FLAGS flags, const char *table[static 256]) {
  int c = 0;
  int last_line = '\n';
  int squeeze_line = 0;
  int number_line = 0;
  while ((c = fgetc(file)) != EOF) {
    if (last_line == '\n') {
      if (flags.squeeze && c == '\n') {
        if (squeeze_line) continue;
        squeeze_line = 1;
      } else
        squeeze_line = 0;
      if (flags.number_non_blank) {
        if (c != '\n') printf("%6i\t", ++number_line);
      } else if (flags.number_all) {
        printf("%6i\t", ++number_line);
      }
    }
    if (!*table[c])
      printf("%c", '\0');
    else
      printf("%s", table[c]);
    last_line = c;
  }
}