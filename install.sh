#!/usr/bin/env bash

DETECTED_OS="unknown"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    DETECTED_OS="linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    DETECTED_OS="macos"
fi
