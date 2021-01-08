# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="2FA software"
HOMEPAGE="https://authy.com/"
SRC_URI="https://api.snapcraft.io/api/v1/snaps/download/H8ZpNgIoPyvmkgxOWw5MSzsXK1wRZiHn_5.snap"

LICENSE=""
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="
	dev-libs/libdbusmenu
	dev-libs/libappindicator
	dev-libs/nss
	x11-libs/gtk+
"
RDEPEND="${DEPEND}"
BDEPEND="
	sys-fs/squashfs-tools-ng[xz]
"
S="${WORKDIR}"
SNAP_NAME="H8ZpNgIoPyvmkgxOWw5MSzsXK1wRZiHn_5"
src_prepare() {
	default
	rdsquashfs -u / -p "${S}/authy" "${DISTDIR}/H8ZpNgIoPyvmkgxOWw5MSzsXK1wRZiHn_5.snap"
	rm -rf ${S}/authy/{data-dir,gnome-platform,meta,scripts,usr,*.sh}
}
src_compile() {
	return
}
src_install() {
	dodir /opt/authy
	exeinto /opt/authy
	doexe ${S}/authy/*
	dosym /opt/authy/authy /usr/bin/authy
	insinto /opt/authy
	dodir "/opt/authy/lib/x86_64-linux-gnu"
	insinto "/opt/authy/lib/x86_64-linux-gnu/"
	doins ${S}/authy/lib/x86_64-linux-gnu/*
	dodir "/opt/authy/locales"
	insinto "/opt/authy/locales"
	doins ${S}/authy/locales/*

	dodir "/opt/authy/resources"
	insinto "/opt/authy/resources"
	doins ${S}/authy/resources/*

	dodir "/opt/authy/swiftshader"
	insinto "/opt/authy/swiftshader"
	doins ${S}/authy/swiftshader/*

	insinto /usr/share/applications
	doins "${FILESDIR}/authy.desktop"
}
