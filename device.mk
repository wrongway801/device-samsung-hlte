$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/hlte/hlte-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/hlte/overlay

LOCAL_PATH := device/samsung/hlte
ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := $(LOCAL_PATH)/zImage
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.qcom:recovery/root/fstab.qcom

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := samsung_hlte
PRODUCT_BRAND := Samsung
