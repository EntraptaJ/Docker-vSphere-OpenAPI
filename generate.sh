#!/bin/sh
IMAGE="$(docker build -q ./)"
HOST="vsphere.local"

docker run -it --rm -v ${PWD}/output:/tmp/output ${IMAGE} -vc ${HOST} -k --host ${HOST} -o /tmp/output