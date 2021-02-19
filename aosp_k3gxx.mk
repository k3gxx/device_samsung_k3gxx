# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/k3gxx/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/common.mk)

#Bootanimation res
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_k3gxx
PRODUCT_DEVICE := k3gxx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL:= SM-G900H
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-G900H \
    PRODUCT_NAME=k3gxx \
    PRODUCT_DEVICE=k3gxx \
    TARGET_DEVICE=k3gxx \
    BUILD_FINGERPRINT="samsung/k3gxx/k3g:6.0.1/MMB29K/G900HXXU1CPF2:user/release-keys" \
    PRIVATE_BUILD_DESC="k3gxx-user 6.0.1 MMB29K G900HXXU1CPF2 release-keys"