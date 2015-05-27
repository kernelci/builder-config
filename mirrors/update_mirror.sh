#!/bin/bash
# usage ./update_mirror.sh <path_to_mirror>
exec > /dev/null
cd $1
git remote update
git remote prune next
git remote prune arm-soc
git remote prune lsk
git remote prune rmk

# Hack for broken Jenkins git plugin which sometimes expects to see a
# '.git' dir, which doesn't exist in a bare repo
[[ ! -e .git ]] && ln -s . .git
