#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0



# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)


# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from those products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device configuration
$(call inherit-product, device/xiaomi/tapas/device.mk)

# Inherit from pbrp common configuration
$(call inherit-product, vendor/pb/config/common.mk)

## Device identifier
PRODUCT_DEVICE := tapas
PRODUCT_NAME := omni_tapas
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 12 4G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
