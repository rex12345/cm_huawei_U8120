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
    libmm-omxcore \
    libOmxVidEnc \
    gralloc.msm7k \
    lights.msm7k \
    copybit.u8120 \
    gps.u8120 \
    librs_jni 

# Add Gallery 3D / Normal
PRODUCT_PACKAGES += \
    Gallery

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers

# Live Wallpapers support
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# vold
PRODUCT_COPY_FILES += \
    device/huawei/u8120/files/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/u8120/files/bin/vold:system/bin/vold

# Modules
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/modules/tun.ko:system/lib/modules/2.6.29-perf/tun.ko \
    device/huawei/u8120/prebuilt/modules/ramzswap.ko:system/lib/modules/2.6.29-perf/ramzswap.ko

# DHCP config for wifi
PRODUCT_COPY_FILES += \
    device/huawei/u8120/files/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

# Init Logo
PRODUCT_COPY_FILES += \
    device/huawei/u8120/files/initlogo.rle:root/initlogo.rle

# Dummy backing file for USB mounting
PRODUCT_COPY_FILES += \
    device/huawei/u8120/files/cdrom/autorun.iso:system/cdrom/autorun.iso

PRODUCT_COPY_FILES += \
    device/huawei/u8120/ueventd.qcom.rc:root/ueventd.qcom.rc

# Keychars & Keylayouts
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/huawei/u8120/prebuilt/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/huawei/u8120/prebuilt/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/huawei/u8120/prebuilt/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/u8120/prebuilt/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/huawei/u8120/prebuilt/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl


# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml
     

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


# Disable compcache
PRODUCT_PROPERTY_OVERRIDES += \
    ro.compcache.default=0

# Time between scans in seconds. Keep it high to minimize battery drain.
# This only affects the case in which there are remembered access points,
# but none are in range.
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.supplicant_scan_interval=15

# density in DPI of the LCD of this board. This is used to scale the UI
# appropriately. If this property is not defined, the default value is 160 dpi. 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=120

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=65536

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
    device/huawei/u8120/files/etc/media_profiles.xml:system/etc/media_profiles.xml

# wpa_supplicant configuration file
PRODUCT_COPY_FILES += \
    device/huawei/u8120/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf


# Proprietary hardware related
PRODUCT_COPY_FILES += \
    vendor/huawei/u8120/proprietary/akmd2:system/bin/akmd2 \
    vendor/huawei/u8120/proprietary/libcamera.so:obj/lib/libcamera.so \
    vendor/huawei/u8120/proprietary/libcamera.so:system/lib/libcamera.so \
    vendor/huawei/u8120/proprietary/libqcamera.so:system/lib/libqcamera.so \
    vendor/huawei/u8120/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/huawei/u8120/proprietary/libmmipl.so:system/lib/libmmipl.so \
    vendor/huawei/u8120/proprietary/libmmprocess.so:system/lib/libmmprocess.so \
    vendor/huawei/u8120/proprietary/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

# Sound and OMX
PRODUCT_COPY_FILES += \
    device/huawei/u8120/files/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8120/files/etc/AudioFilterU8120.csv:system/etc/AudioFilterU8120.csv \
    device/huawei/u8120/files/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    vendor/huawei/u8120/proprietary/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/huawei/u8120/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/huawei/u8120/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/huawei/u8120/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/huawei/u8120/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/huawei/u8120/proprietary/libsnd.so:system/lib/libsnd.so

# HW
PRODUCT_COPY_FILES += \
    vendor/huawei/u8120/proprietary/sensors.default.so:system/lib/hw/sensors.default.so \
    vendor/huawei/u8120/proprietary/lights.msm7k.so:system/lib/hw/lights.msm7k.so

# GPS
PRODUCT_COPY_FILES += \
    device/huawei/u8120/files/etc/gps.conf:system/etc/gps.conf

# Proprietary RIL related
PRODUCT_COPY_FILES += \
    device/huawei/u8120/files/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/huawei/u8120/proprietary/libauth.so:system/lib/libauth.so \
    vendor/huawei/u8120/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/huawei/u8120/proprietary/libril.so:system/lib/libril.so \
    vendor/huawei/u8120/proprietary/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/huawei/u8120/proprietary/libdsm.so:system/lib/libdsm.so \
    vendor/huawei/u8120/proprietary/libqueue.so:system/lib/libqueue.so \
    vendor/huawei/u8120/proprietary/libcm.so:system/lib/libcm.so \
    vendor/huawei/u8120/proprietary/libdiag.so:system/lib/libdiag.so \
    vendor/huawei/u8120/proprietary/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/huawei/u8120/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/huawei/u8120/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/huawei/u8120/proprietary/libwms.so:system/lib/libwms.so \
    vendor/huawei/u8120/proprietary/libnv.so:system/lib/libnv.so \
    vendor/huawei/u8120/proprietary/libwmsts.so:system/lib/libwmsts.so \
    vendor/huawei/u8120/proprietary/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/huawei/u8120/proprietary/libdss.so:system/lib/libdss.so \
    vendor/huawei/u8120/proprietary/libdll.so:system/lib/libdll.so \
    vendor/huawei/u8120/proprietary/libqmi.so:system/lib/libqmi.so \
    vendor/huawei/u8120/proprietary/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/huawei/u8120/proprietary/libwpa_client.so:system/lib/libwpa_client.so \
    vendor/huawei/u8120/proprietary/qmuxd:system/bin/qmuxd \
    vendor/huawei/u8120/proprietary/hci_qcomm_init:system/bin/hci_qcomm_init

# OEM RPC
PRODUCT_COPY_FILES += \
    vendor/huawei/u8120/proprietary/modempre:system/bin/modempre \
    vendor/huawei/u8120/proprietary/oem_rpc_svc:system/bin/oem_rpc_svc \
    vendor/huawei/u8120/proprietary/libhwrpc.so:system/lib/libhwrpc.so \
    vendor/huawei/u8120/proprietary/liboem_rapi.so:system/lib/liboem_rapi.so

## Wifi related
PRODUCT_COPY_FILES += \
    vendor/huawei/u8120/proprietary/ar6000.ko:system/wifi/ar6000.ko \
    vendor/huawei/u8120/proprietary/iwlist:system/wifi/iwlist \
    vendor/huawei/u8120/proprietary/caldata.bin.ar6002:system/wifi/caldata.bin.ar6002 \
    vendor/huawei/u8120/proprietary/data.patch.hw2_0.bin.ar6002:system/wifi/data.patch.hw2_0.bin.ar6002 \
    vendor/huawei/u8120/proprietary/device.bin:system/wifi/device.bin \
    vendor/huawei/u8120/proprietary/udp_server:system/wifi/udp_server \
    vendor/huawei/u8120/proprietary/data.patch.hw2_0.bin.ar6102:system/wifi/data.patch.hw2_0.bin.ar6102 \
    vendor/huawei/u8120/proprietary/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \
    vendor/huawei/u8120/proprietary/caldata.bin.ar6102:system/wifi/caldata.bin.ar6102 \
    vendor/huawei/u8120/proprietary/artagent:system/wifi/artagent \
    vendor/huawei/u8120/proprietary/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
    vendor/huawei/u8120/proprietary/iwconfig:system/wifi/iwconfig




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
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := generic_u8120
PRODUCT_DEVICE := u8120
PRODUCT_MODEL := Huawei U8120
