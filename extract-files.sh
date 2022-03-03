#!/bin/bash



# Qualcomm tools
mkdir -p recovery/root/system/bin
adb shell su -c cat /vendor/bin/qseecomd >> recovery/root/system/bin/qseecomd
adb shell su -c cat /vendor/bin/hw/android.hardware.gatekeeper@1.0-service-qti >> recovery/root/system/bin/android.hardware.gatekeeper@1.0-service-qti
adb shell su -c cat /vendor/bin/hw/android.hardware.keymaster@4.0-service-qti >> recovery/root/system/bin/android.hardware.keymaster@4.0-service-qti

# Touchscreen Modules (Please get from stock firmware sparse image)
#mkdir -p recovery/root/vendor/lib/modules
#adb shell su -c cat /vendor/lib/modules/himax_v2_mmi_hx83102d.ko >> recovery/root/vendor/lib/modules/himax_v2_mmi_hx83102d.ko
#adb shell su -c cat /vendor/lib/modules/himax_v2_mmi.ko >> recovery/root/vendor/lib/modules/himax_v2_mmi.ko
#adb shell su -c cat /vendor/lib/modules/nova_0flash_mmi.ko >> recovery/root/vendor/lib/modules/nova_0flash_mmi.ko

# Touchscreen Firmware
mkdir -p recovery/root/vendor/firmware
adb shell su -c cat /vendor/firmware/hlt_Himax_firmware.bin >> recovery/root/vendor/firmware/hlt_Himax_firmware.bin
adb shell su -c cat /vendor/firmware/hlt_Himax_mpfw.bin >> recovery/root/vendor/firmware/hlt_Himax_mpfw.bin
adb shell su -c cat /vendor/firmware/novatek_ts_fw.bin >> recovery/root/vendor/firmware/novatek_ts_fw.bin
adb shell su -c cat /vendor/firmware/novatek_ts_mp.bin >> recovery/root/vendor/firmware/novatek_ts_mp.bin

# Libs
mkdir -p recovery/root/vendor/lib64/hw
adb shell su -c cat /vendor/lib64/hw/android.hardware.boot@1.0-impl-1.1-qti.so >> recovery/root/vendor/lib64/hw/android.hardware.boot@1.0-impl-1.1-qti.so
adb shell su -c cat /vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so >> recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so
adb shell su -c cat /vendor/lib64/hw/bootctrl.sdm710.so >> recovery/root/vendor/lib64/hw/bootctrl.sdm710.so

mkdir -p recovery/root/vendor/lib64
adb shell su -c cat /vendor/lib64/libdiag.so >> recovery/root/vendor/lib64/libdiag.so
adb shell su -c cat /vendor/lib64/libdrm.so >> recovery/root/vendor/lib64/libdrm.so
adb shell su -c cat /vendor/lib64/libdrmfs.so >> recovery/root/vendor/lib64/libdrmfs.so
adb shell su -c cat /vendor/lib64/libdrmtime.so >> recovery/root/vendor/lib64/libdrmtime.so
adb shell su -c cat /vendor/lib64/libdrmutils.so >> recovery/root/vendor/lib64/libdrmutils.so
adb shell su -c cat /vendor/lib64/libGPreqcancel_svc.so >> recovery/root/vendor/lib64/libGPreqcancel_svc.so
adb shell su -c cat /vendor/lib64/libGPreqcancel.so >> recovery/root/vendor/lib64/libGPreqcancel.so
adb shell su -c cat /vendor/lib64/libkeymasterdeviceutils.so >> recovery/root/vendor/lib64/libkeymasterdeviceutils.so
adb shell su -c cat /vendor/lib64/libkeymasterutils.so >> recovery/root/vendor/lib64/libkeymasterutils.so
adb shell su -c cat /vendor/lib64/libqdutils.so >> recovery/root/vendor/lib64/libqdutils.so
adb shell su -c cat /vendor/lib64/libqisl.so >> recovery/root/vendor/lib64/libqisl.so
adb shell su -c cat /vendor/lib64/libQSEEComAPI.so >> recovery/root/vendor/lib64/libQSEEComAPI.so
adb shell su -c cat /vendor/lib64/libqservice.so >> recovery/root/vendor/lib64/libqservice.so
adb shell su -c cat /vendor/lib64/libqtikeymaster4.so >> recovery/root/vendor/lib64/libqtikeymaster4.so
adb shell su -c cat /vendor/lib64/librecovery_updater_msm.so >> recovery/root/vendor/lib64/librecovery_updater_msm.so
adb shell su -c cat /vendor/lib64/librpmb.so >> recovery/root/vendor/lib64/librpmb.so
adb shell su -c cat /vendor/lib64/libssd.so >> recovery/root/vendor/lib64/libssd.so
adb shell su -c cat /vendor/lib64/libStDrvInt.so >> recovery/root/vendor/lib64/libStDrvInt.so
adb shell su -c cat /vendor/lib64/libtime_genoff.so >> recovery/root/vendor/lib64/libtime_genoff.so
adb shell su -c cat /vendor/lib64/vendor.display.config@1.0.so >> recovery/root/vendor/lib64/vendor.display.config@1.0.so
adb shell su -c cat /vendor/lib64/vendor.qti.hardware.tui_comm@1.0.so >> recovery/root/vendor/lib64/vendor.qti.hardware.tui_comm@1.0.so
adb shell su -c cat /vendor/lib64/libqcbor.so >> recovery/root/vendor/lib64/libqcbor.so

# Apex dependencies
adb shell su -c cat /apex/com.android.vndk.v30/lib64/libxml2.so >> recovery/root/vendor/lib64/libxml2.so