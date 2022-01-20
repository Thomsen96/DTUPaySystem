#!/bin/bash
set -e

DIR=$(pwd)
echo "Searching for build scripts in: " $DIR

isDirectory() {
    # $1 meaning first argument
    if [ -d "$1" ];
    then
        echo "true"
    else
        echo "false"
    fi
}

isBuildScript() {
    # $1 meaning first argument
    if [[ $1 == *uild*.sh ]]
    then
        # echo "$1"
        set_executable "$1"
    fi
}

set_executable() {
    # echo "chmod +x "$1
    echo "Adding executable for "$1
    chmod +x $1
}


searchDirectory() {
    for entry in "$1"/*
    do
        # Check if the entry is a directory
        local dir="$(isDirectory $entry)"
        if [ "$dir" = "true" ]
        then
            #echo "$entry"
            searchDirectory $entry
        fi
        # Check if the file is a script

        isBuildScript $entry
        
        # find_shell_scripts $entry
    #   find all shell scripts
    #   find all directories
    done
}

searchDirectory $DIR
