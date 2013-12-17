# inherit from the proprietary version
-include vendor/samsung/hlte/BoardConfigVendor.mk

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --dt device/samsung/hlte/dt.img --tags_offset 0x01e00000

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOOTLOADER_BOARD_NAME := hlte

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 12058624 # 11.5MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 14260633 # 13.6MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2533359616 # 2416MB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 30279519437 # 28.2GB
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/hlte/zImage

BOARD_SEPOLICY_DIRS := device/samsung/hlte/sepolicy

# The list below is order dependent
BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       file_contexts

# TWRP
DEVICE_RESOLUTION := 1080x1920
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NO_EXFAT_FUSE := true