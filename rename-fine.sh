#!/bin/bash
for f in * 
do
    echo $f
    A="$(cut -d'.' -f1 <<<"$f")"
    B=${A// /.}
    NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
    mv "$f" "${B}-${NEW_UUID}.pdf"
done