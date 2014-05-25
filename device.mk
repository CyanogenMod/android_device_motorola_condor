#
# Copyright (C) 2013 The Android Open-Source Project
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


LOCAL_KERNEL := device/moto/condor/kernel

PRODUCT_COPY_FILES := \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/moto/condor/rootdir/module_hashes:root/module_hashes \
    device/moto/condor/rootdir/fstab.qcom:root/fstab.qcom \
    device/moto/condor/rootdir/init.mmi.boot.sh:root/init.mmi.boot.sh \
    device/moto/condor/rootdir/init.mmi.rc:root/init.mmi.rc \
    device/moto/condor/rootdir/init.mmi.touch.sh:root/init.mmi.touch.sh \
    device/moto/condor/rootdir/init.mmi.usb.rc:root/init.mmi.usb.rc \
    device/moto/condor/rootdir/init.mmi.usb.sh:root/init.mmi.usb.sh \
    device/moto/condor/rootdir/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/moto/condor/rootdir/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    device/moto/condor/rootdir/init.qcom.rc:root/init.qcom.rc \
    device/moto/condor/rootdir/init.qcom.sh:root/init.qcom.sh \
    device/moto/condor/rootdir/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    device/moto/condor/rootdir/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    device/moto/condor/rootdir/init.target.rc:root/init.target.rc \
    device/moto/condor/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/moto/condor/rootdir/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    device/moto/condor/rootdir/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/moto/condor/rootdir/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/moto/condor/rootdir/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    device/moto/condor/rootdir/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/moto/condor/rootdir/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh

# Prebuilt input device calibration files
PRODUCT_COPY_FILES += \
    device/moto/condor/touch_dev.idc:system/usr/idc/touch_dev.idc

PRODUCT_COPY_FILES += \
    device/moto/condor/audio_policy.conf:system/etc/audio_policy.conf \
    device/moto/condor/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_COPY_FILES += \
    device/moto/condor/media_codecs.xml:system/etc/media_codecs.xml \
    device/moto/condor/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    device/moto/condor/sec_config:system/etc/sec_config \
    device/moto/condor/thermal-engine-8610.conf:system/etc/thermal-engine-8610.conf \
    device/moto/condor/xtwifi.conf:system/etc/xtwifi.conf \
    device/moto/condor/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    device/moto/condor/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/moto/condor/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    device/moto/condor/modules/dma_test.ko:system/lib/modules/dma_test.ko \
    device/moto/condor/modules/gpio_axis.ko:system/lib/modules/gpio_axis.ko \
    device/moto/condor/modules/gpio_event.ko:system/lib/modules/gpio_event.ko \
    device/moto/condor/modules/gpio_input.ko:system/lib/modules/gpio_input.ko \
    device/moto/condor/modules/gpio_matrix.ko:system/lib/modules/gpio_matrix.ko \
    device/moto/condor/modules/gpio_output.ko:system/lib/modules/gpio_output.ko \
    device/moto/condor/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
    device/moto/condor/modules/oprofile.ko:system/lib/modules/oprofile.ko \
    device/moto/condor/modules/qcedev.ko:system/lib/modules/qcedev.ko \
    device/moto/condor/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
    device/moto/condor/modules/radio-iris-transport.ko:system/lib/modules/radio-iris-transport.ko \
    device/moto/condor/modules/rdbg.ko:system/lib/modules/rdbg.ko \
    device/moto/condor/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
    device/moto/condor/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/moto/condor/modules/test-iosched.ko:system/lib/modules/test-iosched.ko \
    device/moto/condor/modules/pronto/pronto_wlan.ko:system/lib/modules/pronto/pronto_wlan.ko

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

PRODUCT_TAGS += dalvik.gc.type-precise

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_CHARACTERISTICS := nosdcard

DEVICE_PACKAGE_OVERLAYS := \
    device/moto/condor/overlay

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

PRODUCT_PACKAGES += \
    gralloc.msm8610 \
    libgenlock \
    lights.msm8610 \
    hwcomposer.msm8610

PRODUCT_PACKAGES += \
    audio.msm8610 \
    audio_policy.msm8610

PRODUCT_PACKAGES += \
    audio.primary.msm8610 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler

PRODUCT_PACKAGES += \
    wlan_module_symlink \
	wlan_persist_symlink

PRODUCT_PACKAGES += \
    libion

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# Filesystem management tools
#PRODUCT_PACKAGES += \
#    e2fsck

# for off charging mode
#PRODUCT_PACKAGES += \
#    charger \
#    charger_res_images

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.version.qcom=AU_LINUX_ANDROID_LNX.LA.3.5.1_RB1.04.04.02.048.020 \
    persist.sys.logkit.ctrlcode=0 \
    ro.vendor.extension_library=/vendor/lib/libqc-opt.so \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.usb.mtp=0x2e82 \
    ro.usb.mtp_adb=0x2e76 \
    ro.usb.ptp=0x2e83 \
    ro.usb.ptp_adb=0x2e84 \
    ro.usb.bpt=0x2e28 \
    ro.usb.bpt_adb=0x2e29 \
    ro.usb.bpteth=0x2e2a \
    ro.usb.bpteth_adb=0x2e2b \
    persist.audio.calfile0=/etc/Bluetooth_cal.acdb \
    persist.audio.calfile1=/etc/General_cal.acdb \
    persist.audio.calfile2=/etc/Global_cal.acdb \
    persist.audio.calfile3=/etc/Handset_cal.acdb \
    persist.audio.calfile4=/etc/Hdmi_cal.acdb \
    persist.audio.calfile5=/etc/Headset_cal.acdb \
    persist.audio.calfile6=/etc/Speaker_cal.acdb \
    persist.sys.qc.sub.rdump.max=3 \
    mdc_initial_max_retry=10 \
    persist.radio.apn_delay=5000 \
    drm.service.enabled=true \
    ro.com.google.gmsversion=4.4_r3 \
    ro.carrier=unknown \
    ro.media.enc.aud.fileformat=amr \
    ro.media.enc.aud.codec=amrnb \
    ro.qc.sdk.izat.premium_enabled=1 \
    ro.qc.sdk.izat.service_mask=0x5 \
    persist.gps.qc_nlp_in_use=1 \
    persist.loc.nlp_name=com.qualcomm.services.location \
    ro.gps.agps_provider=1

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-qmi-1.so

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/phone-hdpi-dalvik-heap.mk)

$(call inherit-product-if-exists, hardware/qcom/msm8x74/msm8x74.mk)
$(call inherit-product-if-exists, vendor/qcom/gpu/msm8x74/msm8x74-gpu-vendor.mk)
