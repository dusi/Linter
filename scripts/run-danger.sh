#!/bin/bash

echo "DANGER_GITHUB_API_TOKEN: $DANGER_GITHUB_API_TOKEN"
echo "Pull Request URL: $1"

if [ -z "$DANGER_GITHUB_API_TOKEN" ]; then
    echo "Error: DANGER_GITHUB_API_TOKEN is not set. Set this environment variable before running the script."
    exit 1
fi

if [ -z "$1" ]; then
    echo "Usage: ./run-danger.sh <pull-request-url>"
    exit 1
fi

scripts/bin/danger-swift pr $1