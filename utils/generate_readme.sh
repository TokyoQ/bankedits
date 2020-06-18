#!/bin/bash
cd ..

jq 'keys[]' config/ranges.json | tr -d '"' > banks.txt
sed -i '' -e 's/^/* /g' banks.txt
cp README.template README.md
cat banks.txt >> README.md
rm banks.txt
