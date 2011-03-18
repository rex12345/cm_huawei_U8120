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

# This file is generated by device/huawei/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=u8120

mkdir -p ../../../vendor/huawei/$DEVICE/proprietary
adb pull /system/bin/akmd2 ../../../vendor/huawei/$DEVICE/proprietary/akmd2
chmod 755 ../../../vendor/huawei/$DEVICE/proprietary/akmd2
adb pull /system/etc/AudioFilter.csv ../../../vendor/huawei/$DEVICE/proprietary/AudioFilter.csv
adb pull /system/etc/AudioFilterU8120.csv ../../../vendor/huawei/$DEVICE/proprietary/AudioFilterU8120.csv

adb pull /system/lib/libmm-adspsvc.so ../../../vendor/huawei/$DEVICE/proprietary/libmm-adspsvc.so
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/huawei/$DEVICE/proprietary/libOmxH264Dec.so
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/huawei/$DEVICE/proprietary/libOmxMpeg4Dec.so
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/huawei/$DEVICE/proprietary/libOmxVidEnc.so
adb pull /system/lib/libril-qc-1.so ../../../vendor/huawei/$DEVICE/proprietary/libril-qc-1.so
adb pull /system/lib/liboncrpc.so ../../../vendor/huawei/$DEVICE/proprietary/liboncrpc.so
adb pull /system/lib/libdsm.so ../../../vendor/huawei/$DEVICE/proprietary/libdsm.so
adb pull /system/lib/libqueue.so ../../../vendor/huawei/$DEVICE/proprietary/libqueue.so
adb pull /system/lib/libcm.so ../../../vendor/huawei/$DEVICE/proprietary/libcm.so
adb pull /system/lib/libdiag.so ../../../vendor/huawei/$DEVICE/proprietary/libdiag.so
adb pull /system/lib/libmmgsdilib.so ../../../vendor/huawei/$DEVICE/proprietary/libmmgsdilib.so
adb pull /system/lib/libgsdi_exp.so ../../../vendor/huawei/$DEVICE/proprietary/libgsdi_exp.so
adb pull /system/lib/libgstk_exp.so ../../../vendor/huawei/$DEVICE/proprietary/libgstk_exp.so
adb pull /system/lib/libwms.so ../../../vendor/huawei/$DEVICE/proprietary/libwms.so
adb pull /system/lib/libnv.so ../../../vendor/huawei/$DEVICE/proprietary/libnv.so
adb pull /system/lib/libwmsts.so ../../../vendor/huawei/$DEVICE/proprietary/libwmsts.so
adb pull /system/lib/libril-qcril-hook-oem.so ../../../vendor/huawei/$DEVICE/proprietary/libril-qcril-hook-oem.so
adb pull /system/lib/libdss.so ../../../vendor/huawei/$DEVICE/proprietary/libdss.so
adb pull /system/lib/libqmi.so ../../../vendor/huawei/$DEVICE/proprietary/libqmi.so
adb pull /system/wifi/ar6000.ko ../../../vendor/huawei/$DEVICE/proprietary/ar6000.ko
adb pull /system/wifi/iwlist ../../../vendor/huawei/$DEVICE/proprietary/iwlist
adb pull /system/wifi/caldata.bin.ar6002 ../../../vendor/huawei/$DEVICE/proprietary/caldata.bin.ar6002
adb pull /system/wifi/data.patch.hw2_0.bin.ar6002  ../../../vendor/huawei/$DEVICE/proprietary/data.patch.hw2_0.bin.ar6002
adb pull /system/wifi/device.bin ../../../vendor/huawei/$DEVICE/proprietary/device.bin
adb pull /system/wifi/udp_server ../../../vendor/huawei/$DEVICE/proprietary/udp_server
adb pull /system/wifi/data.patch.hw2_0.bin.ar6102 ../../../vendor/huawei/$DEVICE/proprietary/data.patch.hw2_0.bin.ar6102
adb pull /system/wifi/athtcmd_ram.bin ../../../vendor/huawei/$DEVICE/proprietary/athtcmd_ram.bin
adb pull /system/wifi/caldata.bin.ar6102 ../../../vendor/huawei/$DEVICE/proprietary/caldata.bin.ar6102
adb pull /system/wifi/artagent ../../../vendor/huawei/$DEVICE/proprietary/artagent
adb pull /system/wifi/athwlan.bin.z77 ../../../vendor/huawei/$DEVICE/proprietary/athwlan.bin.z77
adb pull /system/wifi/iwconfig ../../../vendor/huawei/$DEVICE/proprietary/iwconfig
adb pull /system/lib/libcamera.so ../../../vendor/huawei/$DEVICE/proprietary/libcamera.so
adb pull /system/bin/oem_rpc_svc ../../../vendor/huawei/$DEVICE/proprietary/oem_rpc_svc
adb pull /system/lib/liboem_rapi.so ../../../vendor/huawei/$DEVICE/proprietary/liboem_rapi.so
adb pull /system/lib/libhwrpc.so ../../../vendor/huawei/$DEVICE/proprietary/libhwrpc.so
adb pull /system/bin/qmuxd ../../../vendor/huawei/$DEVICE/proprietary/qmuxd
adb pull /system/lib/hw/sensors.default.so ../../../vendor/huawei/$DEVICE/proprietary/sensors.default.so
adb pull /system/lib/libloc_api.so ../../../vendor/huawei/$DEVICE/proprietary/libloc_api.so
adb pull /system/lib/libloc_api-rpc.so ../../../vendor/huawei/$DEVICE/proprietary/libloc_api-rpc.so
adb pull /system/lib/libmmjpeg.so ../../../vendor/huawei/$DEVICE/proprietary/libmmjpeg.so
adb pull /system/lib/libmmipl.so ../../../vendor/huawei/$DEVICE/proprietary/libmmipl.so
adb pull /system/etc/init.qcom.bt.sh ../../../vendor/huawei/$DEVICE/proprietary/init.qcom.bt.sh
adb pull /system/bin/hci_qcomm_init ../../../vendor/huawei/$DEVICE/proprietary/hci_qcomm_init
adb pull /system/lib/libdll.so ../../../vendor/huawei/$DEVICE/proprietary/libdll.so
adb pull /system/lib/libpbmlib.so ../../../vendor/huawei/$DEVICE/proprietary/libpbmlib.so
adb pull /system/lib/libcommondefs.so ../../../vendor/huawei/$DEVICE/proprietary/libcommondefs.so
adb pull /system/lib/libsnd.so ../../../vendor/huawei/$DEVICE/proprietary/libsnd.so
adb pull /system/lib/libOmxWmvDec.so ../../../vendor/huawei/$DEVICE/proprietary/libOmxWmvDec.so
adb pull /system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/huawei/$DEVICE/proprietary/libomx_aacdec_sharedlibrary.so
adb pull /system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/huawei/$DEVICE/proprietary/libomx_amrenc_sharedlibrary.so
adb pull /system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/huawei/$DEVICE/proprietary/libomx_avcdec_sharedlibrary.so
adb pull /system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/huawei/$DEVICE/proprietary/libomx_m4vdec_sharedlibrary.so
adb pull /system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/huawei/$DEVICE/proprietary/libomx_mp3dec_sharedlibrary.so
adb pull /system/lib/libaudioeq.so ../../../vendor/huawei/$DEVICE/proprietary/libaudioeq.so
adb pull /system/lib/hw/lights.msm7k.so ../../../vendor/huawei/$DEVICE/proprietary/lights.msm7k.so



