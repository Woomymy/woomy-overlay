# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit desktop appimage-extract electron-base

DESCRIPTION="Note taking and to-do application."
HOMEPAGE="https://joplinapp.org/"

KEYWORDS="amd64"

SRC_URI="https://github.com/laurent22/joplin/releases/download/v${PV}/Joplin-${PV}.AppImage" # Repacked AppImage

SLOT="0"
RESTRICT="strip"
LICENSE="MIT"
IUSE=""

RDEPEND="
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

src_unpack() {
	unpack_appimage "${DISTDIR}/${A}" "${S}"
	rm -rf "${S}"/{@joplinapp-desktop.*,lib{EGL*,vul*},swiftshader}
}

src_install() {
	exeinto "/opt/${PN}"
	doexe "${S}"/{@joplinapp-desktop,*.so,chrome-sandbox}
	electron_libs_link "/opt/${PN}" "../../usr/lib64"
	dosym "../../opt/${PN}/@joplinapp-desktop" /usr/bin/joplin-desktop
	insinto "/opt/${PN}"
	doins "${S}"/{*.pak,*.dat,LICEN*,*.json,*.bin}
	insinto "/opt/${PN}/locales"
	doins "${S}"/locales/*

	insinto "/opt/${PN}/resources"
	doins -r "${S}"/resources/*

	insinto "/usr/share/icons/hicolor"
	doins -r "${S}/usr/share/icons/hicolor"/*

	domenu "${FILESDIR}/${PN}.desktop"
}