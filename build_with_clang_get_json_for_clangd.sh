#! /usr/bin/env bash
make CC=clang defconfig

if [ "$#" -eq 1 ] && [ "$1" = "-r" ]; then
  make clean
  clangdinit intercept-build
else
  make CC=clang -j "$(nproc)"
fi

