# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit golang-base toolchain-funcs

DESCRIPTION="Android OTA payload dumper"
HOMEPAGE="https://github.com/ssut/payload-dumper-go"
SRC_URI="https://github.com/ssut/payload-dumper-go/archive/refs/tags/${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"

src_compile() {
	go build -x -o $PN
}

src_install() {
	dobin "${PN}"
}
