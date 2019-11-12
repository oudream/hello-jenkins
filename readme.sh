#!/usr/bin/env bash

cd /opt/ddd/ops/jenkins/hello-jenkinsfile
cmake . -DCMAKE_BUILD_TYPE=Debug --build "/opt/ddd/ops/jenkins/hello-jenkinsfile" -B"/opt/ddd/ops/jenkins/hello-jenkinsfile/cmake-gcc"
cd cmake-gcc && make
export GTEST_OUTPUT="xml:/opt/ddd/tmp/unittest-report-cpp"
make test