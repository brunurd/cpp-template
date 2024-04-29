#!/usr/bin/env bash

set -e

APP_NAME="cpp_template"

APP_HOME="$(dirname $0)/.."
BUILD_DIR="${APP_HOME}/build"
CMAKE_DIR="${APP_HOME}/cmake"
EXECUTABLE_PATH="${BUILD_DIR}/${APP_NAME}"

cd $CMAKE_DIR

cmake .
make

cd -
$EXECUTABLE_PATH

