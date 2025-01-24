#include <iostream>

int main(int argc, char *argv[]) {
  int arg1 = std::stoi(argv[1]);
  int arg2 = std::stoi(argv[2]);

  std::cout << arg1 + arg2 << std::endl;

  return 0;
}
