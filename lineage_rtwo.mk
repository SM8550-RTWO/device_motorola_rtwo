#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rtwo device
$(call inherit-product, device/motorola/rtwo/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_rtwo
PRODUCT_DEVICE := rtwo
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 pro

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_INCLUDE_ACCORD := false

# Rendering Optimizations
SURFACE_FLINGER_BOOST := true

# SurfaceFlinger Refresh Rates
$(call soong_config_set,surfaceflinger,frame_rate_category_high,165)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,165)

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rtwo_g-user 16 W1TRS36H.56-13-1-3 cb3b97-65907 release-keys MW-419" \
    BuildFingerprint=motorola/rtwo_g/rtwo:16/W1TRS36H.56-13-1-3/cb3b97-65907:user/release-keys \
    DeviceProduct=rtwo_g
