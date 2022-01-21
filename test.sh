#!/bin/bash
set -e

pushd End-to-End
pushd Client
mvn test
popd
popd