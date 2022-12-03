# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="LSP for LaTex"
HOMEPAGE="https://texlab.netlify.app"
SRC_URI="https://github.com/latex-lsp/texlab/releases/download/v${PV}/texlab-x86_64-linux.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
S="${WORKDIR}"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin "${WORKDIR}/texlab"
}
