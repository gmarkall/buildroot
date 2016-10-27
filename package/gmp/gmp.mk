################################################################################
#
# gmp
#
################################################################################

GMP_VERSION = 6.0.0a
GMP_SITE = $(BR2_GNU_MIRROR)/gmp
GMP_SOURCE = gmp-$(GMP_VERSION).tar.xz
GMP_INSTALL_STAGING = YES
GMP_LICENSE = LGPLv3+
GMP_LICENSE_FILES = COPYING.LESSERv3
GMP_DEPENDENCIES = host-m4

HOST_GMP_CONF_OPTS = \
	ABI=32

ifeq ($(BR2_TOOLCHAIN_BUILDROOT_STATIC),y)
HOST_GMP_CONF_OPTS += --disable-shared
endif

$(eval $(autotools-package))
$(eval $(host-autotools-package))
