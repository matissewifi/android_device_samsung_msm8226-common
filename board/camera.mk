# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_USE_COMPAT_GRALLOC_ALIGN := true
TARGET_USES_CPU_BOOST_HINT := true

#Faceproc needs this to load
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true