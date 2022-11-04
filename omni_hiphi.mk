#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hiphi device
$(call inherit-product, device/motorola/hiphi/device.mk)

PRODUCT_DEVICE := hiphi
PRODUCT_NAME := omni_hiphi
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 pro
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hiphi-user 12 S3SH32.12-41-2 6b385 release-keys"

BUILD_FINGERPRINT := motorola/hiphi/hiphi:12/S3SH32.12-41-2/6b385:user/release-keys
