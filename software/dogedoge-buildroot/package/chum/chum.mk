################################################################################
#
# chum
#
################################################################################

CHUM_VERSION = 1.0
CHUM_SITE = $(BR2_EXTERNAL_DOGEDOGE_PATH)/package/chum
CHUM_SITE_METHOD = local
CHUM_LICENSE = BSD-3-Clause
CHUM_LICENSE_FILES = LICENSE
CHUM_DEPENDENCIES = python-dialog3
CHUM_SETUP_TYPE = setuptools

$(eval $(python-package))
