# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools

DESCRIPTION="Console-based Audio visualizer for ALSA"
HOMEPAGE="https://github.com/karlstav/cava/"
SRC_URI="https://github.com/karlstav/cava/archive/refs/tags/${PV}.tar.gz -> cava-${PV}.tar.gz"
IUSE="portaudio +pulseaudio alsa"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="
	sci-libs/fftw:3.0
	dev-libs/iniparser:4
"
RDEPEND="
	${DEPEND}
	alsa? ( media-libs/alsa-lib )
	portaudio? ( media-libs/portaudio )
	pulseaudio? ( media-sound/pulseaudio )
"
BDEPEND=""

src_prepare() {
	eapply_user
	eautoreconf
}

src_configure() {
	econf "$(use_enable alsa input-alsa)" "$(use_enable pulseaudio input-pulse)" "$(use_enable portaudio input-portaudio)"
}

src_compile() {
	emake
}

src_install() {
	einstalldocs
	emake DESTDIR="${D}" PREFIX=/usr install
}
