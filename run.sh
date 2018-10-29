#!/bin/bash
DATE=`date '+%Y-%m-%d-%H:%M:%S'.txt`
echo "Hello World" > "$DATE"
git add . && git commit -m "$DATE auto commit" && git push origin master