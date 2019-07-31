# Copyright (C) 2019 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:"

SRC_URI += " \
	file://0001-ARM-dts-Add-support-for-byteENGINE-STM32MP1x.patch \
	file://0002-arm-dts-stm32mp157c-bytedevkit-Initital-version.patch \
"
