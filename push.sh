#!/bin/sh
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI Build"

git checkout master
git add .
git commit -m "Travis build number: $TRAVIS_BUILD_NUMBER"

git remote add dest-repo https://Raddish18:9bbc1599fc7d148b3867a23903a4d7dc0a35bf76@github.com/Raddish18/DeployRepo.git > /dev/null 2>&1
git push --quiet --set-upstream dest-repo
