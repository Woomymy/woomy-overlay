# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

SRC_URI="
	https://github.com/muesli/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	https://files.woomy.ovh/distfiles/${CATEGORY}/${PN}/${P}-deps.tar.xz
"
HOMEPAGE="https://github.com/muesli/duf"
DESCRIPTION="Disk Usage/Free Utility"

LICENSE="MIT Apache-2.0 BSD-3-CLAUSE"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="
	dev-lang/go
"

src_compile() {
	ego build
}

src_install() {
	DOCS=( *.md )
	einstalldocs
	dobin "${PN}"
}
