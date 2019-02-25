#Charging mode
BOARD_CHARGING_MODE_BOOTING_LPM := "/sys/class/power_supply/battery/batt_lp_charging"
BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGING_CMDLINE_NAME := "androidboot.mode"
BOARD_CHARGING_CMDLINE_VALUE := "charger"
#BOARD_CHARGING_CMDLINE_VALUE := "true"
BOARD_CHARGER_DISABLE_INIT_BLANK := true
#BOARD_CHARGER_ENABLE_SUSPEND := true
#BOARD_CHARGER_SHOW_PERCENTAGE := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_NO_CHARGER_LED := true
#WITH_CM_CHARGER := true

#CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/batt_lp_charging"

# Healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.msm8226
BOARD_HEALTHD_CUSTOM_CHARGER_RES := device/samsung/msm8226-common/libhealthd/images