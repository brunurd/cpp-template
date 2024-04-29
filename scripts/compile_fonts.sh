#!/usr/bin/env bash

XXD_COMMAND=$(command -v xxd)

set -e

if [ "$XXD_COMMAND" == "" ]; then
    echo -e "\033[0;31mERROR: You need xxd to compile the system fonts\033[0m"
    exit 1
fi

xxd -iv "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf" > "headers/dejavu_font.h"

echo "Success!"

