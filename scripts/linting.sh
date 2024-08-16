#!/bin/bash

LANGUAGE=${1:-"python"}
TOOL=${2:-"ruff"}

if [[ "$LANGUAGE" == "python" ]]; then
    echo "Linting Python..."

    if [[ "$TOOL" == "ruff" ]]; then
        pip install ruff
        ruff check
    elif [[ "$TOOL" == "flake8" ]]; then
        pip install flake8
        flake8 .
    elif [[ "$TOOL" == "black" ]]; then
        pip install black
        black --check .
    fi
fi
