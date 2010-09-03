#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# This is the product configuration for a generic GSM passion,
# not specialized for any geography.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

PRODUCT_COPY_FILES += \
    device/htc/heroc/init.heroc.rc:root/init.heroc.rc

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/heroc/heroc-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-sprint-us \
	ro.com.google.locationfeatures=1 \
	ro.cdma.home.operator.numeric=310120 \
	ro.cdma.home.operator.alpha=Sprint \
	ro.setupwizard.enable_bypass=1 \
	ro.media.dec.jpeg.memcap=20000000 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y

DEVICE_PACKAGE_OVERLAYS += device/htc/heroc/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# media config xml file
PRODUCT_COPY_FILES += \
    device/htc/heroc/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES += \
    librs_jni \
    sensors.heroc \
    lights.heroc

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/heroc/heroc-keypad.kl:system/usr/keylayout/heroc-keypad.kl \
    device/htc/heroc/heroc-keypad.kcm.bin:system/usr/keychars/heroc-keypad.kcm.bin \
    device/htc/heroc/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl

# Passion uses high-density artwork where available
PRODUCT_LOCALES += mdpi

PRODUCT_COPY_FILES += \
    device/htc/heroc/vold.fstab:system/etc/vold.fstab \
    device/htc/heroc/gps.conf:system/etc/gps.conf

PRODUCT_COPY_FILES += \
   device/htc/heroc/wlan.ko:system/lib/modules/wlan.ko \
   device/htc/heroc/modules/ah6.ko:system/lib/modules/2.6.29.6-cyanogenmod/ah6.ko \
   device/htc/heroc/modules/deflate.ko:system/lib/modules/2.6.29.6-cyanogenmod/deflate.ko \
   device/htc/heroc/modules/esp6.ko:system/lib/modules/2.6.29.6-cyanogenmod/esp6.ko \
   device/htc/heroc/modules/hid-dummy.ko:system/lib/modules/2.6.29.6-cyanogenmod/hid-dummy.ko \
   device/htc/heroc/modules/ip6_tunnel.ko:system/lib/modules/2.6.29.6-cyanogenmod/ip6_tunnel.ko \
   device/htc/heroc/modules/ipcomp6.ko:system/lib/modules/2.6.29.6-cyanogenmod/ipcomp6.ko \
   device/htc/heroc/modules/ipv6.ko:system/lib/modules/2.6.29.6-cyanogenmod/ipv6.ko \
   device/htc/heroc/modules/mip6.ko:system/lib/modules/2.6.29.6-cyanogenmod/mip6.ko \
   device/htc/heroc/modules/ramzswap.ko:system/lib/modules/2.6.29.6-cyanogenmod/ramzswap.ko \
   device/htc/heroc/modules/sit.ko:system/lib/modules/2.6.29.6-cyanogenmod/sit.ko \
   device/htc/heroc/modules/tunnel4.ko:system/lib/modules/2.6.29.6-cyanogenmod/tunnel4.ko \
   device/htc/heroc/modules/tunnel6.ko:system/lib/modules/2.6.29.6-cyanogenmod/tunnel6.ko \
   device/htc/heroc/modules/xfrm6_mode_beet.ko:system/lib/modules/2.6.29.6-cyanogenmod/xfrm6_mode_beet.ko \
   device/htc/heroc/modules/xfrm6_mode_ro.ko:system/lib/modules/2.6.29.6-cyanogenmod/xfrm6_mode_ro.ko \
   device/htc/heroc/modules/xfrm6_mode_transport.ko:system/lib/modules/2.6.29.6-cyanogenmod/xfrm6_mode_transport.ko \
   device/htc/heroc/modules/xfrm6_mode_tunnel.ko:system/lib/modules/2.6.29.6-cyanogenmod/xfrm6_mode_tunnel.ko \
   device/htc/heroc/modules/xfrm6_tunnel.ko:system/lib/modules/2.6.29.6-cyanogenmod/xfrm6_tunnel.ko \
   device/htc/heroc/modules/xfrm_ipcomp.ko:system/lib/modules/2.6.29.6-cyanogenmod/xfrm_ipcomp.ko \
   device/htc/heroc/modules/xt_TCPMSS.ko:system/lib/modules/2.6.29.6-cyanogenmod/xt_TCPMSS.ko \
   device/htc/heroc/modules/xt_hashlimit.ko:system/lib/modules/2.6.29.6-cyanogenmod/xt_hashlimit.ko 

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/heroc/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


$(call inherit-product-if-exists, vendor/htc/heroc/heroc-vendor.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full.mk)


PRODUCT_NAME := generic_heroc
PRODUCT_DEVICE := heroc
