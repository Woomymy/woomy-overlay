# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
V="24"
DESCRIPTION="A new type of Shell"
HOMEPAGE="https://nushell.sh"
SRC_URI="https://github.com/nushell/nushell/releases/download/${PV}/nu_0_${V}_1_linux.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="
	x11-libs/libxcb
	x11-libs/libX11
"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/nu_0_${V}_1_linux/nushell-${PV}"

src_install() {
	dodir /opt/nushell
	insinto /opt/nushell
	#doins ${S}/*
	exeinto /opt/nushell
	doexe ${S}/*
	dosym /opt/nushell/nu /usr/bin/nu
}
