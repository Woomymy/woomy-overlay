# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop

SNAP_NAME="H8ZpNgIoPyvmkgxOWw5MSzsXK1wRZiHn_11"
DESCRIPTION="2FA software"
HOMEPAGE="https://authy.com/"
SRC_URI="https://api.snapcraft.io/api/v1/snaps/download/${SNAP_NAME}.snap"

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
	sys-fs/e2fsprogs
	media-libs/libglvnd
"
RDEPEND="${DEPEND}"
BDEPEND="
	sys-fs/squashfs-tools
"
S="${WORKDIR}"
src_prepare() {
	default
	unsquashfs "${DISTDIR}/${SNAP_NAME}.snap"
	rm -rf "${S}"/squashfs-root/{swiftshader,*GL*,data-dir,gnome-platform,meta,scripts,usr,*.sh}
	mv squashfs-root authy
}
src_compile() {
	return
}
src_install() {
	exeinto /opt/authy
	doexe "${S}"/authy/*
	dosym ../../usr/lib64/libGLESv2.so /opt/authy/libGLESv2.so
	dosym ../../usr/lib64/libEGL.so /opt/authy/libEGL.so
	dosym ../../opt/authy/authy /usr/bin/authy
	insinto /opt/authy
	insinto "/opt/authy/locales"
	doins "${S}"/authy/locales/*

	insinto "/opt/authy/resources"
	doins "${S}"/authy/resources/*

	domenu "${FILESDIR}/authy.desktop"
}
