# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Control networkmanager using DMENU"
HOMEPAGE="https://github.com/firecat53/networkmanager-dmenu"
SRC_URI="https://github.com/firecat53/networkmanager-dmenu/archive/v${PV}.tar.gz -> networkmanager-dmenu-${PV}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="+dmenu rofi"
REQUIRED_USE="^^ ( dmenu rofi )"
DEPEND="
	net-misc/networkmanager
	dmenu? ( x11-misc/dmenu )
	rofi? ( x11-misc/rofi )
	dev-python/pygobject
	dev-lang/python:3.8
"
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/${PN}-${PV}"

src_install() {
	exeinto /usr/bin/
	doexe networkmanager_dmenu
	insinto /usr/share/applications/
	doins networkmanager_dmenu.desktop
	dodoc LICENSE.txt
	dodoc README.rst
	dodoc config.ini.example
	elog "Now you need to configure the package."
	elog "Configuration guide: https://github.com/firecat53/networkmanager-dmenu#installation"
}
