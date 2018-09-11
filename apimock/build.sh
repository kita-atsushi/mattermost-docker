#!/bin/bash
CWD=$(cd $(dirname $0); pwd)
if [ ! -z "${http_proxy}" ]; then
  PROXY_OPT="--build-arg proxy=${http_proxy}"
fi

cd ${CWD}
docker build -t node:mocky_http ${PROXY_OPT} .
