#!/bin/bash
git pull
git submodule update --init
git submodule foreach git checkout main
git submodule foreach git submodule update --init
git submodule foreach git submodule foreach git checkout main