#
# Copyright (C) 2014-2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL condor devices, and
# are also specific to condor devices
#
# Everything in this directory will become public

LOCAL_PATH := device/motorola/condor

# device specific vendor blobs
$(call inherit-product-if-exists, vendor/motorola/condor/condor-vendor.mk)

# Ramdisk
 PRODUCT_COPY_FILES += \
     $(call find-copy-subdir-files,*,${LOCAL_PATH}/ramdisk,root)

# Prebuilt
PRODUCT_COPY_FILES += \
     $(call find-copy-subdir-files,*,${LOCAL_PATH}/prebuilt/system,system)

DEVICE_PACKAGE_OVERLAYS := \
    $(LOCAL_PATH)/overlay

# Inherit from msm8610-common
$(call inherit-product, device/motorola/msm8610-common/msm8610.mk)

# Doze
PRODUCT_PACKAGES += \
    MotoDoze
