# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: appimage-extract.eclass
# @MAINTAINER:
# Woomymy <github@woomy.ovh>
# @AUTHOR:
# Woomymy <github@woomy.ovh>
# @SUPPORTED_EAPIS: 8
# @BLURB: utils to extract appimage files
# @DESCRIPTION:
# Uses `squashfs-tools` to extract appimage files

if [[ ! ${_APPIMAGE_EXTRACT_ECLASS} ]]; then

case ${EAPI} in
	8|7) ;;
	*) die "${ECLASS}: EAPI ${EAPI} unsupported."
esac

_APPIMAGE_EXTRACT_ECLASS=1

BDEPEND="${BDEPEND} sys-fs/squashfs-tools sys-devel/binutils"

# @FUNCTION: unpack_appimage
# @USAGE: <appimage_file> <out>
# @DESCRIPTION:
# Unpacks appimage files
unpack_appimage() {
    [[ $# -eq 2 ]] || die "Usage: ${FUNCNAME} <file> <out>"
	# Inspired from https://superuser.com/questions/1301583/how-can-i-extract-files-from-an-appimage
	[[ ! -f "${1}" ]] && die "${1} not found!"
	[[ -z "${2}" ]] && die "Out dir not specified!"

	ELFSIZE=$(LC_ALL=C readelf -h $1)
	START_OF_SECTION=$(echo $ELFSIZE | grep -oP "(?<=Start of section headers: )[0-9]+")
	SECTION_SIZE=$(echo $ELFSIZE | grep -oP "(?<=Size of section headers: )[0-9]+")
	SECTION_NO=$(echo $ELFSIZE | grep -oP "(?<=Number of section headers: )[0-9]+")

	APPIMAGE_OFFSET="$((( START_OF_SECTION + SECTION_SIZE * SECTION_NO )))"

	unsquashfs -o $APPIMAGE_OFFSET -d ${2} ${1}
}

fi
