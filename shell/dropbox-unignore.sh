#!/bin/sh

if [ ! -d "${HOME}/Dropbox" ]; then
    echo 'dropbox not installed?'
elif [ $# -ne 1 ]; then
    echo 'usage: ds-unignore PATH'
elif [ $PLATFORM = 'linux' ]; then
    attr -r com.dropbox.ignored "$1"
elif [ $PLATFORM = 'macos' ]; then
    xattr -d com.dropbox.ignored "$1"
fi