#!/usr/bin/env bash

cd ${hello-jenkinsfile}
cmake .
make
export GTEST_OUTPUT="xml:/home/unittest-report"
make test