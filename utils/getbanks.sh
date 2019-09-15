#!/bin/bash
jq 'keys[]' ranges.json | tr -d '"' > banks.txt
