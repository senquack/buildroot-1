################################################################################
#
# libhugetlbfs
#
################################################################################

LIBHUGETLBFS_VERSION = 2.21
LIBHUGETLBFS_SITE = $(call github,libhugetlbfs,libhugetlbfs,$(LIBHUGETLBFS_VERSION))

LIBHUGETLBFS_MAKE_ENV = CFLAGS="$(TARGET_CFLAGS)" LDFLAGS="$(TARGET_LDFLAGS)" \
				  CC="$(TARGET_CC)" LD="$(TARGET_LD)" ARCH=mips PREFIX=/usr

define LIBHUGETLBFS_BUILD_CMDS
	$(LIBHUGETLBFS_MAKE_ENV) $(MAKE) -C $(@D) V=1 libs tools
endef

define HOST_LIBHUGETLBFS_BUILD_CMDS
	$(LIBHUGETLBFS_MAKE_ENV) $(MAKE) -C $(@D) V=1 libs
endef

define LIBHUGETLBFS_INSTALL_TARGET_CMDS
	$(LIBHUGETLBFS_MAKE_ENV) DESTDIR="$(TARGET_DIR)" $(MAKE) -C $(@D) install-bin install-libs
endef

define HOST_LIBHUGETLBFS_INSTALL_CMDS
	$(LIBHUGETLBFS_MAKE_ENV) DESTDIR="$(HOST_DIR)" $(MAKE) -C $(@D) install-libs
endef

$(eval $(generic-package))
$(eval $(host-generic-package))
