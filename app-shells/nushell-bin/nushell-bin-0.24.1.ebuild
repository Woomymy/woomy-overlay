# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
MY_V="$(ver_rs 1- _)"
DESCRIPTION="A new type of Shell"
HOMEPAGE="https://nushell.sh"
SRC_URI="https://github.com/nushell/nushell/releases/download/${PV}/nu_${MY_V}_linux.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="
	x11-libs/libxcb
	dev-libs/openssl
	x11-libs/libX11
	!app-shells/nushell
"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/nu_${MY_V}_linux/nushell-${PV}"

src_install() {
	# Add documentation files
	dodoc README.txt
	dodoc LICENSE
	# Install nushell itself
	dobin nu
	# Install all plugins included in the zip
	dobin nu_plugin*
}
