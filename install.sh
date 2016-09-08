#!/bin/bash
set -e

args="-f "$find_links_url" --no-cache-dir -r requirements.txt"

if [ ! -z ${find_links_host+x} ]; then
    args+=" --trusted-host "$find_links_host
fi

eval "pip install "$args
