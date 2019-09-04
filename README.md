meta-bytesatwork-st
================================


Introduction
-------------------------
This is the official OpenEmbedded/Yocto BSP layer for byteDEVKIT by [bytes at
work AG](https://www.bytesatwork.io/).

It is hosted on [github](https://github.com/bytesatwork/meta-bytesatwork-st.git)

This layer depends on:

	URI: https://github.com/bytesatwork/meta-st-stm32mp.git (due to pending PR)
	layer: meta-st-stm32mp
	branch: warrior

BSP
-------------------------
This meta layer provides the Board Support Package (U-Boot and Linux kernel)
for "byteDEVKIT" by bytes at work AG. Simply set the variable MACHINE to
"bytedevkit" to use this BSP.

SD Card
-------------------------
SD card images are created using *flashlayout* from [meta-st-stm32mp](https://github.com/STMicroelectronics/meta-st-stm32mp). Please make sure `gdisk` is installed on your system.

The following example shows how to create a bootable SD card with the image
`devbase-image-bytesatwork` from
[meta-bytesatwork](https://github.com/bytesatwork/meta-bytesatwork.git) from a
sourced Yocto environment:

	cd $BUILDDIR/tmp/deploy/images/bytedevkit
	./scripts/create_sdcard_from_flashlayout.sh flashlayout_devbase-image-bytesatwork/FlashLayout_sdcard_stm32mp157c-bytedevkit.tsv
	dd if=flashlayout_devbase-image-bytesatwork_FlashLayout_sdcard_stm32mp157c-bytedevkit.raw of=/dev/sdX bs=1M && sync

Reporting bugs
-------------------------
Send pull requests, patches, comments or questions to yocto@bytesatwork.ch
