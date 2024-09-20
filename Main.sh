#!/bin/bash

## Edit to preference.
scan_area="$HOME/Programming/Projects"

find $scan_area -type f -exec sha256sum {} \; | awk '{print $1}' | grep -E --color=auto `cat malware_list | paste -sd\|`
