# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Web launchers for Microsoft Office"
HOMEPAGE="https://office.com"
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="+word +excel +powerpoint"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_install() {
insinto /usr/share/applications
if use word; then
	doins ${FILESDIR}/word.desktop
fi
if use excel; then
	doins ${FILESDIR}/excel.desktop
fi
if use powerpoint; then
	doins ${FILESDIR}/powerpoint.desktop
fi

}
