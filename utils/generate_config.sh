#!/bin/bash

# Requires the following Twitter credentials set as environment variables
#   $consumer_key
#   $consumer_secret
#   $access_token
#   $access_token_secret

cd config

rm -f config.json
cp config.template config.json

sed -i -e "s/{{consumer_key}}/$consumer_key/g" config.json
sed -i -e "s/{{consumer_secret}}/$consumer_secret/g" config.json
sed -i -e "s/{{access_token}}/$access_token/g" config.json
sed -i -e "s/{{access_token_secret}}/$access_token_secret/g" config.json
