# BoardConfig.mk for Lenovo TB-X306X (starter)

BOARD_KERNEL_NAME := kernel
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOT_HEADER_VERSION := 2

# Compression (kernel header said gzip ramdisk)
BOARD_RAMDISK_FMT := gzip

# Dynamic partition support
TWRP_SUPPORT_DIGITAL_SIGNATURE := false
BOARD_HAS_MTD_PARTITIONS := false

# Avoid including proprietary blobs in tree; use extract-files.sh

# Recommended for twrp-12 / Android 11
RECOVERY_API_LEVEL := 3

# Kernel cmdline tweaks (if needed)
BOARD_KERNEL_CMDLINE := "bootopt=64S3,32N2,64N2 buildvariant=user"
