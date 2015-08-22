#!/bin/bash

set -e
set -x

apt-get update
apt-get install --no-install-recommends -y deluged
rm -rf /var/lib/apt/lists/*
