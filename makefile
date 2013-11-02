#
# Makefile for m1s
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of LEWA rom, the default is porting_lewa.zip if not specified
local-out-zip-file := lewa_ef65l.zip

# the location for local-ota to save target-file
local-previous-target-dir := ~/workspace/ota_base/ef65l_4.1

# All apps from original ZIP, but has smali files chanded
local-modified-apps := Bluetooth Browser

local-modified-jars :=

# All apks from LEWA
local-lewa-removed-apps := LewaIntercept LatinIME Bluetooth LewaGameCenter

local-lewa-modified-apps := LewaPower+ Settings LewaCalculator LewaDeskClock LewaSoundRecorder LewaLauncherX SystemUI

# set ro.sys.partner in build.prop for lewa partner
local-lewa-partner := syhost

local-lewa-device := A820L_JB

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XHDPI

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt

local-pre-zip-misc: add-prebuilt-lewa-sqlite-library
	@echo customize build.prop
	cp -f other/build.prop $(ZIP_DIR)/system/build.prop
	cp other/boot.img $(ZIP_DIR)/boot.img
	cp -f other/bootanimation.zip $(ZIP_DIR)/system/media
	cp -r other/preinstall $(ZIP_DIR)/system/vendor/
