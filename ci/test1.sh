#! /usr/bin/env bash

set -x

echo hello test1: ${CIRRUS_OS}
nproc
free -h
df -h

exit 0
