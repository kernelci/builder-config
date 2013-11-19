#!/bin/bash
# usage ./update_mirror.sh <path_to_mirror>
cd $1
git remote update
git remote prune next
git remote prune arm-soc
