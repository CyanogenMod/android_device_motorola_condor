$(call inherit-product, device/motorola/condor/full_condor.mk)

# Inherit some common omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_condor
PRODUCT_RELEASE_NAME := MOTO E
