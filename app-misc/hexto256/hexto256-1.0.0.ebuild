# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="

"

inherit cargo

DESCRIPTION="Convert HEX Colors to Xterm256 colors"
HOMEPAGE="https://github.com/Woomymy/hexto256"
SRC_URI="https://github.com/Woomymy/hexto256/archive/${PV}.tar.gz -> ${P}.tar.gz"

RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
DEPEND=""
RDEPEND=""
