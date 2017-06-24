#!/bin/bash

echo building and deploying blog
set -e
hugo --theme=hugo-theme-nix
cd ..
if [ ! -d "jacobjwebber.github.io"]; then
    git clone git@github.com:jacobjwebber/jacobjwebber.github.io.git
fi
cp -r hugo_blog/public/* jacobjwebber.github.io/
cd jacobjwebber.github.io
git add .
git commit -am "automated deploy $(date)"
git push origin master
