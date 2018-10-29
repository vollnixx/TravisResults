#!/bin/bash
DATE=`date '+%Y-%m-%d-%H:%M:%S'.txt`
echo "Hello World" > "$DATE"
git add . && git commit -m "$TRAVIS_BUILD_NUMBER - $DATE auto commit"
git remote add results https://${VOLLNIXX_VAR}@github.com/vollnixx/TravisResults.git > /dev/null 2>&1
git push --quiet --set-upstream results master