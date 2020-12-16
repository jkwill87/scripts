#!/bin/sh

if [ ! -d "${HOME}/Dropbox" ]; then
    echo 'dropbox not installed?'
elif [ $# -ne 1 ]; then
    echo 'usage: ds-ignore PATH'
elif [ $PLATFORM = 'linux' ]; then
    attr -s com.dropbox.ignored -V 1 "$1"
elif [ $PLATFORM = 'macos' ]; then
    xattr -w com.dropbox.ignored 1 "$1"
fi