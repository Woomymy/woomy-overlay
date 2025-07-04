# Copyright 2022-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

DESCRIPTION="The inter font"
HOMEPAGE="https://github.com/rsms/Inter"
SRC_URI="https://github.com/rsms/inter/releases/download/v${PV}/Inter-${PV}.zip"

S="${WORKDIR}/extras/otf"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="${DEPEND}"
BDEPEND="app-arch/unzip"
FONT_SUFFIX="otf"
