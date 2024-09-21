
#include <iostream>

extern "C" int DoSum(int, int);

int main() {
    int num, plus = 0;

    std::cout << "Enter Number : "; 
    std::cin >> num;
    std::cout << "Enter Another : "; 
    std::cin >> plus;
    std::cout << "Total: " << DoSum(num, plus) << std::endl;

    return 0;
}
