#include "Calculator.h"
#include <iostream>

int main()
{
    Calculator calculator;
    std::cout << "1 + 2 = " << calculator.add(1, 2) << std::endl;
    std::cout << "2 - 1 = " << calculator.sub(2, 1) << std::endl;

    return 0;
}