# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop electron-base

DESCRIPTION="Desktop client for revolt.chat"
HOMEPAGE="https://revolt.chat"
SRC_URI="
	https://github.com/revoltchat/desktop/releases/download/v${PV}/revolt-desktop-${PV}.tar.gz
	https://github.com/revoltchat/desktop/raw/7a3e770c3786abb7e4c5192b08364133cc4e9579/assets/icon.png -> ${PN}.png
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
	electron_libs_link "/opt/${PN}" "../../usr/lib64"
	dosym ../../opt/${PN}/revolt-desktop "/usr/bin/${PN}"
	insinto "/opt/${PN}/locales"
	doins "${S}"/locales/*

	insinto "/opt/${PN}/resources"
	doins "${S}"/resources/*

	domenu "${FILESDIR}/${PN}.desktop"
	doicon "${DISTDIR}/${PN}.png"
}
