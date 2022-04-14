#!/bin/sh

set -eu
set -o pipefail

REPO="Jimdo/wonderland-cli"

ASSET_DATA="$(curl --silent --fail --show-error -H "Authorization: token ${INPUT_TOKEN}" "https://api.github.com/repos/$REPO/releases/latest" | jq '.assets[] | select(.name == "wl_linux_amd64")')"
echo '::notice asset_data="$ASSET_DATA"'

DL_URI="$(echo "$ASSET_DATA" | jq '.url' -r)"

curl -L --silent --fail --show-error --output /usr/local/bin/wl -H "Authorization: token $INPUT_TOKEN" -H 'Accept:application/octet-stream' "$dl_uri"
chmod +x /usr/local/bin/wl
