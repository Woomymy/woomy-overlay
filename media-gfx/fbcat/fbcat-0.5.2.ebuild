# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Framebuffer grabber"
HOMEPAGE="https://github.com/jwilk/fbcat/"
SRC_URI="https://github.com/jwilk/fbcat/releases/download/${PV}/fbcat-${PV}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="
	media-libs/netpbm
	sys-apps/kbd
	!media-gfx/fbgrab
"
RDEPEND="${DEPEND}"

src_install() {
	dobin fbcat
	dobin fbgrab
}
