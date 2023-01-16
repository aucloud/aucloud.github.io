#!/bin/bash
# Github actions can get contention due multiple run accessing gh-pages.
# Simple loop to ensure builds can re-try
mikeaction="${1}"
mikeversion="${2}"
max_count=2
increment=0

mike ${mikeaction} --push ${mikeversion}
retVal=$?
while [ $retVal -ne 0 ] && [ $increment -le $max_count ];
do
    # cleanup local copy of gh pages branch
    git branch -D gh-pages
    git fetch origin gh-pages
    mike ${mikeaction} --push ${mikeversion}
    retVal=$?
    increment=$(( $increment + 1 ))
done
exit $retVal
