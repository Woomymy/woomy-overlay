# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop

DESCRIPTION="Desktop client for revolt.chat"
HOMEPAGE="https://revolt.chat"
SRC_URI="
	https://github.com/revoltchat/desktop/releases/download/v${PV}/revolt-desktop-${PV}.tar.gz
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
S="${WORKDIR}/${CPN}"

src_prepare() {
	default
	rm -rf "${S}"/{swiftshader,*GL*,data-dir,gnome-platform,meta,scripts,usr,*.sh}
}

src_install() {
	exeinto /opt/${PN}
	doexe "${S}"/*
	dosym ../../opt/${PN}/revolt-desktop "/usr/bin/${PN}"
	insinto "/opt/${PN}/locales"
	doins "${S}"/locales/*

	insinto "/opt/${PN}/resources"
	doins "${S}"/resources/*

	domenu "${FILESDIR}/${PN}.desktop"
	doicon "${FILESDIR}/${PN}.png"
}
