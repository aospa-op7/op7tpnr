#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, device/oneplus/sm8150-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/oneplus/oneplus7tproNR/oneplus7tproNR-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/audio/mixer_paths_pahu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_pahu.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml

# Camera
PRODUCT_PACKAGES += \
    OnePlusCameraHelper

# fstab
PRODUCT_PACKAGES += \
    fstab.qcom.ramdisk

# Keyboard
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.kb_pad_port_l=7 \
    ro.com.google.ime.kb_pad_port_r=7 \
    ro.com.google.ime.kb_pad_land_l=14 \
    ro.com.google.ime.kb_pad_land_r=14

# Telephony
PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.ssr.restart_level=ALL_ENABLE \
    persist.vendor.radio.5g=1 \
    persist.vendor.radio.5g_mode_pref=1 \
    persist.vendor.radio.5g_mode_pref_0=1 \
    persist.vendor.radio.5g_mode_pref_1=1

# Overlays
PRODUCT_PACKAGES += \
    AOSPAOnePlus7TProNRFrameworks \
    AOSPAOnePlus7TProNRSystemUI \
    OnePlus7TProNRFrameworks \
    OnePlus7TProNRSettings \
    OnePlus7TProNRSettingsProvider \
    OnePlus7TProNRSystemUI

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_USE_DYNAMIC_PARTITIONS := true
