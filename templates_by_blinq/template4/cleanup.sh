#!/bin/bash

# Find all files with a .tfvars.j2 extension and delete the corresponding .tfvars file

find . -name '*.tfvars.j2' -o -name '*.md.j2' | while read filename; do
  target="${filename%.*}"
  if [ -f "$target" ]; then
    rm "$target"
  fi
done

