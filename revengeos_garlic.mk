#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from tenshi device
$(call inherit-product, device/yu/garlic/device.mk)

# Inherit from common device
$(call inherit-product, device/tinno/msm8937-common/msm8937.mk)


# Inherit some common RevengeOS stuff
IS_PHONE := true
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
REVENGEOS_BUILDTYPE := OFFICIAL

# Inherit Some common Stuff from RevengeOS
$(call inherit-product, vendor/revengeos/config/common.mk)
$(call inherit-product, vendor/revengeos/config/gsm.mk)


# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := yu
PRODUCT_DEVICE := garlic
PRODUCT_NAME := revengeos_garlic
PRODUCT_BRAND := yu
PRODUCT_MODEL := YU Yureka Black
PRODUCT_MANUFACTURER := yu

PRODUCT_GMS_CLIENTID_BASE := android-yu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="p7201-user 7.1.1 NMF26F 1503040709 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := YU/YU5040/YU5040:7.1.1/NMF26F/1502798695:user/release-keys
