#! /usr/bin/env bash

echo "${SSH_KEY}" > cirrus_key.b64
base64 --decode cirrus_key.b64 > cirrus_key
rm cirrus_key.b64
chmod 600 cirrus_key
mkdir -p ~/.ssh
mv cirrus_key ~/.ssh/id_rsa
echo "Host *" >> ~/.ssh/config
echo "    StrictHostKeyChecking no" >> ~/.ssh/config
chmod 400 ~/.ssh/config
git clone git@github.com:jsiwek/cirrus-ci-test
rm ~/.ssh/id_rsa
ls cirrus-ci-test

exit 0
