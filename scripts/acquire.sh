#!/bin/bash
# Run on investigator workstation with target disk attached as /dev/sdb
OUT="disk-images/disk1.dd"
sudo dd if=/dev/sdb of="$OUT" bs=4M conv=sync,noerror
sha256sum "$OUT" > "$OUT.sha256"
