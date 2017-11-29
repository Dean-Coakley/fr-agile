#!/bin/sh
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI Build"

git checkout master
git add .
git commit -m "Travis build number: $TRAVIS_BUILD_NUMBER"

git remote add dest-repo https://187628daed1700f96b5d75e48496ef9abd3c3772@github.com/Dean-Coakley/DeployRepo.git > /dev/null 2>&1
git push --quiet --set-upstream dest-repo
