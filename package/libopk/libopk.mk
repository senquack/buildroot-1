#############################################################
#
# libopk
#
#############################################################
LIBOPK_VERSION = 6e90206
LIBOPK_SITE = $(call github,pcercuei,libopk,$(LIBOPK_VERSION))
LIBOPK_DEPENDENCIES = libini zlib

$(eval $(cmake-package))
