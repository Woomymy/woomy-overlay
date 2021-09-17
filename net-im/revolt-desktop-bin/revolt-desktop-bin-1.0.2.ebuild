# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit desktop unpacker

DESCRIPTION="Desktop client for revolt.chat"
HOMEPAGE="https://revolt.chat"
SRC_URI="
	https://github.com/revoltchat/desktop/releases/download/v${PV}/revolt-desktop_${PV}_amd64.deb
"
LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="amd64"
CPN="revolt-desktop-${PV}"
DEPEND="
	media-video/ffmpeg
	media-libs/libglvnd
"
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}"

src_unpack() {
	unpack_deb "${A}"
}

src_prepare() {
	default
	rm -rf "${S}"/opt/Revolt/{swiftshader,*GL*,data-dir,gnome-platform,meta,scripts,usr,*.sh}
}

src_install() {
	exeinto /opt/${PN}
	doexe "${S}"/opt/Revolt/*
	dosym ../../opt/${PN}/revolt-desktop "/usr/bin/${PN}"
	insinto "/opt/${PN}/locales"
	doins "${S}"/opt/Revolt/locales/*

	insinto "/opt/${PN}/resources"
	doins "${S}"/opt/Revolt/resources/*

	domenu "${FILESDIR}/${PN}.desktop"

	insinto /usr/share/icons/hicolor/
	doins -r "${S}/usr/share/icons/hicolor/"*
}
