## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/moto/condor/full_condor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := condor
PRODUCT_NAME := cm_condor
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto E
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=condor_retaildsds BUILD_FINGERPRINT=motorola/condor_retaildsds/condor_umtsds:4.4.4/KXC21.5-40/46:user/release-keys PRIVATE_BUILD_DESC="condor_retaildsds-user 4.4.4 KXC21.5-40 46 release-keys"
