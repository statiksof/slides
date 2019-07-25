#!/bin/bash

jupyter-nbconvert --to slides ecas-b2share-tn.ipynb --reveal-prefix=reveal.js
mv ecas-b2share-tn.slides.html  index.html
mkdir -p /tmp/workspace
cp -r * /tmp/workspace/
git add -A .
git commit -m "Update"
git checkout -B gh-pages
cp -r /tmp/workspace/* .
git add -A .
git commit -m "new version"
git push origin master gh-pages
git checkout master
rm -rf /tmp/workspace
