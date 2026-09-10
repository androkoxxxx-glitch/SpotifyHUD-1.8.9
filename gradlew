#!/bin/sh
set -e
DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
VERSION="2.14.1"
DIST="$HOME/.gradle/spotifyhud-wrapper/gradle-$VERSION"
ZIP="$HOME/.gradle/spotifyhud-wrapper/gradle-$VERSION-bin.zip"
if [ ! -x "$DIST/bin/gradle" ]; then
  mkdir -p "$HOME/.gradle/spotifyhud-wrapper"
  echo "[SpotifyHUD] Downloading Gradle $VERSION..."
  curl -L "https://services.gradle.org/distributions/gradle-$VERSION-bin.zip" -o "$ZIP"
  unzip -q -o "$ZIP" -d "$HOME/.gradle/spotifyhud-wrapper"
  rm -f "$ZIP"
fi
exec "$DIST/bin/gradle" "$@"
