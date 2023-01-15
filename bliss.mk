$(call inherit-product, vendor/bliss/config/common.mk)
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)
$(call inherit-product, vendor/bliss/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/bliss/config/BoardConfigBliss.mk)
$(call inherit-product, device/bliss/sepolicy/common/sepolicy.mk)
$(call inherit-product, vendor/bliss/config/bootanimation.mk)
-include vendor/bliss/build/core/apicheck.mk
-include vendor/bliss/build/core/config.mk

TARGET_NO_KERNEL_OVERRIDE := true
SELINUX_IGNORE_NEVERALLOWS := true

TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true

TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.system.ota.json_url=https://raw.githubusercontent.com/naz664/Bliss_gsi/13/ota.json

# Use CCache
USE_CCACHE := true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
        persist.sys.binary_xml=false \
        dalvik.vm.dex2oat64.enabled=true \

#prebuilts
PRODUCT_PACKAGES += \
  OpenEUICC \

# Set Bootanimation at 720P
TARGET_BOOT_ANIMATION_RES := 720

# APN
PRODUCT_PACKAGES += apns-conf.xml
