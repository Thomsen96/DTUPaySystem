#!/bin/bash
set -e

pushd RestService
./comleteBuild.sh
popd

pushd TokenService
./comleteBuild.sh
popd

pushd PaymentService
./comleteBuild.sh
popd
