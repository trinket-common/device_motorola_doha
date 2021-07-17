#
# Properties for parker
#

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.physical.num=4

# HDR
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.display.hdr.config=/vendor/etc/hdr_tm_config.xml

# Sensor
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.hardware.sensors=doha \
    ro.vendor.sensors.mot_ltv=true
