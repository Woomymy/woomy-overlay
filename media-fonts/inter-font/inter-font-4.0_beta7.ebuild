# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

MY_PV="${PV/_/-}"

DESCRIPTION="The inter font"
HOMEPAGE="https://github.com/rsms/Inter"
SRC_URI="https://github.com/rsms/inter/releases/download/v${MY_PV}/Inter-${MY_PV}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64"
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="app-arch/unzip"
FONT_SUFFIX="otf"
S="${WORKDIR}/Desktop"

