#include "s21_grep.h"

int main(int argc, char **argv) {
  FLAGS flag = {0};
  read_flag(argc, argv, &flag);
  while (optind < argc) {
    output(argv, &flag);
    optind++;
  }
  return 0;
}

void read_flag(int argc, char **argv, FLAGS *flag) {
  int options;
  while ((options = getopt_long(argc, argv, "e:ivclnhsf:o", NULL, 0)) != -1) {
    switch (options) {
      case 'e':
        flag->e = 1;
        strcat(flag->data_pattern, optarg);
        strcat(flag->data_pattern, "|");
        break;
      case 'i':
        flag->i = 1;
        break;
      case 'v':
        flag->v = 1;
        break;
      case 'c':
        flag->c = 1;
        break;
      case 'l':
        flag->l = 1;
        break;
      case 'n':
        flag->n = 1;
        break;
      case 'h':
        flag->h = 1;
        break;
      case 's':
        flag->s = 1;
        break;
      case 'o':
        flag->o = 1;
        break;
      case 'f':
        flag->f = 1;
        strcpy(flag->pattern_file, optarg);
        flag_f(flag);
        break;
      default:
        break;
    }
    if (flag->v && flag->o) {
      flag->o = 0;
    }
  }
  if (!flag->e && !flag->f) {
    if (argc > optind) {
      strcat(flag->data_pattern, argv[optind]);
    }
    optind++;
  }
  if (flag->e || flag->f) {
    flag->data_pattern[strlen(flag->data_pattern) - 1] = '\0';
  }
  if (argc - optind > 1) flag->count_flag = 1;
}

void output(char **argv, FLAGS *flag) {
  regex_t preg;
  regmatch_t start;
  flag->counter = 0;
  flag->string_number = 0;
  int flag_i = REG_EXTENDED;
  if (flag->i) flag_i = REG_EXTENDED | REG_ICASE;
  regcomp(&preg, flag->data_pattern, flag_i);
  FILE *file = fopen(argv[optind], "rb");
  if (file != NULL) {
    while (fgets(flag->file_string, BUFFER, file) != NULL) {
      int match = regexec(&preg, flag->file_string, 1, &start, 0);
      flag->string_number++;
      if (flag->v) match = !match;
      if (flag->o) strcpy(flag->string_o, flag->file_string);
      if (!match && flag->count_flag && !flag->l && !flag->h && !flag->c)
        printf("%s:", argv[optind]);
      if (!match) flag->counter++;
      if (!match && !flag->l && !flag->c && !flag->n && !flag->o) {
        printf("%s", flag->file_string);
        if (flag->file_string[strlen(flag->file_string) - 1] != '\n')
          printf("\n");
      }
      if (!match && flag->n && !flag->c && !flag->l) {
        if (flag->o)
          printf("%d:", flag->string_number);
        else
          printf("%d:%s", flag->string_number, flag->file_string);
      }
      if (!match && flag->o && !flag->l && !flag->c) {
        char *pointer = flag->string_o;
        while ((regexec(&preg, pointer, 1, &start, 0) == 0)) {
          printf("%.*s\n", (int)(start.rm_eo - start.rm_so),
                 pointer + start.rm_so);
          pointer += start.rm_eo;
        }
      }
    }
    regfree(&preg);
    // if (flag->l && flag->counter < 1 && !flag->v) printf("%s\n",
    // argv[optind]);
    if (flag->l && flag->counter > 0 && !flag->c) printf("%s\n", argv[optind]);
    if (flag->c && flag->count_flag && !flag->h) printf("%s:", argv[optind]);
    if (flag->c && !flag->l && !flag->v) printf("%d\n", flag->counter);
    if (flag->c && !flag->l && flag->v)
      printf("%d\n", flag->string_number = flag->counter);
    if (flag->c && flag->l) {
      if (flag->counter > 0) {
        flag->counter = 1;
        printf("%d\n%s\n", flag->counter, argv[optind]);
      } else
        printf("%d\n", flag->counter);
    }
    if (flag->n && flag->v &&
        flag->file_string[strlen(flag->file_string) - 1] != '\n') {
      printf("\n");
    }
    fclose(file);
  } else {
    regfree(&preg);
    if (!flag->s)
      fprintf(stderr, "grep: %s: No such file or directory\n", argv[optind]);
  }
}

void flag_f(FLAGS *flag) {
  FILE *f;
  f = fopen(flag->pattern_file, "rb");
  if (f != NULL) {
    while (!feof(f)) {
      if (fgets(flag->file_string, 1000, f) != NULL) {
        if (flag->file_string[strlen(flag->file_string) - 1] == '\n' &&
            strlen(flag->file_string) - 1 != 0)
          flag->file_string[strlen(flag->file_string) - 1] = '\0';
      }
      strcat(flag->data_pattern, flag->file_string);
      strcat(flag->data_pattern, "|");
    }
    fclose(f);
  }
}