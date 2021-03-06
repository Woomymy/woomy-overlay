# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CRATES="
ansi_term-0.11.0
anyhow-1.0.38
atty-0.2.14
bitflags-1.2.1
clap-2.33.3
copy_dir-0.1.2
dtoa-0.4.7
heck-0.3.2
hermit-abi-0.1.17
kelpdot_macros-2.0.0
kernel32-sys-0.2.2
lazy_static-1.4.0
libc-0.2.82
linked-hash-map-0.5.4
proc-macro-error-1.0.4
proc-macro-error-attr-1.0.4
proc-macro2-1.0.24
quote-1.0.8
serde-1.0.123
serde_derive-1.0.123
serde_yaml-0.8.17
strsim-0.8.0
structopt-0.3.21
structopt-derive-0.4.14
syn-1.0.60
textwrap-0.11.0
unicode-segmentation-1.7.1
unicode-width-0.1.8
unicode-xid-0.2.1
vec_map-0.8.2
version_check-0.9.2
walkdir-0.1.8
winapi-0.2.8
winapi-0.3.9
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
yaml-rust-0.4.5
"

inherit cargo

DESCRIPTION="Simple dotfiles manager"
HOMEPAGE="https://github.com/Woomy4680-exe/kelp"
SRC_URI="https://github.com/Woomy4680-exe/kelp/archive/${PV}.tar.gz $(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
S="${WORKDIR}/kelp-${PV}"
DEPEND=""
RDEPEND=""
