## Specify phone tech before including full_phone	
$(call inherit-product, vendor/lineage/config/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := core33g

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/goyavewifi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := goyavewifi
PRODUCT_NAME := lineage_goyavewifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T113NU
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet

# Stock build fingerprint
BUILD_FINGERPRINT := "samsung/core33gdd/core33g:4.4.4/KTU84P/G360HDDU0APA3:user/release-keys"
PRIVATE_BUILD_DESC := "core33gdd-user 4.4.4 KTU84P G360HDDU0APA3 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
	ro.build.fingerprint=$(BUILD_FINGERPRINT)
