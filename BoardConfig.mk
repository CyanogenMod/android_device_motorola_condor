Skip to content
This repository
Search
Pull requests
Issues
Gist
 @shubhmg
 Watch 20
  Star 25
 Fork 68 CyanogenMod/android_device_motorola_condor
 Code  Issues 3  Pull requests 0  Wiki  Pulse  Graphs
Branch: cm-13.0 Find file Copy pathandroid_device_motorola_condor/BoardConfig.mk
fbf130a  on Dec 15, 2015
@ashwinr64 ashwinr64 Condor: Enforce SELinux
15 contributors @percy-g2 @ashwinr64 @JackpotClavin @scritch007 @sultanqasim @cyanogen @luca020400 @khusika @KonstaT @intervigilium @myfluxi @mdmower @dcalandria @luk1337 @Alberto97
RawBlameHistory    45 lines (36 sloc)  1.43 KB
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

# inherit from common msm8610-common
-include device/motorola/msm8610-common/BoardConfigCommon.mk

LOCAL_PATH := device/motorola/condor

# Kernel
TARGET_KERNEL_CONFIG := cm_condor_defconfig
TARGET_KERNEL_SOURCE := kernel/motorola/msm8610

# Storage & partiiton
BOARD_BOOTIMAGE_PARTITION_SIZE := 10444800
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10526720
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 939524096
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2356543488
BOARD_CACHEIMAGE_PARTITION_SIZE := 476184576
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/fstab.qcom

# Asserts
TARGET_OTA_ASSERT_DEVICE := xt1021,xt1022,xt1023,condor_umts,condor_umtsds,condor

# Init
TARGET_INIT_VENDOR_LIB := libinit_condor

BOARD_SEPOLICY_DIRS += \
    device/motorola/condor/sepolicy
