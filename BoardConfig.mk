#
# Copyright (C) 2019 The LineageOS Project
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

DEVICE_PATH := device/nokia/B2N

# Audio
BOARD_USES_ALSA_AUDIO := true

# Inherit from nokia sdm660-common
-include device/nokia/sdm660-common/BoardConfigCommon.mk

# Architecture
TARGET_CPU_VARIANT_RUNTIME := cortex-a73
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a73

# Assertions
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
TARGET_KERNEL_CONFIG += vendor/nokia/B2N.config

# Partitions
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/nokia/B2N/BoardConfigVendor.mk
