#!/bin/bash
CWD=`echo $(cd $(dirname $0);pwd)`
TYPE="simple_mock"
PORT_OPTS="-p 10080:10080"
EXEC_MOCK="/node/simple_mock.js"

docker ps -a |grep "${TYPE}" |awk '{print $1}'|xargs -i docker rm -f {}
docker run -d -v ${CWD}/stub:/node \
 ${PORT_OPTS} --name ${TYPE} --hostname ${TYPE} \
 node:mocky_http node "${EXEC_MOCK}"

