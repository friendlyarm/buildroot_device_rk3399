#!/bin/bash
set -eu
ROOTFS_DIR=$1

function setup_buildroot()
{
    # rom version
    DATE=$(date +%Y%m%d)
    echo "${DATE}" >./etc/rom-version
}

(cd ${ROOTFS_DIR} && {
	setup_buildroot
})
