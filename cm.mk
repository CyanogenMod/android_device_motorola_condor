# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/moto/condor/device.mk)

#Call vendor blobs
$(call inherit-product-if-exists, vendor/moto/condor/condor-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := condor
PRODUCT_NAME := cm_condor
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto E
PRODUCT_RELEASE_NAME := MOTO E
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
