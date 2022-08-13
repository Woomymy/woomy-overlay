# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop

DESCRIPTION="Chat for distributed teams"
HOMEPAGE="https://zulip.com"
SRC_URI="https://github.com/zulip/zulip-desktop/releases/download/v${PV}/Zulip-${PV}-x64.tar.xz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"

DEPEND="
	dev-libs/libappindicator
	media-video/ffmpeg
	media-libs/libglvnd
	dev-libs/libdbusmenu
"
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/Zulip-${PV}-x64"

src_install() {
	rm -rf "${S}"/{libvulkan*,swiftshader,*GL*}
	exeinto "/opt/${PN}"
	doexe "${S}"/{zulip,*.so,chrome-sandbox}
	dosym "../../opt/${PN}/zulip" "/usr/bin/zulip"
	insinto "/opt/${PN}"
	doins "${S}"/{*.pak,*.dat,LICEN*,*.json,*.bin}
	insinto "/opt/${PN}/locales"
	doins "${S}"/locales/*

	insinto "/opt/${PN}/resources"
	doins "${S}"/resources/*

	domenu "${FILESDIR}/${PN}.desktop"
}
