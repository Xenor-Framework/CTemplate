#!/usr/bin/env bash
set -e

make clean

echo "[ BUILD ] Compiling..."
make all

echo "[ OK ] Finished"