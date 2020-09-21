#!/usr/bin/env bash

set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")"

TMPDIR="$(mktemp -d)"
cleanup() {
    [[ -d "$TMPDIR" ]] && rm -rf "$TMPDIR"
}
trap cleanup EXIT


main() {
    local srcurl="$(nix-instantiate --eval -A "mikutter.src.urls.0" ../../../../.. | tr -d '"')"
    local output="$(nix-prefetch-url --print-path "$srcurl")"
    local hash="$(sed -n '1p' <<<"$output")"
    local tarball="$(sed -n '2p' <<<"$output")"

    sed -i "s/sha256 = \".*\"/sha256 = \"$hash\"/" default.nix

    # remove current Gemfiles
    find . -type f -name Gemfile -exec rm {} \;
    find . -type d -exec rmdir -p {} \; ||:

    # replace with newer Gemfiles
    pushd "$TMPDIR"
    tar xf "$tarball" --strip-components 1
    find . -type f -not -name Gemfile -exec rm {} \;
    find . -type d -exec rmdir -p {} \; ||:
    popd
    mv "$TMPDIR"/* .

    # generate nix expression
    rm gemset.nix Gemfile.lock ||:
    bundle lock
    bundix
}

bundle() {
    "$(nix-build ../../../../.. --no-out-link -A bundler)"/bin/bundle "$@"
}

bundix() {
    "$(nix-build ../../../../.. --no-out-link -A bundix)"/bin/bundix "$@"
}

main
