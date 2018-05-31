#!/usr/bin/env sh

set -e
echo "Enter release version"
read VERSION

read -p "release $VERSION - are you sure(y/n)" -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "release $VERSION ..."

  #build
  VERSION=$VERSION npm run dist

  #publish
  npm publish

fi
