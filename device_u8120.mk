#
# Copyright (C) 2008 The Android Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS := device/huawei/u8120/overlay

PRODUCT_PACKAGES += \
    libOmxCore \
    #libOmxVidEnc \
    gralloc.msm7k \
    lights.msm7k \
    gps.u8120 \
    librs_jni 

# Add Gallery 3D / Normal
PRODUCT_PACKAGES += \
    Gallery

# vold config
PRODUCT_COPY_FILES += \
    device/huawei/u8120/vold.fstab:system/etc/vold.fstab

# Modules
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/tun.ko:system/lib/modules/2.6.29-perf/tun.ko
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/ramzswap.ko:system/lib/modules/2.6.29-perf/ramzswap.ko

# DHCP config for wifi
PRODUCT_COPY_FILES += \
    device/huawei/u8120/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

PRODUCT_COPY_FILES += \
    device/huawei/u8120/ueventd.qcom.rc:root/ueventd.qcom.rc

#Audio
PRODUCT_COPY_FILES += \
    device/huawei/u8120/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# Use prebuilt vold for now.
#PRODUCT_COPY_FILES += \
    device/huawei/u8120/vold:system/bin/vold

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml

# keychars and keylayout files
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/huawei/u8120/prebuilt/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/huawei/u8120/prebuilt/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/huawei/u8120/prebuilt/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/u8120/prebuilt/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/huawei/u8120/prebuilt/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl 
    

PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.media.dec.jpeg.memcap=10000000

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d /dev/smd0 \
    wifi.interface=eth0 \
    ro.com.android.dataroaming=false \
    ring.delay=0 \
    ro.telephony.call_ring.delay=0 \
    ro.telephony.call_ring.multiple=false \


#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.compcache.default=1 

# Time between scans in seconds. Keep it high to minimize battery drain.
# This only affects the case in which there are remembered access points,
# but none are in range.
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.supplicant_scan_interval=15

# density in DPI of the LCD of this board. This is used to scale the UI
# appropriately. If this property is not defined, the default value is 160 dpi. 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=120

# Default network type
# 0 => WCDMA Preferred.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=0

# Enable JIT by default
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \
    persist.sys.use_dithering=0


# Don't put dexfiles in /cache on u8120
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1

# media configuration xml file
PRODUCT_COPY_FILES += \
    device/huawei/u8120/media_profiles.xml:system/etc/media_profiles.xml

# wpa_supplicant configuration file
PRODUCT_COPY_FILES += \
    device/huawei/u8120/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/u8120/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

## (2) Also get non-open-source aspects if available
$(call inherit-product-if-exists, vendor/huawei/u8120/u8120-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := generic_u8120
PRODUCT_DEVICE := u8120
PRODUCT_MODEL := Huawei U8120
