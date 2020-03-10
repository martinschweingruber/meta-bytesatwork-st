# Copyright (C) 2020 Markus Kappeler <markus.kappeler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
# Increase PR if something changes
PR="0"

SRC_URI += " \
	file://0001-fdts-stm32mp1-bytedevkit-Introduce-bytedevkit-board.patch \
"
