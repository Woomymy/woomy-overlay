# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop go-module

RNNOISE_COMMIT="1cbdbcf1283499bbb2230a6b0f126eb9b236defd"
RINGBUF_COMMIT="2037560fb90dea5d2538611d983964d790bdbac2"

DESCRIPTION="Real-time microphone noise suppression on Linux"
HOMEPAGE="https://github.com/noisetorch/Noisetorch"
SRC_URI="
	https://github.com/noisetorch/NoiseTorch/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	https://github.com/noisetorch/c-ringbuf/archive/${RINGBUF_COMMIT}.tar.gz -> ${PN}-ringbuf-${RINGBUF_COMMIT}.tar.gz
	https://github.com/noisetorch/rnnoise/archive/${RNNOISE_COMMIT}.tar.gz -> ${PN}-rnnoise-${RNNOISE_COMMIT}.tar.gz
"

S="${WORKDIR}/NoiseTorch-${PV}"

LICENSE="GPL-3 BSD-3-CLAUSE BSD-2 WTFPL-2 MPL-2.0"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
	${DEPEND}
	sys-auth/polkit
	media-libs/libpulse
"
BDEPEND="
	dev-lang/go
"

src_prepare() {
	mv "${WORKDIR}/c-ringbuf-${RINGBUF_COMMIT}/"* "${S}/c/c-ringbuf"
	mv "${WORKDIR}/rnnoise-${RNNOISE_COMMIT}/"* "${S}/c/rnnoise"

	# Remove call to git submodule update done by the Makefile
	# Replace it by `true` to prevenr problems if call options are changed
	sed -i "s/git submodule/true/gim" "${S}/Makefile"
	default
}

src_install() {
	# Install icons
	doicon "${S}/assets/icon/${PN}.png"
	domenu "${S}/assets/${PN}.desktop"
	dobin "bin/${PN}"
}
