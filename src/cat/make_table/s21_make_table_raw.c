#include <stdio.h>

int main() {
  printf("=sample1===========\n");
  // sample1
  for (int i = 0; i != 9; ++i) {
    if (i != 0 && !(i % 10))
      printf("\n");
    else
      printf(" ");
    printf("\"%c\",", i);
  }
  printf("\n=sample2===========\n");
  // sample2
  for (int i = 9 + 2; i != 127; ++i) {
    if (i != 0 && !(i % 10))
      printf("\n");
    else
      printf(" ");
    printf("\"%c\",", i);
  }
  printf("\n=sample3===========\n");
  // printf("\n=sample3.1=========\n");
  for (int i = 127; i != 160; ++i) {
    if (i != 0 && !(i % 10))
      printf("\n");
    else
      printf(" ");
    printf("\"%c\",", i);
  }
  // printf("\n=sample3.2=========\n");
  for (int i = 160; i != 256; ++i) {
    if (i != 0 && !(i % 10))
      printf("\n");
    else
      printf(" ");
    // printf("\"%c\",", i);
    printf("\"M-%c\",", i + 128);
  }
}
