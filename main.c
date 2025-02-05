#include "exercise.h"
#include <stdio.h>

int main() {
  char *av = get_temperature_status(900);
  printf("The snek score is: %s\n", av);
  return 0;
}
