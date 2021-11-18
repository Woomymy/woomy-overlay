# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Control the brightness of backlight and keyboard LED devices on Linux"
HOMEPAGE="https://gitlab.com/cameronnemo/brillo"
SRC_URI="https://gitlab.com/cameronnemo/brillo/-/archive/v${PV}/brillo-v${PV}.tar.gz"

LICENSE="GPL-3 BSD"
SLOT="0"
KEYWORDS="amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="
	dev-go/go-md2man
"

S="${WORKDIR}/brillo-v${PV}"

src_install() {
	emake DESTDIR="${D}" install
	emake DESTDIR="${D}" install.udev
	ewarn "You may need to reboot to load new udev rule and use brillo"
}
