TARGET := iphone:clang:14.4:13.0
INSTALL_TARGET_PROCESSES = SpringBoard
GO_EASY_ON_ME = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ZZAccentCustom
ZZAccentCustom_FILES = Tweak.xm
ZZAccentCustom_CFLAGS = -fobjc-arc
ZZAccentCustom_FRAMEWORKS = UIKit Foundation
ZZAccentCustom_LIBRARIES = sparkcolourpicker sparkapplist
ARCHS = arm64 arm64e

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += accentcustomprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
