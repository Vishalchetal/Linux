#!/bin/bash

if [[ $# == 0 ]]; then
    echo "This shell script compress files with a specific extension"
    echo "Call syntax: minimize  <extension_list>"
    echo "Example: minimize doc jpg"
    exit
fi

for ext in $*; do
    for file in `ls *.$ext`; do
	gzip $file
    done
done
