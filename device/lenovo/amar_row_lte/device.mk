# device.mk - minimal

LOCAL_PATH := $(call my-dir)
PRODUCT_NAME := omni_X306X
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := TB-X306X
PRODUCT_DEVICE := X306X
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_COPY_FILES += \
    vendor/lenovo/README:vendor/lenovo/README


auto_mount := true

PRODUCT_DEFAULT_DEV := $(PRODUCT_DEVICE)
