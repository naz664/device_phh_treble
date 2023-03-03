$(call inherit-product, vendor/wings/config/common.mk)
$(call inherit-product, vendor/wings/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/wings/config/BoardConfigWings.mk)
$(call inherit-product, device/wings/sepolicy/common/sepolicy.mk)
-include vendor/wings/build/core/config.mk
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
SELINUX_IGNORE_NEVERALLOWS := true
TARGET_BOOT_ANIMATION_RES := 1080

TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true

#WINGS_GAPPS := true
WINGS_OFFICIAL := true

TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080

# Set Bootanimation at 720P
TARGET_BOOT_ANIMATION_RES := 720

# APN
PRODUCT_PACKAGES += apns-conf.xml

#PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
#          persist.sys.binary_xml=false \
#          dalvik.vm.dex2oat64.enabled=true \



