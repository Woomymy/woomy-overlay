# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop appimage-extract

DESCRIPTION="The future of osu! and the beginning of an open era!"
HOMEPAGE="https://osu.ppy.sh"
SRC_URI="https://github.com/ppy/osu/releases/download/${PV}/osu.AppImage -> ${P}.AppImage"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	sys-fs/fuse
	virtual/opengl
	sys-libs/zlib
"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/${PN}"

src_unpack() {
	unpack_appimage "${DISTDIR}/${A}" "${S}"
}

src_install() {
	insinto "/opt/${PN}"
	exeinto "/opt/${PN}"
	for d in $(find "${S}/usr/bin" -type d)
	do
		doins -r "${d}"
	done
	doexe ${S}/usr/bin/*.dll
	doins ${S}/usr/bin/*.json
	doins ${S}/usr/bin/*.xml
	doins ${S}/usr/bin/*.so
	doexe ${S}/usr/bin/osu!
	dosym "../../opt/${PN}/osu!" /usr/bin/osu
	domenu "${FILESDIR}/osu-lazer.desktop"
}

