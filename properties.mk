#
# Properties for doha
#

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.physical.num=4

# Device Info
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.product.display: Moto G⁸ Plus 

# Firmware
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.hw.modem_version=.

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.sf.color_mode=0

# Sensor
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.hardware.sensors=doha \
    ro.vendor.sensors.mot_ltv=true \
    ro.vendor.sensors.glance_approach=false
