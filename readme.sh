#!/usr/bin/env bash

### cmake : gtest_add_tests
# https://cmake.org/cmake/help/v3.10/module/GoogleTest.html

### example
# http://senlinzhan.github.io/2017/10/08/gtest/


git clone https://github.com/oudream/hello-jenkinsfile.git


cd /opt/ddd/ops/jenkins/hello-jenkinsfile
cmake . -DCMAKE_BUILD_TYPE=Debug --build "/opt/ddd/ops/jenkins/hello-jenkinsfile" -B"/opt/ddd/ops/jenkins/hello-jenkinsfile/cmake-gcc"
cd cmake-gcc && make
export GTEST_OUTPUT="xml:/opt/ddd/tmp/unittest-report-cpp"
make test


docker run \
  -u root \
  --rm \
  -d \
  -p 8080:8080 \
  -p 50000:50000 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkinsci/blueocean


wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war && \
java -jar jenkins.war --httpPort=2280

java -jar jenkins.war --httpPort=2280

yepbvuanunoybjfi
xwliqktnpykkbiea


cd $WORKSPACE
export GTEST_OUTPUT="xml:${WORKSPACE}/unittest-report"
cmake . -DCMAKE_BUILD_TYPE=Debug --build "${WORKSPACE}" -B"${WORKSPACE}/cmake-gcc"


export GTEST_OUTPUT="xml:${WORKSPACE}/unittest-report"
cd ${WORKSPACE}/build
make
make test