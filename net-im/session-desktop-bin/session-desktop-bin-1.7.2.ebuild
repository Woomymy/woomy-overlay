# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit unpacker desktop

DESCRIPTION="Session encrypted messenger desktop client"
HOMEPAGE="https://getsession.org"
SRC_URI="https://github.com/oxen-io/session-desktop/releases/download/v${PV}/session-desktop-linux-amd64-${PV}.deb"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"

DEPEND="
	media-video/ffmpeg
	media-libs/libglvnd
"
RDEPEND="${DEPEND}"
BDEPEND="
	app-arch/dpkg
"
S="${WORKDIR}"
src_unpack() {
	unpack_deb ${A}
}

src_install() {
	rm -rf "${S}"/opt/Session/{swiftshader,*GL*}
	insinto /opt/Session
	doins -r opt/Session/*
	for file in session-desktop
	do
		fperms +x "/opt/Session/${file}"
	done
	domenu usr/share/applications/*.desktop
	gunzip -c usr/share/doc/session-desktop/changelog.gz > changelog || die
	dodoc changelog
	insinto /usr/share/icons/hicolor/
	doins -r usr/share/icons/hicolor/*
}
