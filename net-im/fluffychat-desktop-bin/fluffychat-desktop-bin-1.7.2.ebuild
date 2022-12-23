# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop

DESCRIPTION="Cute matrix client"
HOMEPAGE="https://fluffychat.im/"
SRC_URI="https://gitlab.com/api/v4/projects/16112282/packages/generic/fluffychat/${PV}/fluffychat-linux-x86.tar.gz -> ${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}"

src_install() {
	exeinto "/opt/${PN}"
	doexe "fluffychat"

	insinto "/opt/${PN}"
	doins -r "lib"
	doins -r "data"

	dosym "../../opt/${PN}/fluffychat" "/usr/bin/fluffychat"

	domenu "${FILESDIR}/${PN}.desktop"
}
