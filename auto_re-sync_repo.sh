#!/bin/bash
PATH=~./bin:$PATH
repo init-u https://android.googlesource.com/a/platform/manifest-b android-2.3.5_r1
repo sync
while [ $? -ne 0 ]; do
    echo "**Error: sync failed, re-sync again"
    sleep 5
    repo sync
done
