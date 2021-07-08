# Copyright (C) 2019 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:"

# Increase PR if something changes
PR="1"

SRC_URI_class-devupstream += " \
	file://0001-board-bytedevkit-Add-initial-version-for-bytedevkit.patch \
	file://0002-configs-bytedevkit-Add-initial-version.patch \
	file://0003-bytedevkit-Add-initial-version.patch \
	file://0004-arm-dts-stm32mp157c-byteengine-m5-Add-dts-from-linux.patch \
	file://0005-arm-dts-stm32mp157c-bytedevkit-Add-dts-from-linux.patch \
	file://0006-arm-dts-bytedevkit-u-boot-Add-initial-version.patch \
	file://0007-arm-bytedevkit-Add-target-bytedevkit.patch \
	file://0008-stmp32mp1-Append-target-bytedevkit.patch \
	file://0009-pll-add-config-for-ethernet-without-clk-feedback-fro.patch \
	file://0010-board-bytedevkit-Update-board-files-with-changes-fro.patch \
	file://0011-bytedevkit-Disable-DISTRO_DEFAULTS.patch \
	file://0012-byteengine-Add-qSPI-interface-support-for-booting-fr.patch \
	file://0013-bytedevkit-upgrade-to-2020.01.patch \
	file://0014-arm-dts-stm32mp157c-bytedevkit-Move-memory-node-to-m.patch \
	file://0015-arm-dts-stm32mp1-Add-1x8Gb-RAM-config.patch \
	file://0016-board-bytedevkit-Introduce-choice-for-RAM-size.patch \
	file://0017-arm-dts-stm32mp157c-bytedevkit-Support-different-RAM.patch \
	file://0018-configs-bytedevkit_1g-Add-configuration-for-1GB.patch \
"

STM32MP_SOURCE_SELECTION = "github"
