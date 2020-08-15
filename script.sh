#!/bin/bash
#
#Automate Project Creation - NodeJS, ReactJS...

deps=("yarn")

for i in ${deps[@]}; do
  if [[ ! $(which $i 2>/dev/null) ]]; then
    echo "Need to install: $i."
    exit 1
  fi
done

