# Copyright (C) 2016 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 640x362

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit AOSP device configuration
$(call inherit-product, device/vivo/y55/y55.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8937

# Override AOSP build properties
PRODUCT_NAME := omni_y55
PRODUCT_DEVICE := y55
PRODUCT_BRAND := vivo
PRODUCT_MODEL := y55
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=y55
# \
 #   BUILD_FINGERPRINT="vivo/PD1613/PD1613:6.0.1/MMB29M/compiler05020149:user/release-keys" \
  #  PRIVATE_BUILD_DESC="vivo-user 6.0.1 MMB29M Y55 release-keys"
