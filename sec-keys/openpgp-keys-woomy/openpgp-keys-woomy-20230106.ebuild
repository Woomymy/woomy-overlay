# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Public key of Woomy"
HOMEPAGE="https://woomy.be"
SRC_URI="https://files.woomy.be/woomymy.gpg"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="alpha amd64 arm arm64 hppa ia64 loong m68k mips ppc ppc64 riscv s390 sparc x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_install()
{
	insinto /usr/share/openpgp-keys
	# Prevent symlinks
	newins - "woomymy.gpg" < <(cat "${DISTDIR}/woomymy.gpg" || die)
}
