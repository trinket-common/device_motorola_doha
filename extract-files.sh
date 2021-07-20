#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=doha
export DEVICE_COMMON=sm6125-common
export VENDOR=motorola

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"

MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

ANDROID_ROOT="$MY_DIR"/../../..
BLOB_ROOT="$ANDROID_ROOT"/vendor/"$VENDOR"/"$DEVICE"/proprietary

LIBMMCAMERA2_PPROC="$BLOB_ROOT"/vendor/lib/libmmcamera2_pproc_modules.so
sed -i "s/ro.product.manufacturer/ro.product.nopefacturer/" "$LIBMMCAMERA2_PPROC"

CHARGE_ONLY="$BLOB_ROOT"/vendor/bin/charge_only_mode
for LIBMEMSET_SHIM in $(grep -L "libmemset_shim.so" "$CHARGE_ONLY"); do
    patchelf --add-needed "libmemset_shim.so" "$LIBMEMSET_SHIM"
done
