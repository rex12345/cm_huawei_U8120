# Inherit AOSP device configuration for dream_sapphire.
$(call inherit-product, device/huawei/u8120/device_u8120.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM-only stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_u8120
PRODUCT_BRAND := google
PRODUCT_DEVICE := u8120
PRODUCT_MODEL := U8120
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRG83D BUILD_DISPLAY_ID=FRG83D BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2.1/FRG83D/75603:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.2.1 FRG83D 75603 release-keys"

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6-$(shell date +%m%d%Y)-NIGHTLY-U8120
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-6.2.0-RC0-U8120
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-6.2.0-RC0-U8120-KANG
    endif
endif


#
# Copy DS specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip 
