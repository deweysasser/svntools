DESTDIR=/usr
INSTALL=/usr/bin/install

build:
	-echo > /dev/null

install:
	mkdir -p ${DESTDIR}/bin
	${INSTALL} -m 755 -o root src/svn-* ${DESTDIR}/bin

deb:
	dpkg-buildpackage -rfakeroot
	lintian ../svntools_*.deb

clean:
	-echo > /dev/null

