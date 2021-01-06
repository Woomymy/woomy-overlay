# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=7

CRATES="
Inflector-0.11.4
addr2line-0.14.0
adler-0.2.3
adler32-1.2.0
ahash-0.4.6
aho-corasick-0.6.10
aho-corasick-0.7.15
ansi_colours-1.0.1
ansi_term-0.11.0
ansi_term-0.12.1
anymap-0.12.1
arrayref-0.3.6
arrayvec-0.4.12
arrayvec-0.5.2
async-attributes-1.1.1
async-channel-1.5.1
async-executor-1.4.0
async-fs-1.5.0
async-global-executor-1.4.3
async-io-1.1.6
async-lock-2.3.0
async-mutex-1.4.0
async-net-1.5.0
async-process-1.0.1
async-recursion-0.3.1
async-std-1.7.0
async-task-4.0.3
async-trait-0.1.42
atomic-waker-1.0.0
atty-0.2.14
autocfg-1.0.1
backtrace-0.3.55
base64-0.12.3
base64-0.13.0
base64-0.6.0
base64-0.9.3
bat-0.15.4
battery-0.7.8
bigdecimal-0.2.0
bincode-1.3.1
bit-set-0.5.2
bit-vec-0.6.2
bitflags-1.2.1
blake2b_simd-0.5.11
block-buffer-0.2.0
block-buffer-0.7.3
block-buffer-0.9.0
block-padding-0.1.5
blocking-1.0.2
bson-0.14.1
bstr-0.2.14
bumpalo-3.4.0
byte-tools-0.2.0
byte-tools-0.3.1
byte-unit-4.0.9
byteorder-1.3.4
bytes-0.4.12
bytes-0.5.6
bzip2-0.3.3
bzip2-sys-0.1.9+1.0.8
cache-padded-1.1.1
calamine-0.16.2
cassowary-0.3.0
cc-1.0.65
cfg-if-0.1.10
cfg-if-1.0.0
chrono-0.4.19
chrono-tz-0.5.3
clap-2.33.3
cloudabi-0.0.3
cloudabi-0.1.0
codepage-0.1.1
codespan-reporting-0.9.5
colored-1.9.3
concurrent-queue-1.2.2
config-0.10.1
console-0.11.3
console_error_panic_hook-0.1.6
const_fn-0.4.3
constant_time_eq-0.1.5
content_inspector-0.2.4
core-foundation-0.7.0
core-foundation-0.9.1
core-foundation-sys-0.7.0
core-foundation-sys-0.8.2
cpuid-bool-0.1.2
crc32fast-1.2.1
crossbeam-channel-0.3.9
crossbeam-channel-0.5.0
crossbeam-deque-0.7.3
crossbeam-deque-0.8.0
crossbeam-epoch-0.8.2
crossbeam-epoch-0.9.1
crossbeam-queue-0.2.3
crossbeam-utils-0.6.6
crossbeam-utils-0.7.2
crossbeam-utils-0.8.1
crossterm-0.17.7
crossterm-0.18.2
crossterm_winapi-0.6.2
crypto-mac-0.4.0
cssparser-0.27.2
cssparser-macros-0.6.0
csv-1.1.5
csv-core-0.1.10
ctrlc-3.1.7
curl-0.4.34
curl-sys-0.4.38+curl-7.73.0
darwin-libproc-0.2.0
darwin-libproc-sys-0.2.0
decimal-2.0.4
deflate-0.7.20
derive-new-0.5.8
derive_more-0.99.11
digest-0.6.2
digest-0.8.1
digest-0.9.0
directories-2.0.2
directories-3.0.1
dirs-2.0.2
dirs-3.0.1
dirs-next-1.0.2
dirs-sys-0.3.5
dirs-sys-next-0.1.1
doc-comment-0.3.3
dtoa-0.4.6
dtoa-short-0.3.2
dtparse-1.2.0
dunce-1.0.1
either-1.6.1
eml-parser-0.1.0
encode_unicode-0.3.6
encoding-0.2.33
encoding-index-japanese-1.20141219.5
encoding-index-korean-1.20141219.5
encoding-index-simpchinese-1.20141219.5
encoding-index-singlebyte-1.20141219.5
encoding-index-tradchinese-1.20141219.5
encoding_index_tests-0.1.4
encoding_rs-0.8.26
env_logger-0.7.1
error-chain-0.12.4
event-listener-2.5.1
failure-0.1.8
failure_derive-0.1.8
fake-simd-0.1.2
fallible-iterator-0.2.0
fallible-streaming-iterator-0.1.9
fancy-regex-0.3.5
fastrand-1.4.0
filesize-0.2.0
fixedbitset-0.2.0
flate2-1.0.14
fnv-1.0.7
foreign-types-0.3.2
foreign-types-shared-0.1.1
form_urlencoded-1.0.0
fs_extra-1.2.0
fuchsia-cprng-0.1.1
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futf-0.1.4
futures-0.1.30
futures-0.3.8
futures-channel-0.3.8
futures-channel-preview-0.3.0-alpha.19
futures-core-0.3.8
futures-core-preview-0.3.0-alpha.19
futures-cpupool-0.1.8
futures-executor-0.3.8
futures-executor-preview-0.3.0-alpha.19
futures-io-0.3.8
futures-io-preview-0.3.0-alpha.19
futures-lite-1.11.2
futures-macro-0.3.8
futures-preview-0.3.0-alpha.19
futures-sink-0.3.8
futures-sink-preview-0.3.0-alpha.19
futures-task-0.3.8
futures-timer-3.0.2
futures-util-0.3.8
futures-util-preview-0.3.0-alpha.19
futures_codec-0.4.1
fxhash-0.2.1
gcc-0.3.55
generic-array-0.12.3
generic-array-0.14.4
generic-array-0.8.3
getrandom-0.1.15
getset-0.1.1
gimli-0.23.0
git2-0.13.13
glob-0.3.0
globset-0.4.6
gloo-timers-0.2.1
h2-0.2.7
hashbrown-0.9.1
hashlink-0.6.0
heim-0.1.0-rc.1
heim-common-0.1.0-rc.1
heim-cpu-0.1.0-rc.1
heim-disk-0.1.0-rc.1
heim-host-0.1.0-rc.1
heim-memory-0.1.0-rc.1
heim-net-0.1.0-rc.1
heim-process-0.1.1-rc.1
heim-runtime-0.1.0-rc.1
heim-sensors-0.1.0-rc.1
hermit-abi-0.1.17
hex-0.3.2
hex-0.4.2
hmac-0.4.2
hmac-sha1-0.1.3
html5ever-0.25.1
htmlescape-0.3.1
http-0.1.21
http-0.2.1
http-body-0.3.1
httparse-1.3.4
httpdate-0.3.2
humantime-1.3.0
hyper-0.11.27
hyper-0.13.9
hyper-tls-0.4.3
ical-0.6.0
ichwh-0.3.4
idna-0.2.0
image-0.22.5
indexmap-1.6.0
inflate-0.4.5
instant-0.1.9
iovec-0.1.4
ipnet-2.3.0
isahc-0.7.6
itertools-0.9.0
itoa-0.4.6
jobserver-0.1.21
jpeg-decoder-0.1.20
js-sys-0.3.45
kernel32-sys-0.2.2
kstring-0.1.2
kv-log-macro-1.0.7
language-tags-0.2.2
lazy_static-0.2.11
lazy_static-1.4.0
lazycell-1.3.0
lexical-core-0.7.4
libc-0.2.80
libgit2-sys-0.12.15+1.1.0
libnghttp2-sys-0.1.5+1.42.0
libsqlite3-sys-0.20.1
libz-sys-1.1.2
line-wrap-0.1.1
linked-hash-map-0.3.0
linked-hash-map-0.5.3
liquid-0.20.1
liquid-core-0.20.2
liquid-derive-0.20.1
liquid-lib-0.20.2
lock_api-0.3.4
lock_api-0.4.2
log-0.3.9
log-0.4.11
mac-0.1.1
macaddr-1.0.1
mach-0.3.2
maplit-1.0.2
markup5ever-0.10.0
matches-0.1.8
maybe-uninit-2.0.0
md5-0.3.8
md5-0.6.1
memchr-2.3.4
memoffset-0.5.6
memoffset-0.6.1
meval-0.2.0
mime-0.3.16
mime_guess-2.0.3
miniz_oxide-0.3.7
miniz_oxide-0.4.3
mio-0.6.22
mio-0.7.6
mio-uds-0.6.8
miow-0.2.2
miow-0.3.6
native-tls-0.2.6
nb-connect-1.0.2
neso-0.5.0
net2-0.2.36
new_debug_unreachable-1.0.4
nipper-0.1.8
nix-0.18.0
nix-0.19.0
nodrop-0.1.14
nom-1.2.4
nom-5.1.2
ntapi-0.3.6
num-0.2.1
num-bigint-0.2.6
num-bigint-0.3.1
num-complex-0.2.4
num-format-0.4.0
num-integer-0.1.44
num-iter-0.1.42
num-rational-0.2.4
num-rational-0.3.2
num-traits-0.1.43
num-traits-0.2.14
num_cpus-1.13.0
object-0.22.0
once_cell-1.5.2
onig-6.1.1
onig_sys-69.6.0
opaque-debug-0.2.3
opaque-debug-0.3.0
open-1.4.0
openssl-0.10.30
openssl-probe-0.1.2
openssl-sys-0.9.58
ordered-float-1.0.2
ordered-float-2.0.1
parking-2.0.0
parking_lot-0.10.2
parking_lot-0.11.1
parking_lot-0.9.0
parking_lot_core-0.6.2
parking_lot_core-0.7.2
parking_lot_core-0.8.0
parse-zoneinfo-0.3.0
path_abs-0.5.0
percent-encoding-1.0.1
percent-encoding-2.1.0
peresil-0.3.0
pest-2.1.3
pest_derive-2.1.0
pest_generator-2.1.3
pest_meta-2.1.3
petgraph-0.5.1
phf-0.8.0
phf_codegen-0.8.0
phf_generator-0.8.0
phf_macros-0.8.0
phf_shared-0.8.0
pin-project-0.4.27
pin-project-1.0.2
pin-project-internal-0.4.27
pin-project-internal-1.0.2
pin-project-lite-0.1.11
pin-project-lite-0.2.0
pin-utils-0.1.0
pkg-config-0.3.19
platforms-1.0.3
plist-1.0.0
png-0.15.3
polling-1.1.0
ppv-lite86-0.2.10
precomputed-hash-0.1.1
pretty-0.5.2
pretty-hex-0.2.1
pretty_env_logger-0.4.0
proc-macro-error-1.0.4
proc-macro-error-attr-1.0.4
proc-macro-hack-0.5.19
proc-macro-nested-0.1.6
proc-macro2-1.0.24
proc-quote-0.3.2
proc-quote-impl-0.3.2
ptree-0.3.0
query_interface-0.3.5
quick-error-1.2.3
quick-xml-0.12.4
quick-xml-0.18.1
quick-xml-0.19.0
quickcheck-0.9.2
quickcheck_macros-0.9.1
quote-1.0.7
rand-0.3.23
rand-0.4.6
rand-0.7.3
rand_chacha-0.2.2
rand_core-0.3.1
rand_core-0.4.2
rand_core-0.5.1
rand_hc-0.2.0
rand_pcg-0.2.1
rawkey-0.1.3
rayon-1.5.0
rayon-core-1.9.0
rdrand-0.4.0
readkey-0.1.7
redox_syscall-0.1.57
redox_users-0.3.5
regex-0.2.11
regex-1.4.2
regex-automata-0.1.9
regex-syntax-0.5.6
regex-syntax-0.6.21
relay-0.1.1
remove_dir_all-0.5.3
reqwest-0.10.9
result-1.0.0
roxmltree-0.13.0
rusqlite-0.24.2
rust-argon2-0.8.3
rust-crypto-0.2.36
rust-embed-5.6.0
rust-embed-impl-5.6.0
rust-embed-utils-5.0.0
rust-ini-0.13.0
rust_decimal-0.10.2
rustc-demangle-0.1.18
rustc-serialize-0.3.24
rustc_version-0.2.3
rustyline-6.3.0
ryu-1.0.5
s3handler-0.5.3
safemem-0.2.0
safemem-0.3.3
same-file-1.0.6
schannel-0.1.19
scoped-tls-0.1.2
scoped-tls-1.0.0
scopeguard-1.1.0
security-framework-2.0.0
security-framework-sys-2.0.0
selectors-0.22.0
semver-0.10.0
semver-0.9.0
semver-parser-0.7.0
serde-0.8.23
serde-1.0.117
serde-hjson-0.9.1
serde-value-0.6.0
serde_bytes-0.11.5
serde_derive-1.0.117
serde_ini-0.2.0
serde_json-1.0.59
serde_test-0.8.23
serde_urlencoded-0.6.1
serde_urlencoded-0.7.0
serde_yaml-0.8.14
servo_arc-0.1.1
sha-1-0.8.2
sha1-0.2.0
sha2-0.6.0
sha2-0.9.2
shadow-rs-0.5.7
shell-words-1.0.0
shellexpand-2.0.0
signal-hook-0.1.16
signal-hook-registry-1.2.2
siphasher-0.3.3
slab-0.3.0
slab-0.4.2
sluice-0.4.2
smallvec-0.2.1
smallvec-0.6.13
smallvec-1.5.0
smol-1.2.5
socket2-0.3.17
stable_deref_trait-1.2.0
static_assertions-1.1.0
std_prelude-0.2.12
string_cache-0.8.1
string_cache_codegen-0.5.1
strip-ansi-escapes-0.1.0
strsim-0.8.0
surf-1.0.3
sxd-document-0.3.2
sxd-xpath-0.4.2
syn-1.0.57
synstructure-0.12.4
syntect-4.4.0
take-0.1.0
tempfile-3.1.0
tendril-0.4.1
term-0.6.1
term_size-0.3.2
termcolor-1.1.2
terminal_size-0.1.15
termios-0.3.3
textwrap-0.11.0
thin-slice-0.1.1
thiserror-1.0.22
thiserror-impl-1.0.22
thread_local-0.3.6
thread_local-1.0.1
time-0.1.44
tint-1.0.1
tinyvec-1.1.0
tinyvec_macros-0.1.0
titlecase-1.1.0
tokio-0.1.22
tokio-0.2.23
tokio-codec-0.1.2
tokio-core-0.1.17
tokio-current-thread-0.1.7
tokio-executor-0.1.10
tokio-fs-0.1.7
tokio-io-0.1.13
tokio-proto-0.1.1
tokio-reactor-0.1.12
tokio-service-0.1.0
tokio-sync-0.1.8
tokio-tcp-0.1.4
tokio-threadpool-0.1.18
tokio-timer-0.2.13
tokio-tls-0.3.1
tokio-udp-0.1.6
tokio-uds-0.2.7
tokio-util-0.3.1
toml-0.5.7
tower-service-0.3.0
tracing-0.1.22
tracing-core-0.1.17
tracing-futures-0.2.4
try-lock-0.1.0
try-lock-0.2.3
tui-0.12.0
typed-arena-1.7.0
typenum-1.12.0
ucd-trie-0.1.3
ucd-util-0.1.8
umask-1.0.0
unicase-2.6.0
unicode-bidi-0.3.4
unicode-normalization-0.1.16
unicode-segmentation-1.7.1
unicode-width-0.1.8
unicode-xid-0.2.1
uom-0.30.0
url-2.2.0
user32-sys-0.2.0
users-0.10.0
utf-8-0.7.5
utf8-ranges-1.0.4
utf8-width-0.1.4
utf8parse-0.1.1
utf8parse-0.2.0
uuid-0.8.1
vcpkg-0.2.10
vec-arena-1.0.0
vec_map-0.8.2
version_check-0.9.2
void-1.0.2
vte-0.3.3
waker-fn-1.1.0
walkdir-2.3.1
want-0.0.4
want-0.3.0
wasi-0.10.0+wasi-snapshot-preview1
wasi-0.9.0+wasi-snapshot-preview1
wasm-bindgen-0.2.68
wasm-bindgen-backend-0.2.68
wasm-bindgen-futures-0.3.27
wasm-bindgen-futures-0.4.18
wasm-bindgen-macro-0.2.68
wasm-bindgen-macro-support-0.2.68
wasm-bindgen-shared-0.2.68
wasm-bindgen-test-0.3.18
wasm-bindgen-test-macro-0.3.18
web-sys-0.3.45
wepoll-sys-stjepang-1.0.8
which-4.0.2
widestring-0.4.3
wild-2.0.4
winapi-0.2.8
winapi-0.3.9
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.5
winapi-x86_64-pc-windows-gnu-0.4.0
winreg-0.7.0
ws2_32-sys-0.2.1
x11-2.18.2
xml-rs-0.8.3
xmlparser-0.13.3
yaml-rust-0.4.4
zip-0.5.8
clipboard-0.5.0
x11-clipboard-0.3.3
trash-1.2.0
objc-foundation-0.1.1
objc_id-0.1.1
objc-0.2.7
clipboard-win-2.2.0
error-code-2.0.2
str-buf-1.0.5
xcb-0.8.2
malloc_buf-0.0.6
block-0.1.6
arboard-1.1.0
core-graphics-0.22.2
bytemuck-1.4.1
color_quant-1.1.0
"

inherit cargo

DESCRIPTION="A new type of shell"
HOMEPAGE="https://github.com/nushell/nushell"
SRC_URI="https://github.com/nushell/nushell/archive/${PV}.tar.gz $(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	x11-libs/libXcomposite
	x11-libs/libxcb
	x11-libs/libX11
	!app-shells/nushell-bin
"
RDEPEND="${DEPEND}"
BDEPEND="${DEPEND}"


