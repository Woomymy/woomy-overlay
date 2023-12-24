# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="A command line tool to interact with Gitea servers"
HOMEPAGE="https://gitea.com/gitea/tea"
SRC_URI="
	https://gitea.com/gitea/tea/archive/v${PV}.tar.gz -> ${P}.tar.gz
	https://files.woomy.be/distfiles/${CATEGORY}/${PN}/${P}-vendor.tar.xz
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

S="${WORKDIR}/${PN}"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="
	dev-lang/go
"

src_compile() {
	export TEA_VERSION="${PV}"
	ego build
}

src_install() {
	dobin "tea"
}
