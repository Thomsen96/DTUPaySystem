#!/bin/bash
set -e

./initRepo.sh
./update.sh
./stop.sh
./completeBuild.sh
./slowDeploy.sh
./test.sh
