################################################################################
#
# Batocera controller overlays
#
################################################################################
# Last commit: Dec 15, 2023
BATOCERA_CONTROLLER_OVERLAYS_VERSION = 604626dc0309823d7ef1caacffe0f7c7e676b548
BATOCERA_CONTROLLER_OVERLAYS_SITE = $(call github,batocera-linux,batocera-controller-overlays,$(BATOCERA_CONTROLLER_OVERLAYS_VERSION))

define BATOCERA_CONTROLLER_OVERLAYS_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/batocera/controller-overlays/
    cp -f $(@D)/solid/*.png $(TARGET_DIR)/usr/share/batocera/controller-overlays/
endef

$(eval $(generic-package))
