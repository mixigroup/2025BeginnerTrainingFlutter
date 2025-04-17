#!/usr/bin/env bash

set -Eeufo pipefail

[[ "$(uname)" == "Darwin" && "$(uname -m)" == "arm64" ]] || {
  echo "This script only supports macOS on Apple Silicon."
  exit 1
}

# Install Rosetta2
/usr/bin/pgrep oahd >/dev/null 2>&1 || sudo softwareupdate --install-rosetta --agree-to-license

# Install mise
command -v mise >/dev/null 2>&1 || brew install mise
mise install

# Install Xcode
command -v aria2c >/dev/null 2>&1 || brew install aria2
command -v xcodes >/dev/null 2>&1 || brew install xcodes
xcodes install --experimental-unxip && xcodes select

# Install Android Studio
command -v studio >/dev/null 2>&1 || brew install android-studio
