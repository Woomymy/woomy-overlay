# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_EXTRA_DOC="CHANGELOG.md README.md"

RUBY_FAKEGEM_GEMSPEC="mdl.gemspec"

inherit ruby-fakegem

DESCRIPTION="Style checker/lint tool for markdown files"
HOMEPAGE="https://github.com/markdownlint/markdownlint"
SRC_URI="https://github.com/markdownlint/markdownlint/archive/v${PV}.tar.gz -> ${P}.tar.gz"
RUBY_S="markdownlint-${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_rdepend "
	dev-ruby/kramdown
	dev-ruby/kramdown-parser-gfm
	dev-ruby/mixlib-shellout
"

