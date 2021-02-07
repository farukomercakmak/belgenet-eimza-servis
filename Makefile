all: install

install:
	mkdir -p $(DESTDIR)/usr/share/signNativeOsService/bin/systemctl
	@cp signNativeOsService.jar $(DESTDIR)/usr/share/signNativeOsService/
	@cp turksat.crt $(DESTDIR)/usr/share/signNativeOsService/
	mkdir -p $(DESTDIR)/etc/systemd/system
	@cp turksat-imza.service $(DESTDIR)/etc/systemd/system/
	@cp start.sh $(DESTDIR)/usr/share/signNativeOsService/bin/systemctl/
uninstall:
	@rm /usr/local/share/ca-certificates/turksat.crt
	@rm /etc/systemd/system/turksat-imza.service
	@rm -rf /usr/local/signNativeOsService
.PHONY: install uninstall
