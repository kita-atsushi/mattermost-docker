FROM node:10.0.0-alpine

ARG proxy
ENV http_proxy="${proxy}" \
    https_proxy="${proxy}" \
    HTTP_PROXY="${proxy}" \
    HTTPS_PROXY="${proxy}"

RUN npm init --yes
RUN npm install mocky

