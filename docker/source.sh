#!/usr/bin/env bash
PORT=8086

PARAMS="-p ${PORT}:${PORT} --net=host --ipc=host"
NAME="neural_textures"
# VOLUMES="-v /:/mounted:Z"
VOLUMES="-v /local/home/agrigorev/Workdir:/mounted:Z"

