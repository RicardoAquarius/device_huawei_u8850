$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/u8850/u8850-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8850/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/u8850/kernel/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    lights.u8850 \
    gps.u8850

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm7x30 \
    audio.primary.msm7x30 \
    libaudioutils \
    libtinyalsa

# Video
PRODUCT_PACKAGES += \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# Camera
#PRODUCT_PACKAGES += \
#    camera.fb0

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Omx
PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libmm-omxcore \
    ibOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxAmrEnc \
    libOmxAacEnc \
    libdivxdrmdecrypt \
    libstagefrighthw

# Live Wallpapers
PRODUCT_PACKAGES += \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    PhaseBeam \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Applications
PRODUCT_PACKAGES += \
    Camera \
    Development \
    FileManager \
    LatinIME \
    Mms \
    Stk \
    VideoEditor \
    VoiceDialer \
    SpareParts \
    SyncProvider \
    Superuser \
    su 
 
# CyanogenMod Packages
PRODUCT_PACKAGES += \
    CMSettings \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf
       
# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8850/kernel/init.u8850.rc:root/init.u8850.rc \
    device/huawei/u8850/kernel/ueventd.rc:root/ueventd.rc 

# init.d 
#PRODUCT_COPY_FILES += \
#   device/fih/fb0/prebuilt/etc/08hostapd:/system/etc/init.d/08hostapd \
#   device/fih/fb0/prebuilt/etc/100complete:/system/etc/init.d/100complete 
    
# Gsensor & Ecompass
PRODUCT_COPY_FILES += \
    device/huawei/u8850/prebuilt/app/ECompassCalibration.apk:/system/app/ECompassCalibration.apk \
    device/huawei/u8850/prebuilt/app/GSensorCalibration.apk:/system/app/GSensorCalibration.apk

# vold
PRODUCT_COPY_FILES += \
    device/huawei/u8850/vold.fstab:system/etc/vold.fstab

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:/system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# init scripts
PRODUCT_COPY_FILES += \
   device/huawei/u8850/files/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
   device/huawei/u8850/files/etc/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
   device/huawei/u8850/files/etc/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
   device/huawei/u8850/files/etc/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \
   device/huawei/u8850/files/etc/init.bcm4329.bt.sh:/system/etc/init.bcm4329.bt.sh \
   device/huawei/u8850/files/etc/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
   device/huawei/u8850/files/etc/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
   device/huawei/u8850/files/etc/init.goldfish.sh:/system/etc/init.goldfish.sh 


# Keychars
PRODUCT_COPY_FILES += \
    device/huawei/u8850/keychars/AVRCP.kcm.binn:system/usr/keychars/AVRCP.kcm.bin \
    device/huawei/u8850/keychars/gpio-keys.kcm.bin:system/usr/keychars/gpio-keys.kcm.bin \
    device/huawey/u8850/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/huawei/u8850/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/fih/fb0/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin 

# Keylayouts
PRODUCT_COPY_FILES += \
    device/huawe/u8850/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/huawe/u8850/keylayout/sf8_kybd.kl:system/usr/keylayout/sf8_kybd.kl \
    device/huawei/u8850/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/u8850/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/u8850/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl 

# Video firmware
PRODUCT_COPY_FILES += \
    device/huawei/u8850/files/etc/firmware/vidc_720p_command_control.fw:/system/etc/firmware/vidc_720p_command_control.fw \
    device/huawei/u8850/files/etc/firmware/vidc_720p_h263_dec_mc.fw:/system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/huawei/u8850/files/etc/firmware/vidc_720p_h264_dec_mc.fw:/system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/huawei/u8850/files/etc/firmware/vidc_720p_h264_enc_mc.fw:/system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/huawei/u8850/files/etc/firmware/vidc_720p_mp4_dec_mc.fw:/system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/huawei/u8850/files/etc/firmware/vidc_720p_mp4_enc_mc.fw:/system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/huawei/u8850/files/etc/firmware/vidc_720p_vc1_dec_mc.fw:/system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/huawei/u8850/files/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/huawei/u8850/files/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw 
            
# Wifi and filesystems
PRODUCT_COPY_FILES += \
    device/huawei/u8850/modules/libra.ko:/system/lib/modules/libra.ko \
    device/huawei/u8850/modules/librasdioif.ko:/system/lib/modules/librasdioif.ko \
    device/huawei/u8850/modules/libra_ftm.ko:/system/lib/modules/libra_ftm.ko \
    device/huawei/u8850/files/etc/firmware/wlan/qcom_fw.bin:/system/etc/firmware/wlan/qcom_fw.bin \
    device/huawei/u8850/files/etc/firmware/wlan/qcom_wapi_fw.bin:/system/etc/firmware/wlan/qcom_wapi_fw.bin \
    device/huawei/u8850/files/etc/firmware/wlan/qcom_wlan_nv.bin:/system/etc/firmware/wlan/qcom_wlan_nv.bin \
    device/huawei/u8850/files/etc/firmware/wlan/cfg.dat:/system/etc/firmware/wlan/cfg.dat \
    device/huawei/u8850/files/etc/firmware/wlan/qcom_cfg.ini:/system/etc/firmware/wlan/qcom_cfg.ini \
    device/huawei/u8850/files/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf 
       
# GPS
PRODUCT_COPY_FILES += \
    device/huawei/u8850/files/etc/loc_parameter.ini:system/etc/loc_parameter.ini \
    device/huawei/u8850/files/etc/gps.conf:/system/etc/gps.conf
    
# icu
PRODUCT_COPY_FILES += \
    device/huawei/u8850/files/usr/icu/icudt44l.dat:/system/usr/icu/icudt44l.dat 

# xml config
PRODUCT_COPY_FILES += \
    device/huawei/u8850/files/etc/media_profiles.xml:system/etc/media_profiles.xml

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.telephony.default_network=0 \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.ril_class=LGEQualcommRIL \
    ro.telephony.ril.v3=icccardstatus,skipbrokendatacall,datacall,signalstrength,facilitylock \
    keyguard.no_require_sim=true \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.execution-mode=int:jit \
    ro.sf.lcd_density=240 \
    dalvik.vm.checkjni=false \
    ro.opengles.version=131072  \
    ro.compcache.default=0 \
    ro.product.locale.language=en \
    ro.product.locale.region=US \
    ro.use_data_netmgrd=true \
    hwui.render_dirty_regions=false
#    hwui.render_dirty_regions=false \
#    ro.cm.version=9-${DATE}-SNAPSHOT-FB0 \
#    ro.modversion=9-${DATE}-SNAPSHOT-FB0
    
# High-density art, but English locale
PRODUCT_LOCALES += en
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=u8850 \
    TARGET_DEVICE=u8850 \
    BUILD_FINGERPRINT="google/sanaes/maguro:4.0.4/IMM76D/299849:user/release-keys" \
    PRIVATE_BUILD_DESC="sanaes-user 4.0.4 IMM76D 299849 release-keys" \
    BUILD_NUMBER=${DATE} \
    BUILD_VERSION_TAGS=release-keys \
    TARGET_BUILD_TYPE=eng 

