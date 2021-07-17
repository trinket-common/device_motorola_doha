#
# Copyright (C) 2017-2020 The LineageOS Project
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

-include device/motorola/sm6125-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/doha

# Display
TARGET_SCREEN_DENSITY := 420

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := vendor/doha_defconfig

# Kernel modules - Audio
# TARGET_MODULE_ALIASES += \

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3238002688
BOARD_VENDORIMAGE_PARTITION_SIZE := 620756992
BOARD_USERDATAIMAGE_PARTITION_SIZE := 53359918592
BOARD_USES_RECOVERY_AS_BOOT := true
