PREFIX = /usr/local

all: install

install:
	mkdir -p ${PREFIX}/bin
	cp -f cheat ${PREFIX}/bin
	chmod 755 ${PREFIX}/bin/cheat

uninstall:
	rm -f ${PREFIX}/bin/cheat
