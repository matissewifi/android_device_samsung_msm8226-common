# Copyright (C) 2012 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/msm8226-common

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8226 \
    audio.r_submix.default \
    audio.usb.default

PRODUCT_PACKAGES += \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

PRODUCT_PACKAGES += \
    libwvm_shim

# Display
PRODUCT_PACKAGES += \
    copybit.msm8226 \
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    memtrack.msm8226

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/gps/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    $(LOCAL_PATH)/gps/com.android.location.provider.xml:system/etc/permission/com.android.location.provider.xml \
    $(LOCAL_PATH)/gps/com.qualcomm.location.xml:system/etc/permissions/com.qualcomm.location.xml

# Inherit from qcom-common
$(call inherit-product, device/samsung/qcom-common/qcom-common.mk)

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml  \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml

# OMX
PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_OUT_ETC)/system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_OUT_ETC)/system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_OUT_ETC)/system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_OUT_ETC)/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_OUT_ETC)/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_OUT_ETC)/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_OUT_ETC)/system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_OUT_ETC)/system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_OUT_ETC)/system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_OUT_ETC)/system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_OUT_ETC)/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_OUT_ETC)/system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_OUT_ETC)/system/etc/permissions/handheld_core_hardware.xml

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8226

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=adb

# SamsungDoze
PRODUCT_PACKAGES += \
    SamsungDoze

# System properties
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=false \
    av.offload.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

PRODUCT_PACKAGES += \
    libwcnss_qmi
