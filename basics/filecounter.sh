#!/bin/bash

read -p $'Wie formatte sollte ich suche heute?\n-> ' format

echo "Passt, ich suche alle documente mit format $format"

files=$(ls | grep ".$format")

if [ -z "$files" ]; then
        echo "Ohne documente gefunden"
        exit 0
fi

count=$(echo "$files" | wc -l)

echo $count
