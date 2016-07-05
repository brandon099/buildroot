################################################################################
#
# fish
#
################################################################################

FISH_VERSION = 2.3.0
FISH_SITE = https://fishshell.com/files/2.3.0
FISH_SOURCE = fish-$(FISH_VERSION).tar.gz
FISH_DEPENDENCIES = ncurses
FISH_CONF_OPTS = --bindir=/bin
FISH_LICENSE = GPLv2
FISH_LICENSE_FILES = COPYING

# Remove versioned fish-x.y.z binary taking up space
define FISH_TARGET_INSTALL_FIXUPS
	rm -f $(TARGET_DIR)/bin/fish-$(FISH_VERSION)
endef

$(eval $(autotools-package))
