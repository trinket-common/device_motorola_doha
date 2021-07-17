#
# Properties for doha
#

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.physical.num=4 \
    persist.vendor.camera.tof.direct=1

# Device Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.product.display: Moto G⁸ Plus 

# HDR
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.display.hdr.config=/vendor/etc/hdr_tm_config.xml

# Sensor
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.hardware.sensors=doha \
    ro.vendor.sensors.mot_ltv=true
