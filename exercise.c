#include "exercise.h"

float snek_score(int number_files, int num_contributors, int num_commits, float avg_bug_criticality) {
  int size_factor = number_files * num_commits;
  int complexity_factor = num_contributors + size_factor;

  return avg_bug_criticality * complexity_factor;

}
