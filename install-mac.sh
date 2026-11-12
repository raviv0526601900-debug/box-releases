#!/bin/bash
# BOX for Mac — downloads the latest BOX and installs it into Applications.
# Run from Terminal:
#   curl -fsSL https://raw.githubusercontent.com/raviv0526601900-debug/box-releases/main/install-mac.sh | bash
# A download made by Terminal carries no "downloaded from the internet" mark,
# so macOS opens BOX without the "Apple could not verify" warning.
set -euo pipefail
REPO="raviv0526601900-debug/box-releases"
DEST="${BOX_APP_DIR:-/Applications}"

echo "→ Looking for the latest BOX…"
TAG=$(curl -fsSLI -o /dev/null -w '%{url_effective}' "https://github.com/$REPO/releases/latest" | sed 's|.*/tag/||')
VER="${TAG#v}"
case "$VER" in
  [0-9]*.[0-9]*.[0-9]*) ;;
  *) echo "Could not find the latest version. Download it from https://github.com/$REPO/releases/latest"; exit 1 ;;
esac

TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT
echo "→ Downloading BOX $VER…"
curl -fL --progress-bar "https://github.com/$REPO/releases/download/$TAG/BOX-$VER-mac.zip" -o "$TMP/BOX.zip"
ditto -x -k "$TMP/BOX.zip" "$TMP/x"
APP=$(find "$TMP/x" -maxdepth 2 -name "BOX.app" -type d | head -1)
[ -n "$APP" ] || { echo "BOX.app was not found in the download."; exit 1; }

echo "→ Installing BOX into $DEST…"
if [ -z "${BOX_APP_DIR:-}" ]; then osascript -e 'tell application "BOX" to quit' >/dev/null 2>&1 || true; fi
rm -rf "$DEST/BOX.app"
ditto "$APP" "$DEST/BOX.app"
xattr -cr "$DEST/BOX.app"

echo "✓ BOX $VER is installed."
if [ -z "${BOX_APP_DIR:-}" ]; then open "$DEST/BOX.app"; fi
