#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR/..
source .secret

rm config.json
cp config.template config.json
sed -i -e "s/{{consumer_key}}/$consumer_key/g" config.json
sed -i -e "s/{{consumer_secret}}/$consumer_secret/g" config.json
sed -i -e "s/{{access_token}}/$access_token/g" config.json
sed -i -e "s/{{access_token_secret}}/$access_token_secret/g" config.json

