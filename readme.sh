#!/usr/bin/env bash

### cmake : gtest_add_tests
# https://cmake.org/cmake/help/v3.10/module/GoogleTest.html

### example
# http://senlinzhan.github.io/2017/10/08/gtest/

cd /opt/ddd/ops/jenkins/hello-jenkinsfile
cmake . -DCMAKE_BUILD_TYPE=Debug --build "/opt/ddd/ops/jenkins/hello-jenkinsfile" -B"/opt/ddd/ops/jenkins/hello-jenkinsfile/cmake-gcc"
cd cmake-gcc && make
export GTEST_OUTPUT="xml:/opt/ddd/tmp/unittest-report-cpp"
make test