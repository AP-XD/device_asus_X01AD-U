#
# Copyright (C) 2017 The LineageOS Project
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

DEVICE_PATH := device/asus/X01AD

# Inherit from source
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common ArrowOS stuff
$(call inherit-product, vendor/legion/config/common_full_phone.mk)

# Inherit device stuff
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Device identifiers.
PRODUCT_DEVICE := X01AD
PRODUCT_NAME := legion_X01AD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Asus Zenfone Max M2
PRODUCT_MANUFACTURER := asus
TARGET_VENDOR := asus
BOARD_VENDOR := asus

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_MODEL=ASUS_X01AD \
    PRIVATE_BUILD_DISC="redfin-user 11 RQ2A.210405.005 7181113 release-keys"

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
	
PRODUCT_GMS_CLIENTID_BASE := android-asus
# LegionOS Device Maintainer
PPRODUCT_PROPERTY_OVERRIDES += \
    ro.maintainer.name=AP_XD

# Face Unlock Flag
TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps
IS_PHONE := true
TARGET_GAPPS_ARCH += arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true
