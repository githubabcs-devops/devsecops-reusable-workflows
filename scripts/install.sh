#!/bin/bash
set -e

LANGUAGE=${LANGUAGE:-"python"}

if [[ "$LANGUAGE" == "python" ]]; then
    echo "Installing Python dependencies..."

    if [[ -f pyproject.toml ]]; then
        python -m pip install --upgrade pip poetry
        poetry install
    elif [[ -f Pipfile ]]; then
        python -m pip install --upgrade pip pipenv
        pipenv sync -d
    elif [[ -f requirements.txt ]]; then
        python -m pip install --upgrade pip
        pip install -r requirements.txt
    elif [[ -f Makefile ]]; then
        make install
    else
        echo "No manifest files found to install dependencies"
    fi
fi