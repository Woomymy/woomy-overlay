#!/usr/bin/env bash

set -e

ROOT="${PWD}"

PKG=$1
VERSION=$2

PN=$(echo "${PKG}" | awk -F "/" '{print $2}')
cd "${ROOT}/${PKG}"
echo "- Updating ${PKG} (PN: ${PN}) to version ${VERSION}"

EBUILDS=($PN-*.ebuild)

SOURCE=${EBUILDS[-1]}
DEST="${PN}-${VERSION}.ebuild"
echo "-- Copying ${SOURCE} to ${DEST}"

# Skip if file already exists
if [[ "${SOURCE}" != "${DEST}" ]]; then
    mv "${SOURCE}" "${DEST}"
fi

echo "-- Regenerating manifest of ${DEST}"
ebuild "${DEST}" manifest
