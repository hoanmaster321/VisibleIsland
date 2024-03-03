ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
	ARCHS = arm64
	TARGET = iphone:clang:15.5:15.0
else
	ARCHS = armv7 armv7s arm64
	TARGET = iphone:clang:14.2:7.0
endif
INSTALL_TARGET_PROCESSES = backboardd aggregated


ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = VisibleIsland

VisibleIsland_FILES = Tweak.xm 
VisibleIsland_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += visibleislandprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
