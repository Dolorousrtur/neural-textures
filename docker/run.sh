#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${CURRENT_DIR}/source.sh

docker pull $HEAD_NAME
CODE_DIR=/mounted/${CURRENT_DIR}/..
# NV_GPU=$(nvidia-smi --query-gpu=uuid --format=csv,noheader | tr '\n' ',') nvidia-docker run -ti $PARAMS $VOLUMES $NAME $@
NV_GPU=$(nvidia-smi --query-gpu=uuid --format=csv,noheader | tr '\n' ',') nvidia-docker run -w=${CODE_DIR} -ti $PARAMS $VOLUMES $HEAD_NAME $@
