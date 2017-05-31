#!/bin/bash

php src/test.php

git clone git@github.com:chumanfu/chumanfu.github.io.git deploy/
cp output/$TRAVIS_PHP_VERSION/* deploy/$TRAVIS_PHP_VERSION/
git add --all
git commit -am "Updated from PHP version $TRAVIS_PHP_VERSION"
git push
rm -Rf deploy