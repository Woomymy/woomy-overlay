# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: electron-base.eclass
# @MAINTAINER:
# Woomymy <github@woomy.ovh>
# @AUTHOR:
# Woomymy <github@woomy.ovh>
# @SUPPORTED_EAPIS: 8
# @BLURB: Utilties to work with precompiled electron packages
# @DESCRIPTION:
# Symlinks some libs required by electron in package directory because electron doesn't want to load them from /usr/lib64

if [[ ! ${_ELECTRON_BASE_ECLASS} ]]; then

case ${EAPI} in
	8) ;;
	*) die "${ECLASS}: EAPI ${EAPI} unsupported."
esac

_ELECTRON_BASE_ECLASS=1

DEPEND="${DEPEND} media-libs/libglvnd media-libs/vulkan-loader"

# @FUNCTION: electron_libs_link
# @USAGE: <package dir> <relative path of lib64>
# @DESCRIPTION:
# Links files
#
electron_libs_link() {
    [[ $# -eq 2 ]] || die "Usage: ${FUNCNAME} <package dir> <relative path of lib64>"
    for lib in libEGL.so libGLESv2.so libvulkan.so.1
    do
        dosym "${2}/${lib}" "${1}/${lib}"
    done
}

fi
