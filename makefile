#
# Makefile for the ZTE Skate
#

# The original zip file, MUST be specified by each product
local-zip-file     := skate.zip

local-miui-modified-apps := Phone AntiSpam

# All apks from MIUI removed
local-miui-removed-apps := Updater

# All apps need to be removed from original ZIP file
local-remove-apps := \
Gallery2 Gallery3D \
Development		       SpareParts \
DSPManager		       SystemUI

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:=

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	cp ../miui/system/framework/android.policy.jar $(ZIP_DIR)/system/framework/android.policy.jar
	cp ../miui/system/framework/framework-miui-res.apk $(ZIP_DIR)/system/framework/framework-miui-res.apk
	cp overlay/invoke-as $(ZIP_DIR)/system/xbin/invoke-as
	cp overlay/libstagefright.so $(ZIP_DIR)/system/lib/libstagefright.so
