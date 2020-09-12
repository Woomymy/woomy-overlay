# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Official Minecraft launcher"
HOMEPAGE="https://minecraft.net"
SRC_URI="https://launcher.mojang.com/download/Minecraft.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="
	virtual/jre
"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/${PN}"

src_install() {
	dodir /opt/minecraft
	exeinto /opt/minecraft
	doexe ${S}/*
	dodir /opt/minecraft/locales
	insinto /opt/minecraft/locales
	doins ${S}/locales/*
	dosym /opt/minecraft/minecraft-launcher /usr/bin/minecraft-launcher

	insinto /usr/share/applications
	doins "${FILESDIR}/minecraft-launcher.desktop"

}
