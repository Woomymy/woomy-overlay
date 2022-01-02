# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop

DESCRIPTION="Real-time microphone noise suppresion on linux"
HOMEPAGE="https://github.com/lawl/NoiseTorch"
SRC_URI="https://github.com/lawl/NoiseTorch/releases/download/${PV}/NoiseTorch_x64.tgz -> ${P}.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_install() {
	exeinto /usr/bin
	doexe "${S}/.local/bin/"*

	insinto /usr/share/icons/hicolor
	doins -r "${S}/.local/share/icons/hicolor/"*

	domenu "${S}/.local/share/applications/${PN/-bin/}.desktop"
}
