#include <stdio.h>

int main() {
  int sneklang_default_max_threads = 8;
  char sneaklang_default_perms = 'r';
  float sneaklang_default_pi = 3.14159;
  char *title = "sneaklang";

  printf("Default max threads: %d\n", sneklang_default_max_threads);
  printf("Custom perms %c\n", sneaklang_default_perms);
  printf("Constant pi value %f\n", sneaklang_default_pi);
  printf("Sneaklang title %s\n", title);

  return 0;
}
