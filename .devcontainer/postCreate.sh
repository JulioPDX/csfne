#!/usr/bin/env bash

set +e

ardl get eos --image-type cEOS --version ${CEOS_LAB_VERSION} --import-docker
docker tag arista/ceos:${CEOS_LAB_VERSION} ceos:latest
