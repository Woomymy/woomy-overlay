# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit unpacker desktop electron-base

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
	insinto /opt/${PN}
	doins -r opt/Session/*
	electron_libs_link "/opt/${PN}" "../../usr/lib64"
	for file in session-desktop
	do
		fperms +x "/opt/${PN}/${file}"
	done
	sed -i "s/\/opt\/Session/\/opt\/${PN}/gim" usr/share/applications/session-desktop.desktop
	domenu usr/share/applications/session-desktop.desktop
	gunzip -c usr/share/doc/session-desktop/changelog.gz > changelog || die
	dodoc changelog
	insinto /usr/share/icons/hicolor/
	doins -r usr/share/icons/hicolor/*
}
