#!/bin/bash

OUT_DIR=$HOME/pictures/screenshots

mkdir $OUT_DIR

if type xwd >/dev/null 2>&1; then
    if type convert >/dev/null 2>&1; then
        xwd -root | convert - "$OUT_DIR/$(date --iso-8601=seconds).png"
    fi
fi
