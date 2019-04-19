################################################################################
#
# odbootd
#
################################################################################

ODBOOTD_VERSION = fc4f329
ODBOOTD_SITE = $(call github,opendingux,odbootd,$(ODBOOTD_VERSION))

ODBOOTD_CONF_OPTS = -DWITH_ODBOOT_CLIENT:BOOL=OFF

$(eval $(cmake-package))
