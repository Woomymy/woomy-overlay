# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop

DESCRIPTION="2FA software"
HOMEPAGE="https://authy.com/"
SRC_URI="https://api.snapcraft.io/api/v1/snaps/download/H8ZpNgIoPyvmkgxOWw5MSzsXK1wRZiHn_6.snap"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	media-video/ffmpeg
	dev-libs/libdbusmenu
	dev-libs/libappindicator
	dev-libs/nss
	x11-libs/gtk+:3
	sys-apps/dbus
	dev-libs/libbsd
	dev-libs/expat
	sys-apps/keyutils
	sys-libs/e2fsprogs-libs
	media-libs/libglvnd
"
RDEPEND="${DEPEND}"
BDEPEND="
	sys-fs/squashfs-tools
"
S="${WORKDIR}"
SNAP_NAME="H8ZpNgIoPyvmkgxOWw5MSzsXK1wRZiHn_6"
src_prepare() {
	default
	unsquashfs "${DISTDIR}/H8ZpNgIoPyvmkgxOWw5MSzsXK1wRZiHn_6.snap"
	rm -rf "${S}"/squashfs-root/{swiftshader,*GL*,data-dir,gnome-platform,meta,scripts,usr,*.sh}
	mv squashfs-root authy
}
src_compile() {
	return
}
src_install() {
	exeinto /opt/authy
	doexe "${S}"/authy/*
	dosym ../../opt/authy/authy /usr/bin/authy
	insinto /opt/authy
	insinto "/opt/authy/locales"
	doins "${S}"/authy/locales/*

	insinto "/opt/authy/resources"
	doins "${S}"/authy/resources/*

	domenu "${FILESDIR}/authy.desktop"
}
