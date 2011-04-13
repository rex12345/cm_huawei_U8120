#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=u8120

mkdir -p ../../../vendor/huawei/$DEVICE/proprietary

## Binaries need permissions
unzip -j -o ../../../${DEVICE}_update.zip system/bin/akmd2 -d ../../../vendor/huawei/$DEVICE/proprietary
chmod 755  ../../../vendor/huawei/$DEVICE/proprietary/akmd2
unzip -j -o ../../../${DEVICE}_update.zip system/bin/qmuxd -d ../../../vendor/huawei/$DEVICE/proprietary
chmod 755  ../../../vendor/huawei/$DEVICE/proprietary/qmuxd
unzip -j -o ../../../${DEVICE}_update.zip system/bin/modempre -d ../../../vendor/huawei/$DEVICE/proprietary
chmod 755  ../../../vendor/huawei/$DEVICE/proprietary/modempre
unzip -j -o ../../../${DEVICE}_update.zip system/bin/oem_rpc_svc -d ../../../vendor/huawei/$DEVICE/proprietary
chmod 755  ../../../vendor/huawei/$DEVICE/proprietary/oem_rpc_svc
unzip -j -o ../../../${DEVICE}_update.zip system/bin/hci_qcomm_init -d ../../../vendor/huawei/$DEVICE/proprietary
chmod 755  ../../../vendor/huawei/$DEVICE/proprietary/hci_qcomm_init

## OMX
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmm-adspsvc.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxH264Dec.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxMpeg4Dec.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxVidEnc.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libsnd.so -d ../../../vendor/huawei/$DEVICE/proprietary

## RIL
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libril-qc-1.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/liboncrpc.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libdsm.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libqueue.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libauth.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libcm.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libdiag.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmmgsdilib.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libgsdi_exp.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libgstk_exp.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libwms.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libnv.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libwmsts.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libril-qcril-hook-oem.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libril.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libdss.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libdll.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libpppoe_ctrl.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libqmi.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libpbmlib.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libwpa_client.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/liboem_rapi.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libhwrpc.so -d ../../../vendor/huawei/$DEVICE/proprietary

## HW
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/sensors.default.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/lights.msm7k.so -d ../../../vendor/huawei/$DEVICE/proprietary

## GPS
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libcommondefs.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libloc_api.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libloc_api-rpc.so -d ../../../vendor/huawei/$DEVICE/proprietary

## Hardware
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libaudioeq.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libcamera.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libqcamera.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmmjpeg.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmmipl.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmmprocess.so -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/etc/init.qcom.bt.sh -d ../../../vendor/huawei/$DEVICE/proprietary

## Wifi
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/ar6000.ko -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/iwlist -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/iwconfig -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/caldata.bin.ar6002 -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/data.patch.hw2_0.bin.ar6002  -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/device.bin -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/udp_server -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/data.patch.hw2_0.bin.ar6102 -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/athtcmd_ram.bin -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/caldata.bin.ar6102 -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/artagent -d ../../../vendor/huawei/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/wifi/athwlan.bin.z77 -d ../../../vendor/huawei/$DEVICE/proprietary