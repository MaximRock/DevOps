#!/bin/bash

set -e

mkdir ~/jenkins-cli
cd ~/jenkins-cli
wget http://localhost:8080/jnlpJars/jenkins-cli.jar
cp ~/jenkins-cli/test.xml ~/jenkins-cli-1/

java -jar jenkins-cli.jar -auth admin-cli:admin-cli -s http://localhost:8080/ create-job test-job < test.xml
java -jar jenkins-cli.jar -auth admin-cli:admin-cli -s http://localhost:8080/ build test-job