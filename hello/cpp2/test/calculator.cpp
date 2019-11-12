#include <iostream>

#include "gtest/gtest.h"

TEST(calculator_test_case, add)
{
    Calculator c;

    EXPECT_EQ(c.add(1,1), 2);
}

TEST(calculator_test_case, sub)
{
    Calculator c;

    EXPECT_EQ(c.add(2,1), 1);
}