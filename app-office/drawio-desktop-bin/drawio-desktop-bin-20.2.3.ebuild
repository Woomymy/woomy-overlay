# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit unpacker desktop

DESCRIPTION="Diagram drawing application built on web technology"
HOMEPAGE="https://app.diagrams.net"

KEYWORDS="amd64"

SRC_URI="https://github.com/jgraph/drawio-desktop/releases/download/v${PV}/drawio-amd64-${PV}.deb"

SLOT="0"
RESTRICT="strip"
LICENSE="MIT"
IUSE=""

RDEPEND="
	x11-libs/libnotify
	dev-libs/libappindicator
	media-libs/libglvnd
	media-video/ffmpeg
	dev-libs/nss
	media-libs/vulkan-loader
	x11-libs/gtk+:3
"
DEPEND="${RDEPEND}"
BDEPEND="
	app-arch/dpkg
"

S="${WORKDIR}"

src_unpack() {
	unpack_deb ${A}
}

src_prepare() {
	sed -i "s/\/opt\/drawio/\/opt\/drawio-desktop-bin/g" "${S}/usr/share/applications/drawio.desktop"
	default
}

src_install() {
	rm -rf "${S}"/opt/drawio/{libvulk*,swiftshader,*GL*}
	insinto "/opt/${PN}"
	doins -r "${S}/opt/drawio/"*
	fperms +x /opt/${PN}/drawio
	dosym "../../opt/${PN}/drawio" /usr/bin/drawio
	insinto "/usr/share/icons/hicolor"
	doins -r "${S}/usr/share/icons/hicolor"/*
	domenu usr/share/applications/*.desktop
	gunzip -c usr/share/doc/draw.io/changelog.gz > changelog || die
	dodoc changelog
}
