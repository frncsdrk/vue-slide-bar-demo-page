#!/usr/bin/env bash
npm run build
git add -A
git commit -m "Update dist"
git push origin master
git subtree push --prefix dist origin gh-pages
echo "PUBLISHED"
