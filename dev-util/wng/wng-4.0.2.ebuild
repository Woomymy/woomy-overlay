# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CRATES="
ansi_term-0.11.0
arrayref-0.3.6
arrayvec-0.5.2
atty-0.2.14
autocfg-1.0.1
base64-0.13.0
bitflags-1.2.1
blake2b_simd-0.5.11
cc-1.0.66
cfg-if-1.0.0
clap-2.33.3
constant_time_eq-0.1.5
crossbeam-utils-0.8.1
dirs-3.0.1
dirs-sys-0.3.5
form_urlencoded-1.0.0
fs_extra-1.2.0
getrandom-0.1.16
git2-0.13.17
hermit-abi-0.1.18
idna-0.2.1
is_executable-1.0.1
jobserver-0.1.21
lazy_static-1.4.0
libc-0.2.86
libgit2-sys-0.12.18+1.1.0
libssh2-sys-0.2.21
libz-sys-1.1.2
log-0.4.14
matches-0.1.8
openssl-probe-0.1.2
openssl-sys-0.9.60
percent-encoding-2.1.0
pkg-config-0.3.19
redox_syscall-0.1.57
redox_users-0.3.5
rust-argon2-0.8.3
serde-1.0.123
strsim-0.8.0
textwrap-0.11.0
tinyvec-1.1.1
tinyvec_macros-0.1.0
toml-0.5.8
unicode-bidi-0.3.4
unicode-normalization-0.1.17
unicode-width-0.1.8
url-2.2.0
vcpkg-0.2.11
vec_map-0.8.2
wasi-0.9.0+wasi-snapshot-preview1
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
wng-lib-0.1.3
"

inherit cargo

DESCRIPTION="The W package manager | WNG is a C package and projects manager written in Rust."
HOMEPAGE="https://github.com/wafelack/wng"
SRC_URI="https://github.com/Wafelack/wng/archive/4.0.2.tar.gz $(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=""
RDEPEND=""

src_install() {
	doexe "${WORKDIR}/target/release/wng"
}
