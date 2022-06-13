# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop

DESCRIPTION="Chat with your friends"
HOMEPAGE="https://fluffychat.im"
SRC_URI="https://gitlab.com/api/v4/projects/16112282/packages/generic/fluffychat/${PV}/fluffychat-linux-arm64.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="amd64"

DEPEND="
	x11-libs/gtk+
	dev-libs/jsoncpp
	app-crypt/libsecret
"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_install() {
	insinto "/opt/${PN}"
	exeinto "/opt/${PN}"
	doexe "${S}/fluffychat"
	doins -r "${S}/lib"
	doins -r "${S}/data"

	dosym "../../opt/${PN}/fluffychat" "/usr/bin/fluffychat"
	domenu "${FILESDIR}/${PN}.desktop"
}
