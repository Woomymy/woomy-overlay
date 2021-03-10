# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Official Minecraft Launcher"
HOMEPAGE="https://minecraft.net"
SRC_URI="https://launcher.mojang.com/download/linux/x86_64/minecraft-launcher_${PV}.tar.gz"
# Big thanks to AUR package for Checksums issues resolving
LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="amd64"

DEPEND="
	virtual/jre:1.8
"
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/minecraft-launcher"
src_install() {
	dodir "/opt/${PN}"
	insinto "/opt/${PN}"
	doins cef*
	dodir "/opt/${PN}/locales"
	insinto "/opt/${PN}/locales"
	doins locales/*
	insinto "/opt/${PN}"
	exeinto "/opt/${PN}"
	doexe minecraft-launcher
	doexe chrome-*
	doexe *.bin
	doexe *.dat
	doexe lib*
	insinto /usr/share/applications
	doins "${FILESDIR}/minecraft-launcher.desktop"
	dosym "../../opt/${PN}/minecraft-launcher" "/usr/bin/${PN}"
}
