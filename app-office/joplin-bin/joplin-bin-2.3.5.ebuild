# Copyright 2021-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit desktop

DESCRIPTION="Note taking and to-do application."
HOMEPAGE="https://joplinapp.org/"

KEYWORDS="amd64"

SRC_URI="https://files.woomy.ovh/joplin_bin/${PN}-${PV}.tar.xz" # Repacked AppImage

SLOT="0"
RESTRICT="strip"
LICENSE="MIT"
IUSE=""

RDEPEND="
	gnome-base/gconf
	x11-libs/libXtst
	x11-libs/libXScrnSaver
	x11-libs/libnotify
	dev-libs/libappindicator
	media-libs/libglvnd
	media-video/ffmpeg
	media-libs/vulkan-loader
"
DEPEND="${RDEPEND}"
BDEPEND=""

S="${WORKDIR}/${PN}"

src_install() {
	exeinto "/opt/${PN}"
	doexe "${S}"/{@joplinapp-desktop,*.so,chrome-sandbox}
	dosym "../../opt/${PN}/@joplinapp-desktop" /usr/bin/joplin-desktop
	insinto "/opt/${PN}"
	doins "${S}"/{*.pak,*.dat,LICEN*,*.json,*.bin}
	insinto "/opt/${PN}/locales"
	doins "${S}"/locales/*

	insinto "/opt/${PN}/resources"
	doins "${S}"/resources/*

	insinto "/usr/share/icons/hicolor"
	doins -r "${S}/usr/share/icons/hicolor"/*

	domenu "${FILESDIR}/${PN}.desktop"
}
