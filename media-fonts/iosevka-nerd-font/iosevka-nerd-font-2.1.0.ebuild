# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font
DESCRIPTION="Nerd font version of Iosevka"
HOMEPAGE="https://github.com/ryanoasis/nerd-fonts/"
SRC_URI="https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Iosevka.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="app-arch/unzip"
FONT_SUFFIX="ttf"
S="${WORKDIR}"
