#!/bin/sh

DIR=$(cd $(dirname $0);pwd)

cd $DIR

git submodule init
git submodule update

for f in .??*
do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue
    [ "$f" = ".DS_Store" ] && continue

    ln -snfv "$DIR"/"$f" "$HOME"/"$f"
done
