#!/usr/bin/env bash


### jenkins install :
wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war && \
java -jar jenkins.war --httpPort=2280
### jenkins install .


### jenkins run on docker :
docker run \
  -u root \
  --rm \
  -d \
  -p 8080:8080 \
  -p 50000:50000 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkinsci/blueocean
### jenkins run on docker .


### c++ 插件 :
valgrind
cmake builder
xunit
cppcheck
warnings
### c++ 插件 .


### c++ 单元测试例子 :
git clone https://github.com/oudream/hello-jenkinsfile.git

cd /opt/ddd/ops/jenkins/hello-jenkinsfile
cmake . -DCMAKE_BUILD_TYPE=Debug --build "/opt/ddd/ops/jenkins/hello-jenkinsfile" -B"/opt/ddd/ops/jenkins/hello-jenkinsfile/cmake-gcc"
cd cmake-gcc && make
export GTEST_OUTPUT="xml:/opt/ddd/tmp/unittest-report-cpp"
make test


cd $WORKSPACE
export GTEST_OUTPUT="xml:${WORKSPACE}/cmake-gcc/unittest-report"
cmake . -DCMAKE_BUILD_TYPE=Debug --build "${WORKSPACE}" -B"${WORKSPACE}/cmake-gcc"


export GTEST_OUTPUT="xml:${WORKSPACE}/cmake-gcc/unittest-report"
cd ${WORKSPACE}/cmake-gcc
make
make test
### c++ 单元测试例子 .


### Jenkinsfile 例子 :
http://senlinzhan.github.io/2017/10/08/gtest/
### Jenkinsfile 例子 .

### cmake : gtest_add_tests
# https://cmake.org/cmake/help/v3.10/module/GoogleTest.html
