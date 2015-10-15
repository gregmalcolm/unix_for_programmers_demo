#!/bin/bash

while read line
do
  input="$input $line"
done

echo Monitored: $input
if [ "$1" != "" ]; then
  echo "Warning: Did not understand argument '$1'!" >&2
fi
