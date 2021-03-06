#!/bin/bash
#
# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
# Exit on first error, print all commands.
# set -ev

# Shut down the Docker containers that might be currently running.
docker-compose -f docker-compose.yml stop
docker ps -a | grep hyperledger | awk '{print $1}' | xargs docker stop
docker ps -a | grep hyperledger | awk '{print $1}' | xargs docker rm
docker stop securitization
docker rm securitization
