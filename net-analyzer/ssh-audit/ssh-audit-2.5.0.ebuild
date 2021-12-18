# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=(python3_{8,9,10})
inherit distutils-r1

DESCRIPTION="SSH client/server auditing tool"
HOMEPAGE="https://github.com/jtesta/ssh-audit"
SRC_URI="https://github.com/jtesta/ssh-audit/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

src_install() {
	distutils-r1_src_install
	doman ssh-audit.1
}
