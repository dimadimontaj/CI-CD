#include <stdio.h>

int main() {
  for (int i = 0; i != 256; ++i) {
    if (i != 0 && !(i % 10))
      printf("\n");
    else
      printf(" ");
    printf("\"");
    if (i == '\n')
      printf("\\n");
    else if (i == '\t')
      printf("\\t");
    else if (i == '\v')
      printf("\\v");
    else if (i == '\b')
      printf("\\b");
    else if (i == '\r')
      printf("\\r");
    else if (i == '\'')
      printf("\\'");
    else if (i == '\"')
      printf("\\\"");
    else if (i == '\\')
      printf("\\\\");
    else if (i < 32)
      printf("\\0%o", i);
    else if (i > '~')
      printf("\\x%x", i);
    else
      printf("%c", i);
    printf("\",");
  }
}