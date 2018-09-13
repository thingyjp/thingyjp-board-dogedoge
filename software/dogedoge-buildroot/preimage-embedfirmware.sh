#!/bin/sh

set -u

mkdir -p $TARGET_DIR/flasher/
cp ../output/nor.img $TARGET_DIR/flasher/
cp ../output/fit.img $TARGET_DIR/flasher/
