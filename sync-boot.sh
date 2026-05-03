#!/usr/bin/env bash
set -euo pipefail

SRC="/boot"
DST="/boot_fallback"

if [[ $EUID -ne 0 ]]; then
    echo "Error: must be run as root" >&2
    exit 1
fi

if ! mountpoint -q "$DST"; then
    echo "Error: $DST is not a mounted filesystem" >&2
    exit 1
fi

rsync -aHAX --delete --info=stats2 "$SRC/" "$DST/"