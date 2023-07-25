#!/bin/bash

shopt -s expand_aliases
source ~/scripts/push.sh

git add .

echo 'Enter the commit message:'
read commitMessage

git commit -m "$commitMessage"



