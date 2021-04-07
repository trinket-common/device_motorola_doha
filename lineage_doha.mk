#
# Copyright (C) 2020 - 2021 Doritos™ Motorola | Developers
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from doha device
$(call inherit-product, device/motorola/doha/device.mk)

# Device identifier
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := doha
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_doha
PRODUCT_MODEL := Moto G⁸ Plus

# Build Environment
PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := doha
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC=" 10 QPI30.28-Q3-28-26 20e48 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "motorola/doha_retail/doha:10/QPIS30.28-Q3-28-26-5/5c146:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=doha_retail \
    PRIVATE_BUILD_DESC="doha_retail-user 10 QPIS30.28-Q3-28-26-5 5c146 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-motorola
