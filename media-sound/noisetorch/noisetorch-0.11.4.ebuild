# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop go-module

EGO_SUM=(
	"dmitri.shuralyov.com/gpu/mtl v0.0.0-20190408044501-666a987793e9"
	"dmitri.shuralyov.com/gpu/mtl v0.0.0-20190408044501-666a987793e9/go.mod"
	"gioui.org v0.0.0-20200417085050-0cfc914d8b7d/go.mod"
	"gioui.org v0.0.0-20200630184602-223f8fd40ae4"
	"gioui.org v0.0.0-20200630184602-223f8fd40ae4/go.mod"
	"github.com/BurntSushi/toml v0.3.1"
	"github.com/BurntSushi/toml v0.3.1/go.mod"
	"github.com/BurntSushi/xgb v0.0.0-20160522181843-27f122750802"
	"github.com/BurntSushi/xgb v0.0.0-20160522181843-27f122750802/go.mod"
	"github.com/BurntSushi/xgbutil v0.0.0-20190907113008-ad855c713046"
	"github.com/BurntSushi/xgbutil v0.0.0-20190907113008-ad855c713046/go.mod"
	"github.com/aarzilli/nucular v0.0.0-20200615134801-81910c722bba"
	"github.com/aarzilli/nucular v0.0.0-20200615134801-81910c722bba/go.mod"
	"github.com/go-gl/glfw v0.0.0-20190409004039-e6da0acd62b1"
	"github.com/go-gl/glfw v0.0.0-20190409004039-e6da0acd62b1/go.mod"
	"github.com/go-gl/glfw/v3.3/glfw v0.0.0-20191125211704-12ad95a8df72"
	"github.com/go-gl/glfw/v3.3/glfw v0.0.0-20191125211704-12ad95a8df72/go.mod"
	"github.com/golang/freetype v0.0.0-20161208064710-d9be45aaf745"
	"github.com/golang/freetype v0.0.0-20161208064710-d9be45aaf745/go.mod"
	"github.com/hashicorp/golang-lru v0.0.0-20160813221303-0a025b7e63ad"
	"github.com/hashicorp/golang-lru v0.0.0-20160813221303-0a025b7e63ad/go.mod"
	"github.com/lawl/pulseaudio v0.0.0-20200802093727-ab0735955fd0"
	"github.com/lawl/pulseaudio v0.0.0-20200802093727-ab0735955fd0/go.mod"
	"github.com/lawl/pulseaudio v0.0.0-20210604102109-cb2596d6a8ef"
	"github.com/lawl/pulseaudio v0.0.0-20210604102109-cb2596d6a8ef/go.mod"
	"github.com/lawl/pulseaudio v0.0.0-20210928141934-ed754c0c6618"
	"github.com/lawl/pulseaudio v0.0.0-20210928141934-ed754c0c6618/go.mod"
	"github.com/syndtr/gocapability v0.0.0-20200815063812-42c35b437635"
	"github.com/syndtr/gocapability v0.0.0-20200815063812-42c35b437635/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20190510104115-cbcb75029529"
	"golang.org/x/crypto v0.0.0-20190510104115-cbcb75029529/go.mod"
	"golang.org/x/crypto v0.0.0-20200709230013-948cd5f35899"
	"golang.org/x/crypto v0.0.0-20200709230013-948cd5f35899/go.mod"
	"golang.org/x/exp v0.0.0-20190306152737-a1d7652674e8/go.mod"
	"golang.org/x/exp v0.0.0-20191002040644-a1355ae1e2c3"
	"golang.org/x/exp v0.0.0-20191002040644-a1355ae1e2c3/go.mod"
	"golang.org/x/exp v0.0.0-20191224044220-1fea468a75e9"
	"golang.org/x/exp v0.0.0-20191224044220-1fea468a75e9/go.mod"
	"golang.org/x/image v0.0.0-20190227222117-0694c2d4d067/go.mod"
	"golang.org/x/image v0.0.0-20190802002840-cff245a6509b/go.mod"
	"golang.org/x/image v0.0.0-20200618115811-c13761719519"
	"golang.org/x/image v0.0.0-20200618115811-c13761719519/go.mod"
	"golang.org/x/mobile v0.0.0-20190719004257-d2bd2a29d028"
	"golang.org/x/mobile v0.0.0-20190719004257-d2bd2a29d028/go.mod"
	"golang.org/x/mod v0.1.0/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190312061237-fead79001313/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20200124204421-9fbb57f87de9"
	"golang.org/x/sys v0.0.0-20200124204421-9fbb57f87de9/go.mod"
	"golang.org/x/text v0.3.0"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/tools v0.0.0-20190927191325-030b2cf1153e/go.mod"
	"golang.org/x/tools v0.0.0-20191012152004-8de300cfc20a/go.mod"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
)

go-module_set_globals

DESCRIPTION="Real-time microphone noise suppression on Linux"
HOMEPAGE="https://github.com/lawl/noisetorch"
SRC_URI="
	https://github.com/lawl/NoiseTorch/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}
"

S="${WORKDIR}/NoiseTorch-${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	# Install icons
	insinto /usr/share/icons/hicolor/256x256/apps/
	doins "${S}/assets/icon/${PN}.png"

	domenu "${S}/assets/${PN}.desktop"

	exeinto "/usr/bin"
	doexe "bin/${PN}"
}
