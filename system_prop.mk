# Android Run Time
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.sys.fw.dex2oat_thread_count=4 \
    dalvik.vm.dex2oat-swap=false \
    dalvik.vm.dex2oat-flags=--no-watch-dog

# Art
ADDITIONAL_DEFAULT_PROPERTIES += \
    dalvik.vm.dex2oat-swap=false

# Audio
ADDITIONAL_DEFAULT_PROPERTIES += \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true \
	ro.qc.sdk.audio.ssr=false \
	ro.qc.sdk.audio.fluencetype=none \
	persist.audio.fluence.voicecall=true \
	persist.audio.fluence.voicerec=false \
	persist.audio.fluence.speaker=true \
	tunnel.audio.encode = true \
	af.resampler.quality=4 \
	ro.hdmi.enable=true \
	use.voice.path.for.pcm.voip=false \
	use.dedicated.device.for.voip=true

# OfficalBuilds
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.debuggable=1

# Bluetooth
ADDITIONAL_DEFAULT_PROPERTIES += \
    qcom.bluetooth.soc=smd \
    qcom.bt.le_dev_pwr_class=1 \
    ro.bluetooth.hfp.ver=true.6 \
    ro.qualcomm.bt.hci_transport=smd

# Camera
ADDITIONAL_DEFAULT_PROPERTIES += \
    camera2.portability.force_api=1

# Dalvik
ADDITIONAL_DEFAULT_PROPERTIES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m \

# Display
ADDITIONAL_DEFAULT_PROPERTIES += \
    debug.composition.type=c2d \
    ro.opengles.version=196608 \
    ro.qualcomm.cabl=0

# GPS
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.gps.qc_nlp_in_use=1 \
    ro.gps.agps_provider=1 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0

# IO Scheduler
    sys.io.scheduler=bfq

# Perf
    ro.vendor.extension_library=/vendor/lib/libqti-perfd-client.so

# CWMR Options
    ro.cwm.forbid_format=/boot,/firmware,/firmware-modem
    ro.cwm.forbid_mount=/boot

# Media
ADDITIONAL_DEFAULT_PROPERTIES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true \

# Strict Mode
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.strictmode.disable=true \

# Storage
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.sys.sdcardfs=false

# Subsystem
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.ssr.enable_debug=0 \

# Sensors
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.qc.sdk.gestures.camera=false \
    ro.qc.sdk.camera.facialproc=false \
    ro.qc.sdk.sensors.gestures=true \
    debug.sensors=true \

# Time
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.timed.enable=true \

# Wi-Fi
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.disableWifiApFirmwareReload=true \
    wifi.interface=wlan0

# Default.prop overrides to get adb working at boot
# ADB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    sys.usb.config=mtp,adb \
    persist.sys.usb.config=mtp,adb
