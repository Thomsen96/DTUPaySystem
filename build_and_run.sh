#!/bin/bash
set -e

./build.sh


# Startup all services for this service
./deploy.sh 


docker image prune -f

