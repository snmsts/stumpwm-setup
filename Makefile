templates/stumpwm: templates/stumpwm.ros
	ros install ccl-bin
	ros build templates/stumpwm.ros

install: templates/stumpwm
	install -m 0755 templates/stumpwm /usr/local/bin
	install -m 0644 templates/stumpwm.desktop /usr/share/xsessions/

clean:
	rm -f templates/stumpwm

.PHONY: install clean
