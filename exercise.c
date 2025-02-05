#include "exercise.h"

char *get_temperature_status(int temp){
  if (temp < 70) {
    return "too cold";
  }
  if (temp > 90) {
    return "too hot";
  }
  return "just right";
};

