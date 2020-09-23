do_install_append_stm32mpcommon() {
	rm -f ${D}/${bindir}/gdbinit
	cp -a --no-preserve=ownership ${WORKDIR}/gdbinit ${D}/${bindir}/
}
