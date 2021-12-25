#!/usr/bin/env bash
# Proceed EUSCAN JSON reports using JQ
set -e

ROOT="${PWD}"
UPDATES_FILE="${ROOT}/updates.json"

echo -n "[" >$UPDATES_FILE

FIRST_UPDATE_WROTE=0

cd euscan-reports
for REPORT in *.json; do
	PN=$(echo "${REPORT/.json/}" | sed -e "s/_/\//g")
	if [[ "$(jq -r ".[\"${PN}\"].result | length" "${REPORT}")" != "0" ]]; then
		echo ""
		echo "${PN} has new version!"
		VERSION="$(jq -r ".[\"${PN}\"].result[0].version" "${REPORT}")"
		echo "Version: ${VERSION}"
		# Don't write , after open [
		if [[ "${FIRST_UPDATE_WROTE}" == "1" ]]; then
			echo -n "," >>$UPDATES_FILE
		fi
		FIRST_UPDATE_WROTE=1
		FNAME="$(echo "${PN}" | awk -F "/" '{print $2}')"
		REPORTS="${PWD}"
		cd $ROOT
        .github/bin/update-ebuilds.sh "${PN}" "${VERSION}"
		zip -r9 "${FNAME}.zip" -- "${PN}/Manifest" "${PN}/${FNAME}-${VERSION}.ebuild"
		UPLOAD="$(curl --upload-file "${FNAME}.zip" https://transfer.sh/${FNAME})"
		cd $REPORTS
		echo -n "{\"name\":\"${PN}\",\"version\":\"${VERSION}\",\"upload_url\":\"${UPLOAD}\"}" | tee -a "${UPDATES_FILE}"
	
    fi
done
echo -ne "]" >> "$UPDATES_FILE"

echo ""
echo "Wrote updates in ${UPDATES_FILE}"
