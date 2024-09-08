#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ASUS_AI2205 device
$(call inherit-product, device/asus/ASUS_AI2205/device.mk)

PRODUCT_DEVICE := ASUS_AI2205
PRODUCT_NAME := twrp_$(PRODUCT_NAME)
PRODUCT_BRAND := asus
PRODUCT_MODEL := ROG Phone 7
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_BRAND)
