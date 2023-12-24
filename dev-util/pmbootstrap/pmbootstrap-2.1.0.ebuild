# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10,11,12} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="Sophisticated chroot/build/flash tool to develop and install postmarketOS"
HOMEPAGE="https://wiki.postmarketos.org/wiki/Pmbootstrap"
SRC_URI="https://git.sr.ht/~postmarketos/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="
	dev-libs/openssl
	dev-vcs/git
	${DEPEND}
"
BDEPEND=""
