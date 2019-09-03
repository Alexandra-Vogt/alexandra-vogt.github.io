#!/usr/bin/env bash


for file in $(ls src/*.md)
do
    pandoc "$file" > srv/$(basename "$file" .md).html
    echo "creating srv/$(basename $file .md).html"
done


