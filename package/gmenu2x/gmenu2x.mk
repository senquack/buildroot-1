#############################################################
#
# gmenu2x
#
#############################################################
GMENU2X_VERSION = 2f6b923
GMENU2X_SITE = $(call github,opendingux,gmenu2x,$(GMENU2X_VERSION))
GMENU2X_DEPENDENCIES = sdl sdl_ttf sdl_gfx dejavu libpng
GMENU2X_CONF_OPTS = -DCPUFREQ=OFF -DBIND_CONSOLE=ON \
		    -DPLATFORM=$(BR2_PACKAGE_GMENU2X_PLATFORM)

ifeq ($(BR2_PACKAGE_LIBOPK),y)
GMENU2X_DEPENDENCIES += libopk
endif

ifeq ($(BR2_PACKAGE_LIBXDGMIME),y)
GMENU2X_DEPENDENCIES += libxdgmime
endif

$(eval $(cmake-package))
