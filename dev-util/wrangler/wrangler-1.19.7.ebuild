# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	addr2line-0.17.0
	adler-1.0.2
	adler32-1.2.0
	aho-corasick-0.7.18
	ansi_term-0.12.1
	anyhow-1.0.51
	arc-swap-1.5.0
	arrayref-0.3.6
	arrayvec-0.5.2
	assert_cmd-2.0.2
	async-trait-0.1.52
	atty-0.2.14
	autocfg-1.0.1
	backtrace-0.3.63
	base64-0.13.0
	billboard-0.1.0
	binary-install-0.0.3-alpha.1
	bitflags-1.3.2
	blake2b_simd-0.5.11
	block-buffer-0.7.3
	block-buffer-0.9.0
	block-padding-0.1.5
	bstr-0.2.17
	bumpalo-3.8.0
	byte-tools-0.3.1
	byteorder-1.4.3
	bytes-0.4.12
	bytes-1.1.0
	bzip2-0.4.3
	bzip2-sys-0.1.11+1.0.8
	cc-1.0.72
	cfg-if-0.1.10
	cfg-if-1.0.0
	chrome-devtools-rs-0.0.0-alpha.3
	chrono-0.4.19
	clap-2.34.0
	clicolors-control-1.0.1
	cloudflare-0.8.7
	colored_json-2.1.0
	combine-4.6.2
	config-0.11.0
	console-0.9.2
	console-0.11.3
	console-0.14.1
	console-0.15.0
	constant_time_eq-0.1.5
	core-foundation-0.9.2
	core-foundation-sys-0.8.3
	cpufeatures-0.2.1
	crc32fast-1.3.0
	crossbeam-channel-0.5.1
	crossbeam-utils-0.8.5
	csv-1.1.6
	csv-core-0.1.10
	curl-0.4.41
	curl-sys-0.4.51+curl-7.80.0
	darling-0.13.1
	darling_core-0.13.1
	darling_macro-0.13.1
	data-encoding-2.3.2
	difflib-0.4.0
	digest-0.8.1
	digest-0.9.0
	dirs-1.0.5
	dirs-2.0.2
	dirs-3.0.2
	dirs-next-2.0.0
	dirs-sys-0.3.6
	dirs-sys-next-0.1.2
	doc-comment-0.3.3
	either-1.6.1
	encode_unicode-0.3.6
	encoding_rs-0.8.30
	env_logger-0.8.4
	erased-serde-0.3.16
	error-chain-0.12.4
	failure-0.1.8
	failure_derive-0.1.8
	fake-simd-0.1.2
	filetime-0.2.15
	flate2-1.0.22
	float-cmp-0.9.0
	fnv-1.0.7
	foreign-types-0.3.2
	foreign-types-shared-0.1.1
	form_urlencoded-1.0.1
	fs2-0.4.3
	fs_extra-1.2.0
	fsevent-0.4.0
	fsevent-sys-2.0.1
	fuchsia-zircon-0.3.3
	fuchsia-zircon-sys-0.3.3
	futures-0.3.17
	futures-channel-0.3.17
	futures-core-0.3.17
	futures-executor-0.3.17
	futures-io-0.3.17
	futures-macro-0.3.17
	futures-sink-0.3.17
	futures-task-0.3.17
	futures-util-0.3.17
	generic-array-0.12.4
	generic-array-0.14.4
	getrandom-0.1.16
	getrandom-0.2.3
	gimli-0.26.1
	globset-0.4.8
	h2-0.3.9
	hashbrown-0.11.2
	heck-0.3.3
	hermit-abi-0.1.19
	hex-0.4.3
	http-0.2.5
	http-body-0.4.4
	httparse-1.5.1
	httpdate-1.0.2
	humantime-2.1.0
	hyper-0.14.16
	hyper-rustls-0.23.0
	hyper-tls-0.5.0
	ident_case-1.0.1
	idna-0.2.3
	ignore-0.4.18
	indexmap-1.7.0
	indicatif-0.15.0
	inotify-0.7.1
	inotify-sys-0.1.5
	input_buffer-0.4.0
	iovec-0.1.4
	ipnet-2.3.1
	is_executable-0.1.2
	itertools-0.10.3
	itoa-0.4.8
	itoa-1.0.1
	js-sys-0.3.55
	kernel32-sys-0.2.2
	lazy_static-1.4.0
	lazycell-1.3.0
	lexical-core-0.7.6
	libc-0.2.112
	libflate-1.1.1
	libflate_lz77-1.1.0
	libz-sys-1.1.3
	line-wrap-0.1.1
	linked-hash-map-0.5.4
	log-0.4.14
	matches-0.1.9
	memchr-2.4.1
	mime-0.3.16
	mime_guess-2.0.3
	miniz_oxide-0.4.4
	mio-0.6.23
	mio-0.7.14
	mio-extras-2.0.6
	miow-0.2.2
	miow-0.3.7
	native-tls-0.2.8
	net2-0.2.37
	nom-5.1.2
	normalize-line-endings-0.3.0
	notify-4.0.17
	ntapi-0.3.6
	num-integer-0.1.44
	num-traits-0.2.14
	num_cpus-1.13.0
	number_prefix-0.3.0
	number_prefix-0.4.0
	oauth2-4.1.0
	object-0.27.1
	once_cell-1.9.0
	opaque-debug-0.2.3
	opaque-debug-0.3.0
	openssl-0.10.38
	openssl-probe-0.1.4
	openssl-src-111.17.0+1.1.1m
	openssl-sys-0.9.72
	os-version-0.2.0
	parity-ws-0.11.1
	path-slash-0.1.4
	percent-encoding-1.0.1
	percent-encoding-2.1.0
	pin-project-1.0.8
	pin-project-internal-1.0.8
	pin-project-lite-0.2.7
	pin-utils-0.1.0
	pkg-config-0.3.24
	plist-1.3.1
	ppv-lite86-0.2.15
	predicates-2.1.0
	predicates-core-1.0.2
	predicates-tree-1.0.4
	prettytable-rs-0.8.0
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro-hack-0.5.19
	proc-macro-nested-0.1.7
	proc-macro2-1.0.34
	quote-1.0.10
	rand-0.7.3
	rand-0.8.4
	rand_chacha-0.2.2
	rand_chacha-0.3.1
	rand_core-0.5.1
	rand_core-0.6.3
	rand_hc-0.2.0
	rand_hc-0.3.1
	redox_syscall-0.1.57
	redox_syscall-0.2.10
	redox_users-0.3.5
	redox_users-0.4.0
	regex-1.5.4
	regex-automata-0.1.10
	regex-syntax-0.6.25
	remove_dir_all-0.5.3
	reqwest-0.11.7
	ring-0.16.20
	rle-decode-fast-1.0.1
	rust-argon2-0.8.3
	rust-ini-0.13.0
	rustc-demangle-0.1.21
	rustls-0.20.2
	rustls-native-certs-0.6.1
	rustls-pemfile-0.2.1
	rustversion-1.0.6
	ryu-1.0.9
	safemem-0.3.3
	same-file-1.0.6
	schannel-0.1.19
	sct-0.7.0
	security-framework-2.4.2
	security-framework-sys-2.4.2
	semver-1.0.4
	serde-1.0.131
	serde_derive-1.0.131
	serde_json-1.0.73
	serde_path_to_error-0.1.5
	serde_qs-0.4.6
	serde_urlencoded-0.7.0
	serde_with-1.11.0
	serde_with_macros-1.5.1
	sha-1-0.8.2
	sha-1-0.9.8
	sha2-0.9.8
	signal-hook-registry-1.4.0
	siphasher-0.3.7
	slab-0.4.5
	slog-2.7.0
	slog-async-2.7.0
	slog-kvfilter-0.7.0
	slog-scope-4.4.0
	slog-stdlog-4.1.0
	slog-term-2.8.0
	sloggers-1.0.1
	socket2-0.4.2
	spin-0.5.2
	static_assertions-1.1.0
	strsim-0.8.0
	strsim-0.10.0
	structopt-0.3.25
	structopt-derive-0.4.18
	syn-1.0.82
	synstructure-0.12.6
	sys-info-0.9.1
	take_mut-0.2.2
	tar-0.4.38
	tempfile-3.2.0
	term-0.5.2
	term-0.7.0
	term_size-0.3.2
	termcolor-1.1.2
	terminal_size-0.1.17
	termios-0.3.3
	termtree-0.2.3
	text_io-0.1.9
	textwrap-0.11.0
	thiserror-1.0.30
	thiserror-impl-1.0.30
	thread_local-1.1.3
	time-0.1.44
	time-0.3.5
	tinyvec-1.5.1
	tinyvec_macros-0.1.0
	tokio-1.15.0
	tokio-macros-1.7.0
	tokio-native-tls-0.3.0
	tokio-retry-0.3.0
	tokio-rustls-0.23.1
	tokio-stream-0.1.8
	tokio-tungstenite-0.14.0
	tokio-util-0.6.9
	toml-0.5.8
	toml_edit-0.2.1
	tower-service-0.3.1
	tracing-0.1.29
	tracing-core-0.1.21
	trackable-1.2.0
	trackable_derive-1.0.0
	try-lock-0.2.3
	tungstenite-0.13.0
	twox-hash-1.6.1
	typenum-1.14.0
	uname-0.1.1
	unescape-0.1.0
	unicase-2.6.0
	unicode-bidi-0.3.7
	unicode-normalization-0.1.19
	unicode-segmentation-1.8.0
	unicode-width-0.1.9
	unicode-xid-0.2.2
	untrusted-0.7.1
	url-2.2.2
	utf-8-0.7.6
	uuid-0.8.2
	vcpkg-0.2.15
	vec_map-0.8.2
	version_check-0.9.3
	wait-timeout-0.2.0
	walkdir-2.3.2
	want-0.3.0
	wasi-0.9.0+wasi-snapshot-preview1
	wasi-0.10.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.78
	wasm-bindgen-backend-0.2.78
	wasm-bindgen-futures-0.4.28
	wasm-bindgen-macro-0.2.78
	wasm-bindgen-macro-support-0.2.78
	wasm-bindgen-shared-0.2.78
	web-sys-0.3.55
	webpki-0.21.4
	webpki-0.22.0
	webpki-roots-0.21.1
	which-4.2.2
	winapi-0.2.8
	winapi-0.3.9
	winapi-build-0.1.1
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	winreg-0.7.0
	ws2_32-sys-0.2.1
	xattr-0.2.2
	xml-rs-0.8.4
	yaml-rust-0.4.5
	zip-0.5.13
"

inherit cargo

DESCRIPTION="Command-line interface for all things Cloudflare Workers"
HOMEPAGE="https://github.com/cloudflare/wrangler"
SRC_URI="$(cargo_crate_uris ${CRATES}) https://github.com/cloudflare/wrangler/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0 MIT"
SLOT="0"
KEYWORDS="amd64"
RESTRICT="mirror"

src_prepare() {
	rm -rf "${S}/rust-toolchain"
	default_src_prepare
}
