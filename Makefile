DESTDIR=/
PREFIX=${DESTDIR}/usr
INSTALL=/usr/bin/install

build:
	-echo > /dev/null

install:
	mkdir -p ${PREFIX}/bin
	${INSTALL} -m 755 -o root src/svn-* ${PREFIX}/bin

deb:
	dpkg-buildpackage -rfakeroot -us -b -uc
	lintian ../svntools_*.deb

clean:
	-echo > /dev/null

