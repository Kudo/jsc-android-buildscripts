#!/bin/bash -e

# download sources
rm -rf $PWD/build
TARGET_DIR=$PWD/build/download
SVN_URL="releases/WebKitGTK/webkit-${npm_package_config_webkitGTK}"
REPO_URL="https://github.com/WebKit/WebKit.git"

mkdir -p $TARGET_DIR
# FIXME: hardcoded branch
git clone $REPO_URL --branch 'webkitgtk/2.26' --depth 1 $TARGET_DIR/webkit

mkdir -p $TARGET_DIR/icu
curl "https://chromium.googlesource.com/chromium/deps/icu/+archive/${npm_package_config_chromiumICUCommit}.tar.gz" | tar xzf - -C $TARGET_DIR/icu
