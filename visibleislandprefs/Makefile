ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
	ARCHS = arm64
	TARGET = iphone:clang:15.5:15.0
else
	ARCHS = armv7 armv7s arm64
	TARGET = iphone:clang:14.2:7.0
endif

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = VisibleIslandPrefs

VisibleIslandPrefs_FILES = VISRootListController.m CLRRootListController.m NOTRootListController.m SCLRootListController.m
VisibleIslandPrefs_FRAMEWORKS = UIKit
VisibleIslandPrefs_PRIVATE_FRAMEWORKS = Preferences
VisibleIslandPrefs_INSTALL_PATH = /Library/PreferenceBundles
VisibleIslandPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
