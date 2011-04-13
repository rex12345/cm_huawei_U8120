# Copyright (C) 2007 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/u8120/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := msm7k

TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6j

TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WIFI_DRIVER_MODULE_PATH     := "/system/wifi/ar6000.ko"
WIFI_DRIVER_MODULE_NAME     := "ar6000"

BOARD_KERNEL_CMDLINE := mem=211M androidboot.hardware=qcom no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 2048


## Graphics
BOARD_EGL_CFG := device/huawei/u8120/egl.cfg
BOARD_HAS_LIMITED_EGL := true
TARGET_HARDWARE_3D := false
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_NO_RGBX_8888 := true

NO_FALLBACK_FONT:=true

## Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false

## RIL
TARGET_PROVIDES_LIBRIL := true

## HW
TARGET_USES_OLD_LIBSENSORS_HAL := true
BOARD_HAVE_BLUETOOTH := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_USE_AKMD := akm8973

## GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := U8120
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 3200

#we do not use libloc_api from eclair rom.Lets see 
#BOARD_GPS_LIBRARIES := libloc_api

## USB
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

## JIT
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8


# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 0aa00000 00020000 "system"
# mtd2: 0bda0000 00020000 "userdata"
# mtd3: 04600000 00020000 "cache"
# mtd4: 00500000 00020000 "recovery"
# mtd5: 00140000 00020000 "misc"


BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0aa00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0bda0000
BOARD_FLASH_BLOCK_SIZE := 131072 #0x00020000

TARGET_OTA_ASSERT_DEVICE := joy,U8120
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=U8120
TARGET_BOOTLOADER_BOARD_NAME := U8120

TARGET_PREBUILT_KERNEL := device/huawei/u8120/kernel