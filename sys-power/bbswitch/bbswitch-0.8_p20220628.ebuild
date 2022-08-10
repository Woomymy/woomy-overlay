# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Took from gentoo official tress

EAPI=7

inherit linux-mod

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/Woomymy/${PN}.git"
	EGIT_BRANCH="develop"
else
	COMMIT="11fcf2789f2084a3f692558a4e14fd9da010dcc7"
	SRC_URI="https://github.com/Woomymy/bbswitch/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="amd64 x86"
	S="${WORKDIR}/bbswitch-${COMMIT}"
fi

DESCRIPTION="Toggle discrete NVIDIA Optimus graphics card"
HOMEPAGE="https://github.com/Bumblebee-Project/bbswitch"

SLOT="0"
LICENSE="GPL-3+"
IUSE=""

DEPEND="
	virtual/linux-sources
	sys-kernel/linux-headers
"
RDEPEND=""

MODULE_NAMES="bbswitch(acpi)"

pkg_setup() {
	linux-mod_pkg_setup
	BUILD_PARAMS="KVERSION=${KV_FULL}"
	# Fix clang support
	if linux_chkconfig_present CC_IS_CLANG; then
		BUILD_PARAMS+=' CC=${CHOST}-clang'
		if linux_chkconfig_present LD_IS_LLD; then
			BUILD_PARAMS+=' LD=ld.lld'
			if linux_chkconfig_present LTO_CLANG_THIN; then
				BUILD_PARAMS+=' ldflags-y=--thinlto-cache-dir= LDFLAGS_MODULE=--thinlto-cache-dir='
			fi
		fi
	fi

	BUILD_TARGETS="default"
}

src_prepare() {
	# Fix build failure, bug #513542 and bug #761370
	sed "s%^KDIR :=.*%KDIR := ${KV_OUT_DIR:-$KERNEL_DIR}%g" -i Makefile || die

	default
}

src_install() {
	einstalldocs

	insinto /etc/modprobe.d
	newins "${FILESDIR}"/bbswitch.modprobe bbswitch.conf

	linux-mod_src_install
}