(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/huawei/$DEVICE/$DEVICE-vendor-blobs.mk
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

# This file is generated by device/huawei/__DEVICE__/extract-files.sh - DO NOT EDIT

# All the blobs necessary for u8120
PRODUCT_COPY_FILES += \\
    vendor/huawei/__DEVICE__/proprietary/akmd2:system/bin/akmd2 \\
    vendor/huawei/__DEVICE__/proprietary/AudioFilter.csv:system/etc/AudioFilter.csv \\
    vendor/huawei/__DEVICE__/proprietary/AudioFilterU8120.csv:system/etc/AudioFilterU8120.csv \\
    vendor/huawei/__DEVICE__/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/huawei/__DEVICE__/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/huawei/__DEVICE__/proprietary/libril-qc-1.so:/system/lib/libril-qc-1.so \\
    vendor/huawei/__DEVICE__/proprietary/liboncrpc.so:/system/lib/liboncrpc.so \\
    vendor/huawei/__DEVICE__/proprietary/libdsm.so:/system/lib/libdsm.so \\
    vendor/huawei/__DEVICE__/proprietary/libqueue.so:/system/lib/libqueue.so \\
    vendor/huawei/__DEVICE__/proprietary/libcm.so:/system/lib/libcm.so \\
    vendor/huawei/__DEVICE__/proprietary/libdiag.so:/system/lib/libdiag.so \\
    vendor/huawei/__DEVICE__/proprietary/libmmgsdilib.so:/system/lib/libmmgsdilib.so \\
    vendor/huawei/__DEVICE__/proprietary/libgsdi_exp.so:/system/lib/libgsdi_exp.so \\
    vendor/huawei/__DEVICE__/proprietary/libgstk_exp.so:/system/lib/libgstk_exp.so \\
    vendor/huawei/__DEVICE__/proprietary/libwms.so:/system/lib/libwms.so \\
    vendor/huawei/__DEVICE__/proprietary/libnv.so:/system/lib/libnv.so \\
    vendor/huawei/__DEVICE__/proprietary/libwmsts.so:/system/lib/libwmsts.so \\
    vendor/huawei/__DEVICE__/proprietary/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so \\
    vendor/huawei/__DEVICE__/proprietary/libdss.so:/system/lib/libdss.so \\
    vendor/huawei/__DEVICE__/proprietary/libqmi.so:/system/lib/libqmi.so \\
    vendor/huawei/__DEVICE__/proprietary/ar6000.ko:system/wifi/ar6000.ko \\
    vendor/huawei/__DEVICE__/proprietary/iwlist:system/wifi/iwlist \\
    vendor/huawei/__DEVICE__/proprietary/caldata.bin.ar6002:system/wifi/caldata.bin.ar6002 \\
    vendor/huawei/__DEVICE__/proprietary/data.patch.hw2_0.bin.ar6002:system/wifi/data.patch.hw2_0.bin.ar6002 \\
    vendor/huawei/__DEVICE__/proprietary/device.bin:system/wifi/device.bin \\
    vendor/huawei/__DEVICE__/proprietary/udp_server:system/wifi/udp_server \\
    vendor/huawei/__DEVICE__/proprietary/data.patch.hw2_0.bin.ar6102:system/wifi/data.patch.hw2_0.bin.ar6102 \\
    vendor/huawei/__DEVICE__/proprietary/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \\
    vendor/huawei/__DEVICE__/proprietary/caldata.bin.ar6102:system/wifi/caldata.bin.ar6102 \\
    vendor/huawei/__DEVICE__/proprietary/artagent:system/wifi/artagent \\
    vendor/huawei/__DEVICE__/proprietary/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \\
    vendor/huawei/__DEVICE__/proprietary/iwconfig:system/wifi/iwconfig \\
    vendor/huawei/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so \\
    vendor/huawei/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
    vendor/huawei/__DEVICE__/proprietary/oem_rpc_svc:system/bin/oem_rpc_svc \\
    vendor/huawei/__DEVICE__/proprietary/liboem_rapi.so:system/lib/liboem_rapi.so \\
    vendor/huawei/__DEVICE__/proprietary/libhwrpc.so:system/lib/libhwrpc.so \\
    vendor/huawei/__DEVICE__/proprietary/qmuxd:system/bin/qmuxd \\
    vendor/huawei/__DEVICE__/proprietary/sensors.default.so:/system/lib/hw/sensors.default.so \\
    vendor/huawei/__DEVICE__/proprietary/libloc_api.so:/system/lib/libloc_api.so \\
    vendor/huawei/__DEVICE__/proprietary/libloc_api-rpc.so:/system/lib/libloc_api-rpc.so \\
    vendor/huawei/__DEVICE__/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/huawei/__DEVICE__/proprietary/libmmipl.so:system/lib/libmmipl.so \\
    vendor/huawei/__DEVICE__/proprietary/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \\
    vendor/huawei/__DEVICE__/proprietary/hci_qcomm_init:system/bin/hci_qcomm_init \\
    vendor/huawei/__DEVICE__/proprietary/libdll.so:system/lib/libdll.so \\
    vendor/huawei/__DEVICE__/proprietary/libcommondefs.so:system/lib/libcommondefs.so \\
    vendor/huawei/__DEVICE__/proprietary/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/huawei/__DEVICE__/proprietary/libsnd.so:system/lib/libsnd.so \\ 
    vendor/huawei/__DEVICE__/proprietary/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \\
    vendor/huawei/__DEVICE__/proprietary/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \\
    vendor/huawei/__DEVICE__/proprietary/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \\
    vendor/huawei/__DEVICE__/proprietary/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \\
    vendor/huawei/__DEVICE__/proprietary/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \\
    vendor/huawei/__DEVICE__/proprietary/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \\
    vendor/huawei/__DEVICE__/proprietary/libaudioeq.so:system/lib/libaudioeq.so \\
    vendor/huawei/__DEVICE__/proprietary/lights.msm7k.so:system/lib/hw/lights.msm7k.so
EOF

./setup-makefiles.sh
