# Copyright (C) 2020 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://create_sdcard_from_flashlayout.sh \
"
