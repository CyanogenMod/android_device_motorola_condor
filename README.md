Unified Device Tree For Motorola E
==================================

The Motorola (codenamed _"Condor"_) is a low-range smartphone from Motorola mobility.
It was announced on May 2014.

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Dual-core 1.2 GHz Cortex-A7
CHIPSET | Qualcomm Snapdragon 200
GPU     | Adreno 302
Memory  | 1GB RAM
Shipped Android Version | 4.4.2
Storage | 4GB
MicroSD | Upto 32 GB
Battery | 1980 mAh
Display | 4.91 x 2.55 x 0.48 in
Camera  | 5 MP, 2592 х 1944 pixels

![Motorola E](https://camo.githubusercontent.com/65db99a8598e2e96a3b1e88f76020559ac23618c/687474703a2f2f63646e322e67736d6172656e612e636f6d2f76762f6269677069632f6d6f746f726f6c612d6d6f746f2d652e6a7067 "Motorola E")

This branch is for building CyanogenMod 12.0 Firmware.
How to build:
-------------

Initialize repo:

    repo init -u git://github.com/CyanogenMod/android.git -b cm-12.0
    curl --create-dirs -L -o .repo/local_manifests/manifest_motorola_condor.xml -O -L https://raw.githubusercontent.com/skritchz/android_device_motorola_condor/cm-12.0/manifests/manifest_motorola_condor.xml
    repo sync

Compile:

    . build/envsetup.sh
    brunch cm_condor-userdebug
