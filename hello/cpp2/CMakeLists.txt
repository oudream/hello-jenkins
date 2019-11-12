#cmake_minimum_required(VERSION 2.6)

#project(cpp2)

################################
# GTest
################################

#ADD_SUBDIRECTORY (${CMAKE_CURRENT_SOURCE_DIR}/../../3rd/googletest)

include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})

################################
# Unit Tests
################################
# Add test cpp file
add_executable( claculator_test ${CMAKE_CURRENT_SOURCE_DIR}/src/calculator.h )

# Link test executable against gtest & gtest_main
target_link_libraries(claculator_test gtest gtest_main)

add_test( claculator_test claculator_test )