# Copyright (C) 2022 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/${BP}:"

# Increase PR if something changes
PR="0"

SRC_URI:class-devupstream += " \
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
	file://0019-Remove-redundant-YYLOC-global-declaration.patch \
	file://0020-bytedevkit-setup-single-rootfs-partition.patch \
	file://0021-Create-checkpatch.yml.patch \
	file://0022-arm-dts-stm32mp157c-bytedevkit-Add-support-for-byteD.patch \
	file://0023-board-bytedevkit-Add-hwid-command.patch \
	file://0024-bytedevkit-Use-hwid-check-to-select-dtb.patch \
	file://0025-github-workflows-update-version.patch \
	file://0026-cmd-add-cpuinfo.patch \
	file://0027-configs-bytedevkit-enable-cpuinfo.patch \
	file://0028-configs-bytedevkit-add-SPI-drivers-use-default-promp.patch \
	file://0029-arm-dts-bytedevkit-remove-QSPI-2nd-bank-pinmux.patch \
	file://0030-bytesatwork-m2config-verbatim-import.patch \
	file://0031-bytesatwork-m2config-rename-to-baw-config.patch \
	file://0032-bytesatwork-bawconfig-init-config-to-zero.patch \
	file://0033-bytesatwork-bawconfig-adapt-PCB-RAM-and-flash-enums.patch \
	file://0034-bytesatwork-bawconfig-stm32mp1-ram-fallback.patch \
	file://0035-bytesatwork-bawconfig-support-imx8mm-bytedevkit.patch \
	file://0036-bytesatwork-bawconfig-fix-build-without-EEPROM-enabl.patch \
	file://0037-bytesatwork-bawconfig-add-4-GB-as-3-GB-RAM.patch \
	file://0038-bytesatwork-bawconfig-introduce-ti-am62x-enums.patch \
	file://0039-bytesatwork-bawconfig-introduce-Makefile.patch \
	file://0040-bytesatwork-bawconfig-add-stm32mp1-ram-types.patch \
	file://0041-board-bytedevkit-introduce-baw_config.patch \
"

STM32MP_SOURCE_SELECTION = "github"
