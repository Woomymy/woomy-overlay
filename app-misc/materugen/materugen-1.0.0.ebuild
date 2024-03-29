# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.12.1

EAPI=8

CRATES="
	adler@1.0.2
	ahash@0.8.6
	autocfg@1.1.0
	bit_field@0.10.2
	bitflags@1.3.2
	bytemuck@1.14.0
	byteorder@1.5.0
	cfg-if@1.0.0
	color-thief@0.2.2
	color_quant@1.1.0
	crc32fast@1.3.2
	crossbeam-deque@0.8.4
	crossbeam-epoch@0.9.16
	crossbeam-utils@0.8.17
	crunchy@0.2.2
	either@1.9.0
	exr@1.71.0
	fdeflate@0.3.1
	flate2@1.0.28
	flume@0.11.0
	getrandom@0.2.11
	gif@0.12.0
	half@2.2.1
	hex@0.4.3
	image@0.24.7
	jpeg-decoder@0.3.0
	lazy_static@1.4.0
	lebe@0.5.2
	libc@0.2.151
	lock_api@0.4.11
	memoffset@0.9.0
	miniz_oxide@0.7.1
	num-integer@0.1.45
	num-rational@0.4.1
	num-traits@0.2.17
	once_cell@1.19.0
	png@0.17.10
	proc-macro2@1.0.71
	qoi@0.4.1
	quote@1.0.33
	rayon-core@1.12.0
	rayon@1.8.0
	rgb@0.8.37
	scopeguard@1.2.0
	simd-adler32@0.3.7
	smallvec@1.11.2
	spin@0.9.8
	syn@2.0.42
	tiff@0.9.0
	unicode-ident@1.0.12
	version_check@0.9.4
	wasi@0.11.0+wasi-snapshot-preview1
	weezl@0.1.7
	zerocopy-derive@0.7.32
	zerocopy@0.7.32
	zune-inflate@0.2.54
"

declare -A GIT_CRATES=(
	[material_you_palette]="https://github.com/dainbrump/material_you_palette;4227463ac8cb17079f670fe671e7d1929bcb0256"
)

inherit cargo

DESCRIPTION="Generate material you color schemes from an image and output them to JSON"
HOMEPAGE="https://github.com/Woomymy/materugen"
SRC_URI="
	https://github.com/Woomymy/materugen/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="BSD MIT Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"
