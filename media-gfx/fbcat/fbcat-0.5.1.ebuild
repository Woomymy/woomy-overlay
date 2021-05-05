# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Framebuffer grabber"
HOMEPAGE="https://github.com/jwilk/fbcat/"
SRC_URI="https://github.com/jwilk/fbcat/releases/download/${PV}/fbcat-${PV}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="
	media-libs/netpbm
	sys-apps/kbd
	!media-gfx/fbgrad
"
RDEPEND="${DEPEND}"
BDEPEND=""
