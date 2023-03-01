$(call inherit-product, vendor/ancient/config/common_full_phone.mk)
$(call inherit-product, vendor/ancient/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/ancient/config/BoardConfig.mk)
$(call inherit-product, device/ancient/sepolicy/common/sepolicy.mk)
-include vendor/ancient/build/core/config.mk
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
SELINUX_IGNORE_NEVERALLOWS := true
TARGET_BOOT_ANIMATION_RES := 1080

TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true

TARGET_FACE_UNLOCK_SUPPORTED := true
#ANCIENT_GAPPS=true
#FORCE_NEXUSLAUNCHER=true
#ANCIENT_WEEABO=true
ANCIENT_OFFICIAL := true

# APN
PRODUCT_PACKAGES += apns-conf.xml

#PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
#	persist.sys.binary_xml=false \
#	dalvik.vm.dex2oat64.enabled=true \
