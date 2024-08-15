#!/bin/bash

## Edit to preference.
scanArea="/home/*"
ignore="^/(?!emacs|steam|Ltd|Kernel)([a-zA-Z0-9]+)$"

find $scanArea -type f -wholename $ignore
