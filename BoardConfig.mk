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

-include vendor/motorola/condor/BoardConfigVendor.mk

# inherit from common msm8610-common
-include device/motorola/msm8610-common/BoardConfigCommon.mk

LOCAL_PATH := device/motorola/condor

# Kernel
TARGET_KERNEL_CONFIG := cm_condor_defconfig
TARGET_KERNEL_SOURCE := kernel/motorola/msm8610

BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

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
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_condor.cpp

BOARD_SEPOLICY_DIRS += \
    device/motorola/condor/sepolicy
