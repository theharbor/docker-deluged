#!/bin/bash

DATADIR=/data

usage() {
    echo "Usage:" 2>&1
    echo "" 2>&1
    echo "shell        -- Start an interactive shell" 2>&1
    echo "rootshell    -- Start an interactive root shell" 2>&1
    echo "deluged      -- Start deluge daemon" 2>&1
}

case $1 in
    "shell")
        cd $DATADIR
        exec runas deluge /bin/bash
        ;;
    "rootshell")
        exec /bin/bash
        ;;
    "deluged")
        cd $DATADIR
        exec runas deluge deluged --do-not-daemonize --loglevel info --interface 0.0.0.0 --ui-interface 0.0.0.0 --config /data
        ;;
    *)
        usage
        exit 1
        ;;
esac
