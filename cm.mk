## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/e970/full_e970.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e970
PRODUCT_NAME := cm_e970
PRODUCT_BRAND := LGE
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2.1/JOP40D/533553:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.1 JOP40D 533553 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
