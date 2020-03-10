# Copyright (C) 2020 Markus Kappeler <markus.kappeler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
# Increase PR if something changes
PR="0"

OPTEEMACHINE = "stm32mp1"
OPTEEOUTPUTMACHINE = "${OPTEEMACHINE}"
CFG_EMBED_DTB_SOURCE_FILE = "stm32mp157c-bytedevkit.dts"

EXTRA_OEMAKE += "CFG_EMBED_DTB_SOURCE_FILE=${CFG_EMBED_DTB_SOURCE_FILE}"

OPTEE_CONF = ""

SRC_URI += " \
	file://0001-stm32mp1-bytedevkit-Introduce-bytedevkit-board.patch \
"
