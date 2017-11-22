#!/bin/sh
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI Build"

git checkout master
git add .
git commit -m "Travis build number: $TRAVIS_BUILD_NUMBER"

git remote add origin-repo https://f244293c729d5066cf27@github.com/MVSE-outreach/resources.git > /dev/null 2>&1
git push --quiet --set-upstream origin-repo master
