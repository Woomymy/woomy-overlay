# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="Rofi fork with wayland support"
HOMEPAGE="https://github.com/lbonn/rofi"
SRC_URI="https://github.com/lbonn/rofi/releases/download/${PV}%2Bwayland1/rofi-${PV}+wayland1.tar.xz -> ${P}.tar.xz" # Use archive that contains submodules

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	!x11-misc/rofi
"
RDEPEND="
	${DEPEND}
	X? (
		dev-libs/glib:2
		gnome-base/librsvg:2
		media-libs/freetype
		virtual/jpeg
		x11-libs/cairo[X,xcb(+)]
		x11-libs/libXft
		x11-libs/libXinerama
		x11-libs/libxcb
		x11-libs/libxkbcommon[X]
		x11-libs/pango[X]
		x11-libs/startup-notification
		x11-libs/xcb-util
		x11-libs/xcb-util-wm
		x11-libs/xcb-util-xrm
		x11-misc/xkeyboard-config
	)
	dev-libs/wayland
	dev-libs/wayland-protocols
"
BDEPEND=""

IUSE="+X window"

REQUIRED_USE="window? ( X )" # Window support is now aviable on wayland (yet)

S="${WORKDIR}/rofi-${PV}+wayland1"

src_configure() {
	local emesonargs=(
		$(meson_feature X)
		$(meson_use window)
	)
	meson_src_configure
}
