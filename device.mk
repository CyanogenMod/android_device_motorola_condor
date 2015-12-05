#
# Copyright (C) 2014 Prashant Gahlot (proxthehacker@gmail.com)
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

# Ramdisk
 PRODUCT_COPY_FILES += \
     $(call find-copy-subdir-files,*,${LOCAL_PATH}/ramdisk,root)

# Prebuilt
PRODUCT_COPY_FILES += \
     $(call find-copy-subdir-files,*,${LOCAL_PATH}/prebuilt/system,system)

# Camera
PRODUCT_PACKAGES += \
    libboringssl-compat \
    libshim_qcopt

# Motorola
PRODUCT_PACKAGES += \
    libmoto

# Stlport
PRODUCT_PACKAGES += \
    libstlport

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opendelta.device=condor \
    persist.sys.logkit.ctrlcode=0 \
    ro.vendor.extension_library=/vendor/lib/libqc-opt.so \
    ro.usb.mtp=0x2e82 \
    ro.usb.mtp_adb=0x2e76 \
    ro.usb.ptp=0x2e83 \
    ro.usb.ptp_adb=0x2e84 \
    ro.usb.bpt=0x2e28 \
    ro.usb.bpt_adb=0x2e29 \
    ro.usb.bpteth=0x2e2a \
    ro.usb.bpteth_adb=0x2e2b \
    persist.audio.calfile0=/etc/acdbdata/Bluetooth_cal.acdb \
    persist.audio.calfile1=/etc/acdbdata/General_cal.acdb \
    persist.audio.calfile2=/etc/acdbdata/Global_cal.acdb \
    persist.audio.calfile3=/etc/acdbdata/Handset_cal.acdb \
    persist.audio.calfile4=/etc/acdbdata/Hdmi_cal.acdb \
    persist.audio.calfile5=/etc/acdbdata/Headset_cal.acdb \
    persist.audio.calfile6=/etc/acdbdata/Speaker_cal.acdb \
    persist.sys.qc.sub.rdump.max=3 \
    mdc_initial_max_retry=10 \
    drm.service.enabled=true \
    ro.media.enc.aud.fileformat=amr \
    ro.media.enc.aud.codec=amrnb \
    ro.qc.sdk.izat.premium_enabled=1 \
    ro.qc.sdk.izat.service_mask=0x5 \
    persist.gps.qc_nlp_in_use=1 \
    persist.loc.nlp_name=com.qualcomm.services.location \
    ro.gps.agps_provider=1

# Prima(pronto firmware)
PRODUCT_COPY_FILES += \
    kernel/motorola/msm8610/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    kernel/motorola/msm8610/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini

# Inherit from msm8610-common
$(call inherit-product, device/motorola/msm8610-common/msm8610.mk)
