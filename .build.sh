#!/bin/bash

echo Entering "$(cd "$(dirname "$0")" && pwd -P)/$(basename "$0") in $(pwd)"

# Fail the whole script if any command fails
set -e

export SHELLOPTS

./.build-without-test.sh

## Test
echo "running \"mvn test\" for stubparser"
mvn -B test

echo Exiting "$(cd "$(dirname "$0")" && pwd -P)/$(basename "$0") in $(pwd)"
