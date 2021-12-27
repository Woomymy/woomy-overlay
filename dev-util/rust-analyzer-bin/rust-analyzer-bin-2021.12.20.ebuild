# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_PV="${PV//./-}"

DESCRIPTION="Rust LSP server"
HOMEPAGE="https://rust-analyzer.github.io"
SRC_URI="https://github.com/rust-analyzer/rust-analyzer/releases/download/${MY_PV}/rust-analyzer-x86_64-unknown-linux-gnu.gz"

LICENSE="Apache-2.0 MIT"
SLOT="0"
KEYWORDS="amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_install() {
	RUST_ANALYSER_BIN="$(ls "${S}/rust-analy"*)"
	mv "${RUST_ANALYSER_BIN}" "${S}/rust-analyzer"
	exeinto /usr/bin
	doexe "${S}/rust-analyzer"
}
