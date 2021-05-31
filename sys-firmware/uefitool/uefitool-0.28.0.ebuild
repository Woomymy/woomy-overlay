# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
TRUE_PN="UEFITool"
DESCRIPTION="C++/Qt program for parsing, extracting and modifying UEFI firmware images"
HOMEPAGE="https://github.com/LongSoft/UEFITool/"
SRC_URI="https://github.com/LongSoft/UEFITool/archive/${PV}.tar.gz -> ${P}.tar.gz"

inherit qmake-utils

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="amd64"

RDEPEND="
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}"

S=${WORKDIR}/${TRUE_PN}-${PV}

src_configure() {
	eqmake5 "${PN}.pro"
}

src_install() {
	dobin "${TRUE_PN}"
	insinto /usr/share/applications
	doins "${FILESDIR}/UefiTool.desktop"
	einstalldocs
}
