# Copyright (C) 2022 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/linux-stm32mp-5.10:"

# Increase PR if something changes
PR="0"

SRC_URI:class-devupstream += " \
	file://0001-drm-add-youritech-panel-with-ili9806e-mipi-controlle.patch \
	file://0002-video-logo-add-bytes-at-work-logo.patch \
	file://0003-ARM-configs-Add-bytedevkit-fragment.patch \
	file://0004-ARM-dts-stm32mp175c-byteengine-bytedevkit-Verbatim-i.patch \
	file://0005-ARM-dts-stm32mp175c-byteengine-bytedevkit-Adapt-to-5.patch \
	file://0006-ARM-dts-stm32mp175c-byteengine-Adapt-to-5.4-r2.patch \
	file://0007-ARM-dts-stm32mp175c-byteengine-bytedevkit-Set-ethern.patch \
	file://0008-drm-panel-youritec-ili9806e-Adapt-to-5.10.patch \
	file://0009-ARM-dts-stm32mp157c-byteengine-bytedevkit-Adapt-to-5.patch \
	file://0010-ARM-dts-stm32-Fix-issue-with-usart1-when-using-no-sc.patch \
	file://0011-ARM-configs-bytedevkit-Fix-boot-logo.patch \
	file://0012-lib-iov_iter-initialize-flags-in-new-pipe_buffer.patch \
	file://0013-Create-checkpatch.yml.patch \
	file://0014-dt-bindings-vendor-prefixes-Add-bytes-at-work-AG.patch \
	file://0015-dt-bindings-arm-bytesatwork-Add-module-and-board.patch \
	file://0016-ARM-dts-stm32mp175c-bytedevkit-Add-support-for-byteD.patch \
	file://0017-ARM-configs-bytedevkit-Fix-boot-logo-again.patch \
	file://0018-Update-github-action-configuration-for-the-tool-that.patch \
	file://0019-ARM-dts-stm32mp157c-byteengine-bytedevkit-fix-qspi_m.patch \
	file://0020-github-workflows-update-version.patch \
	file://0021-ARM-dts-stm32mp1-pharmasense-test.patch \
"

KERNEL_CONFIG_FRAGMENTS += "${S}/arch/arm/configs/fragment-901-bytedevkit.config"

STM32MP_SOURCE_SELECTION = "github"

do_deploy[sstate-outputdirs] = "${DEPLOY_DIR_IMAGE}"
