#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${CURRENT_DIR}/source.sh


# CODE_DIR=/mounted/${CURRENT_DIR}/..

CODE_DIR=/mounted/
docker run  --rm --runtime=nvidia --user 1000 --gpus all -w=${CODE_DIR} -e JUPYTER_ENABLE_LAB=yes -ti $PARAMS $VOLUMES $NAME  $@
