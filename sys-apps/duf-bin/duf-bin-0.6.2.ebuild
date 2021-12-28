# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Disk usage viewer"
HOMEPAGE="https://github.com/muesli/duf"
SRC_URI="https://github.com/muesli/duf/releases/download/v${PV}/duf_${PV}_linux_amd64.apk -> ${P}.tar.gz" # APK files are just .tar.gz files (with some extra header infos)

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}"

src_install() {
	exeinto /usr/bin
	doexe "${S}/usr/bin/${PN/-bin/}"
}
