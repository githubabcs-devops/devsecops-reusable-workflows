#!/bin/bash
set -e

LANGUAGE=${LANGUAGE:-"python"}

if [[ "$LANGUAGE" == "python" ]]; then
    echo "Testing Python dependencies..."

    if [[ -f pyproject.toml ]]; then
        poetry run test
    elif [[ -f Pipfile ]]; then
        pipenv run test
    elif [[ -f Makefile ]]; then
        make test
    else
        pytest
    fi
fi