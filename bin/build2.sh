#!/bin/bash

useradd --create-home --shell /bin/bash --uid 2233 deluge
mkdir -p /data
chown deluge:deluge /data
