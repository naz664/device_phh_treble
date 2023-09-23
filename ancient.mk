$(call inherit-product, vendor/ancient/config/common_full_phone.mk)
$(call inherit-product, vendor/ancient/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/ancient/config/BoardConfig.mk)
$(call inherit-product, device/ancient/sepolicy/common/sepolicy.mk)
-include vendor/ancient/build/core/config.mk
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
SELINUX_IGNORE_NEVERALLOWS := true
TARGET_BOOT_ANIMATION_RES := 1080

#ANCIENT_GAPPS=true
#FORCE_NEXUSLAUNCHER=true
#ANCIENT_WEEABO=true
ANCIENT_OFFICIAL := true

# APN
PRODUCT_PACKAGES += apns-conf.xml
