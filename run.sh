#!/bin/bash

# Open the dashboard repo
cd ../fedramp-dashboard
git checkout gh-pages

for i in {0..19}
  do

    LAST_DATE=$(date -v -$i"d" +"%Y-%m-%d")
    COMMIT=$(git rev-list --before=$LAST_DATE "gh-pages" | head -n 1)
    git checkout -q $COMMIT

    serve -p 8000 &
    SERVERPID=$!
    python ~/Coding/dashboard-delivery-demo/takeshot.py $LAST_DATE

    kill -s 9 $SERVERPID
    sleep 2
done
