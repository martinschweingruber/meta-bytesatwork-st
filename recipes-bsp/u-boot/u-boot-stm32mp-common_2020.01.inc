# Adaptation from u-boot-common_${PV}.inc

HOMEPAGE = "http://www.denx.de/wiki/U-Boot/WebHome"
SECTION = "bootloaders"

LICENSE = "GPL-2.0-or-later"
LIC_FILES_CHKSUM = "file://Licenses/README;md5=30503fd321432fc713238f582193b78e"

DEPENDS += "dtc-native bc-native"
DEPENDS += "flex-native bison-native"

COMPATIBLE_MACHINE = "(stm32mpcommon)"

SRC_URI = "git://github.com/u-boot/u-boot.git;protocol=https;branch=master"
SRCREV  = "0b0c6af38738f2c132cfd41a240889acaa031c8f"

U_BOOT_VERSION = "2020.01"
PV = "${U_BOOT_VERSION}"

S = "${WORKDIR}/git"

# ---------------------------------
# Configure devupstream class usage
# ---------------------------------
BBCLASSEXTEND = "devupstream:target"

SRC_URI:class-devupstream = "git://github.com/STMicroelectronics/u-boot.git;name=uboot;protocol=https;branch=v${U_BOOT_VERSION}-stm32mp"
SRCREV:class-devupstream = "764fc8b2591139fb6a729516ccb4f9836b310d63"
SRCREV_FORMAT:class-devupstream = "uboot"
PV:class-devupstream = "${U_BOOT_VERSION}+github+${SRCPV}"

# ---------------------------------
# Configure default preference to manage dynamic selection between tarball and github
# ---------------------------------
STM32MP_SOURCE_SELECTION ?= "tarball"

DEFAULT_PREFERENCE = "${@bb.utils.contains('STM32MP_SOURCE_SELECTION', 'github', '-1', '1', d)}"
