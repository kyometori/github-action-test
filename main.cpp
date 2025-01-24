#include <iostream>

int main(int argc, char *argv[]) {
  const int arg1 = std::stoi(argv[1]);
  const int arg2 = std::stoi(argv[2]);

  std::cout << arg1 + arg2;

  return 0;
}
