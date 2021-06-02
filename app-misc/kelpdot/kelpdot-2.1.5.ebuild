# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CRATES="
	anyhow-1.0.40
	dtoa-0.4.7
	kelpdot_macros-2.1.3
	linked-hash-map-0.5.4
	proc-macro2-1.0.24
	quote-1.0.8
	serde-1.0.125
	serde_derive-1.0.125
	serde_yaml-0.8.17
	syn-1.0.60
	unicode-xid-0.2.1
	yaml-rust-0.4.5
"

inherit cargo

DESCRIPTION="Simple dotfiles manager"
HOMEPAGE="https://github.com/Woomymy/kelp"
SRC_URI="https://github.com/Woomymy/kelp/archive/${PV}.tar.gz $(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
S="${WORKDIR}/kelp-${PV}"
DEPEND=""
RDEPEND=""
