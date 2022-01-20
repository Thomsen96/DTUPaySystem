#!/bin/bash
git pull
git submodule foreach git submodule init
git submodule foreach ./update.sh