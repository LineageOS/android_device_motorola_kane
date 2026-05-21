#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

## Inherit from the common tree
include device/motorola/exynos9610-common/BoardConfigCommon.mk

## Inherit from the proprietary configuration
include vendor/motorola/kane/BoardConfigVendor.mk

DEVICE_PATH := device/motorola/kane

## Assert
TARGET_OTA_ASSERT_DEVICE := kane,one_vision

# Camera
$(call soong_config_set,exynos_camera,front_camera_sensor,SENSOR_NAME_S5K2X5SP)
$(call soong_config_set,exynos_camera,back_camera_sensor,SENSOR_NAME_S5KGM1SP)
$(call soong_config_set,exynos_camera,back_1_camera_sensor,SENSOR_NAME_S5K5E9)
$(call soong_config_set,exynos_camera,target_variant,kane)

## Kernel
TARGET_KERNEL_CONFIG := kane_defconfig

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
