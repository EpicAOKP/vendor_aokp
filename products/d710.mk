# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/d710/full_d710.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/aokp/configs/cdma.mk)

# SGS2 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/d710

# Setup device specific product configuration.
PRODUCT_DEVICE := D710
PRODUCT_NAME := aokp_d710
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SPH-D710

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d710 TARGET_DEVICE=d710 BUILD_FINGERPRINT="samsung/d710/d710:4.2.2/JPO40D/FL16:user/release-keys" PRIVATE_BUILD_DESC="d710-user 4.2.2 JPO40D FL16 release-keys"

# Copy d710 specific prebuilt files
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
   vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation-alt.zip

