#!/usr/bin/env bash
set -e # halt script on error

echo "Get ready, we're pushing to gh-pages!"
rm -rf site
mkdir site
cp -a dist site
cp -a img fonts index.html style-rtl.css locale.js oauth.json CNAME site
cd site
git init
git checkout --orphan gh-pages
git add .
git commit -m "Deploy to gh-pages"
git remote add origin git@github.com:tytca/prose.git
git push -f
echo "Finish pushing to gh-pages!"
