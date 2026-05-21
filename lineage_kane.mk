#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

## Inherit from kane device
$(call inherit-product, device/motorola/kane/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier, this must come after all inclusions
PRODUCT_DEVICE := kane
PRODUCT_NAME := lineage_kane
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola one vision
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

## Use the latest CTS approved build identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="kane-user 11 RSAS31.Q1-48-36-23 f57e3 release-keys" \
    BuildFingerprint=motorola/kane_retail/kane_sprout:11/RSAS31.Q1-48-36-23/f57e3:user/release-keys \
    DeviceName=kane
