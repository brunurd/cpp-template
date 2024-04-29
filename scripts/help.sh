#!/usr/bin/env bash

set -e

PROJECT_DIR="$(dirname $0)/.."

echo -e "\nYou can run one of the commands bellow:\n"

ls -l $PROJECT_DIR/scripts | awk '{print $9}' | sed -e 's/.sh//' | xargs -I {} echo -e "\033[0;92mrun {}\033[0m"

echo -e "\n"

