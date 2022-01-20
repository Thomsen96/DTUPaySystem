#!/bin/bash
git pull
git submodule foreach git pull
git submodule foreach git submodule foreach git pull