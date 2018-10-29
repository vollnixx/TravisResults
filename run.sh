#!/bin/bash
DATE=`date '+%Y-%m-%d-%H:%M:%S'`
echo "Hello World" > results/"$DATE.txt"
git add . && git commit -m "$TRAVIS_BUILD_NUMBER - $DATE - $TRAVIS_EVENT_TYPE"
git remote add results https://${VOLLNIXX_VAR}@github.com/vollnixx/TravisResults.git > /dev/null 2>&1
git push --quiet --set-upstream results master