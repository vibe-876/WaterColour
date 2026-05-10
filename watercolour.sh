#!/bin/bash

## Ignore this push, it's a test...
## Edit to preference.
scan_area="$HOME/Downloads"
malware_list="malware_list"


find $scan_area -type f -exec sha256sum {} \; | awk '{print $1}' | grep -F -f $malware_list
