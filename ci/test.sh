#! /usr/bin/env bash

echo "hi"

if [[ ${NUMBERS} -eq 1234 ]]; then
  echo "got expected numbers"
else
  echo "got unexpected numbers"
fi


exit 0
