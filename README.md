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

Reporting bugs
-------------------------
Send pull requests, patches, comments or questions to yocto@bytesatwork.ch
