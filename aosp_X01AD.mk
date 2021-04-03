#
# Copyright (C) 2020 The Nusantara Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/asus/X01AD

# Inherit from source
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Aosp stuff
TARGET_INCLUDE_PIXEL_CHARGER := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit device stuff
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Device identifiers.
PRODUCT_DEVICE := X01AD
PRODUCT_NAME := aosp_X01AD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Asus Zenfone Max M2
PRODUCT_MANUFACTURER := asus
TARGET_VENDOR := asus
BOARD_VENDOR := asus
IS_PHONE := true

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_MODEL=ASUS_X01AD \
    PRIVATE_BUILD_DISC="redfin-user 11 RQ2A.210305.006 7119741 release-keys"

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210305.006/7119741:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT) \
	ro.ppui.device_name=Asus Zenfone Max M2 \
	ro.ppui.version=3.3 \
	ro.ppui.version_code=Tanzanite \
	ro.ppui.maintainer_name=AP-XD
	
PRODUCT_GMS_CLIENTID_BASE := android-asus
# Aosp Properties
TARGET_BOOT_ANIMATION_RES := 720
TARGET_USES_BLUR := true

# OFFICAL STUFF
CUSTOM_BUILD_TYPE=OFFICIAL
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_FACE_UNLOCK_SUPPORTED = true
PPUI_MAINTAINER := AP-XD
TARGET_GAPPS_ARCH := arm64