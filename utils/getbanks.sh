#!/bin/bash
jq 'keys[]' ranges.json | tr -d '"' > banks.txt
cp README.template README.md
cat banks.txt >> README.md
