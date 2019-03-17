################################################################################
#
# odbootd
#
################################################################################

ODBOOTD_VERSION = e919e44
ODBOOTD_SITE = $(call github,opendingux,odbootd,$(ODBOOTD_VERSION))

$(eval $(cmake-package))
