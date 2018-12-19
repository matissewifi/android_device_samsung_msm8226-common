# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from qcom-common
-include device/samsung/qcom-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/msm8226-common

include device/samsung/msm8226-common/board/*.mk

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

#TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

#TODO: Check
# CMHW
BOARD_HARDWARE_CLASS += $(LOCAL_PATH)/cmhw

#TODO: Check
# Custom RIL class
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# QCOM Hardware
BOARD_USES_QCOM_HARDWARE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

#TODO: Check
# Properties (reset them here, include more in device if needed)
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop
-include $(LOCAL_PATH)/system_prop.mk

# SELinux
-include device/qcom/sepolicy/sepolicy.mk
#BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy
