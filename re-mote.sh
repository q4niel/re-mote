#!/bin/bash

arr=()
mapfile -t arr < .re-mote

git remote remove ${arr[0]} 2>/dev/null
git remote add ${arr[0]} ${arr[1]}

read -p "Enter username: " usrn

for remote in "${arr[@]:1}"; do
    read -s -p "Enter token for $remote: " tkn
    echo
    insert="$usrn:$tkn@"
    git remote set-url --add --push ${arr[0]} "${remote/https:\/\//https:\/\/$insert}"
done