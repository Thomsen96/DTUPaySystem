#!/bin/bash
set -e

pushd RestService
./completeBuild.sh
popd

pushd TokenService
./completeBuild.sh
popd

pushd PaymentService
./completeBuild.sh
popd

pushd AccountService
./completeBuild.sh
popd