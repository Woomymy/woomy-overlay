# Copyright 2022-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop udev

DESCRIPTION="A native Linux RGB control application for the AMD Wraith Prism"
HOMEPAGE="https://gitlab.com/screwbit/wraith-master"
SRC_URI="https://github.com/serebit/wraith-master/releases/download/v${PV}/wraith-master-v${PV}.tar.xz"

S="${WORKDIR}/${PN}-v${PV}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="gtk"

DEPEND="
	dev-libs/libusb
	gtk? ( x11-libs/gtk+ )
"
RDEPEND="${DEPEND}"

src_compile() {
	true
}

src_install() {
	udev_dorules "${S}/udev/99-wraith-master.rules"

	dobin "${S}/wraith-master"
	use gtk && dobin "${S}/wraith-master-gtk"

	doman "${S}/man/wraith-master.1"
	use gtk && doman "${S}/man/wraith-master-gtk.1"

	use gtk && domenu "${S}/desktop/com.serebit.WraithMaster.desktop"
}

pkg_postinst() {
	udev_reload
}

pkg_postrm() {
	udev_reload
}
