# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A C package and projects manager written in Rust."
HOMEPAGE="https://github.com/Wafelack/wng"
SRC_URI="https://github.com/Wafelack/wng/releases/download/4.0.1/wng-gnu-linux-x86_64"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="amd64"
S="${WORKDIR}"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install(){
	dobin "${S}/wng-gnu-linux-x86_64"
	dosym "/usr/bin/wng-gnu-linux-x86_64" "/usr/bin/wng"
}
