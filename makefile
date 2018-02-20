main: update repackage

update:
	@echo "@Updating files...@"
	@cp mkmake-bash/mkmake mkmake-deb/usr/local/bin/mkmake
	@echo "@Files updated!@"

repackage:
	@echo "@Repackaging...@"
	@dpkg-deb --build mkmake-deb mkmake-install.deb > /dev/null
	@echo "@Repackaged!@"
