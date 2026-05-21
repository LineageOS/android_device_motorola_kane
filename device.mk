#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the common tree
$(call inherit-product, device/motorola/exynos9610-common/common.mk)

# Inherit proprietary files
$(call inherit-product, vendor/motorola/kane/kane-vendor.mk)

# Camera
$(call soong_config_set,exynos_camera,back_1_camera_sensor,SENSOR_NAME_S5K5E9)
$(call soong_config_set,exynos_camera,back_camera_sensor,SENSOR_NAME_S5KGM1SP)
$(call soong_config_set,exynos_camera,front_camera_sensor,SENSOR_NAME_S5K2X5SP)
$(call soong_config_set,exynos_camera,target_variant,kane)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Wi-Fi
PRODUCT_PACKAGES += \
    WifiResTarget
