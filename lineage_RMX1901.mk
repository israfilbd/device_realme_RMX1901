#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common  AlphaDroid stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Others Flag
ALPHA_MAINTAINER := м∂_ιѕяαƒιℓ

# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 3

# TARGET_LAUNCHER options:
# 1 - stock (default)
# 2 - lawnchair
# 3 - pixel (valid only on gapps builds)
TARGET_LAUNCHER := 1

# Inherit from RMX1901 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Sign builds
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/lineage-priv/keys/.android-certs/releasekey

PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMX1901
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_RMX1901
PRODUCT_MODEL := RMX1901

PRODUCT_SYSTEM_NAME := RMX1901
PRODUCT_SYSTEM_DEVICE := RMX1901

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX1901-user 11 RKQ1.201217.002 1626947099367 release-keys" \
    TARGET_DEVICE=RMX1901 \
    TARGET_PRODUCT=RMX1901

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Realme/RMX1901/RMX1901:11/RKQ1.201217.002/1626947099367:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
