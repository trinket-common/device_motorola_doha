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

-include device/motorola/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/parker

# Display
TARGET_SCREEN_DENSITY := 420

# FOD
TARGET_SURFACEFLINGER_FOD_LIB := //$(DEVICE_PATH):libfod_extension.parker
TARGET_USES_FOD_ZPOS := true

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := vendor/parker_defconfig

# Kernel modules - Audio
TARGET_MODULE_ALIASES += \
    snd-soc-aov-trigger.ko:aov_trigger.ko \
    snd-soc-cs35l41.ko:cirrus_cs35l41.ko \
    snd-soc-cs47l35.ko:cirrus_cs47l35.ko \
    snd-soc-madera.ko:cirrus_madera.ko \
    snd-soc-wm-adsp.ko:cirrus_wm_adsp.ko

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3489660928
BOARD_USERDATAIMAGE_PARTITION_SIZE := 117599350784
BOARD_VENDORIMAGE_PARTITION_SIZE := 805306368
BOARD_USES_RECOVERY_AS_BOOT := true

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
