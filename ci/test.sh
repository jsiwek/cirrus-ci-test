#! /usr/bin/env bash

echo "hi"

if [[ ${NUMBERS} -eq 1234 ]]; then
  echo "got expected numbers"
else
  echo "got unexpected numbers"
fi

if [[ -z "${MORE_NUMBERS}" ]]; then
  echo "no more numbers"
else
  echo "got more numbers"

  if [[ ${MORE_NUMBERS} -eq 5678 ]]; then
    echo "got more expected numbers"
  else
    echo "got more unexpected numbers"
  fi
fi

exit 0
