#!/bin/bash
git pull
git submodule init
git submodule foreach git submodule update
git submodule foreach ./update.sh
git submodule foreach git submodule foreach git checkout main