# Copyright 2022-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Control the brightness of backlight and keyboard LED devices on Linux"
HOMEPAGE="https://gitlab.com/cameronnemo/brillo"
SRC_URI="https://gitlab.com/cameronnemo/brillo/-/archive/v${PV}/brillo-v${PV}.tar.bz2"

S="${WORKDIR}/brillo-v${PV}"

LICENSE="GPL-3 BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="${DEPEND}"
BDEPEND="
	dev-go/go-md2man
"

src_install() {
	emake DESTDIR="${D}" install
	emake DESTDIR="${D}" install.udev
	ewarn "You may need to reboot to load new udev rule and use brillo"
}
