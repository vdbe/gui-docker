#!/usr/bin/env sh

mkdir -p initdb

find ./gui-api \
    -name up.sql \
    -not -path '*/00000000000000_diesel_initial_setup/*' \
    -exec cat {} \; > initdb/tables.sql

