#!/usr/bin/env bash

# nextver.sh <version>

VERSION=$1

verify_release() {
    local version="$1"
    local os="$2"
    local arch="$3"

    url="https://github.com/chonla/nextver/releases/download/${version}/nextver-${version}-${os}-${arch}.tar.gz"
    local checksum_url="${url}.sha256"

    echo -n "collecting release data for ${os} ${arch} ..."
    file_checksum=$(curl -sL ${url} | shasum -a 256 | awk '{print $1;}')
    echo ""

    echo -n "verifying release data for ${os} ${arch} ..."
    local expected_checksum=$(curl -sL ${checksum_url})
    if [ "$file_checksum" == "$expected_checksum" ]; then
        echo " passed"
        return 0
    else
        echo " failed"
        echo "  ${expected_checksum} is expected"
        echo "  ${file_checksum} is found"
        return 1
    fi
}

echo "generating homebrew formula for nextver ${VERSION}"

if verify_release "${VERSION}" "darwin" "arm64"; then
    DARWIN_ARM64_URL=${url}
    DARWIN_ARM64_CHECKSUM=${file_checksum}
else
    exit 1
fi

if verify_release "${VERSION}" "darwin" "amd64"; then
    DARWIN_AMD64_URL=${url}
    DARWIN_AMD64_CHECKSUM=${file_checksum}
else
    exit 1
fi


if verify_release "${VERSION}" "linux" "amd64"; then
    LINUX_AMD64_URL=${url}
    LINUX_AMD64_CHECKSUM=${file_checksum}
else
    exit 1
fi


tmpl="# ${VERSION}
class Nextver < Formula
    desc \"Conventional-commit-based next version number evaluator.\"
    homepage \"https://github.com/chonla/nextver\"
    on_macos do
        on_arm do
            url \"${DARWIN_ARM64_URL}\"
            sha256 \"${DARWIN_ARM64_CHECKSUM}\"
        end
        on_intel do
            url \"${DARWIN_AMD64_URL}\"
            sha256 \"${DARWIN_AMD64_CHECKSUM}\"
        end
    end
    on_linux do
        on_intel do
            url \"${LINUX_AMD64_URL}\"
            sha256 \"${LINUX_AMD64_CHECKSUM}\"
        end
    end

    def install
        bin.install \"nextver\" => \"nextver\"
    end

    test do
        system \"#{bin}/nextver\", \"-v\"
    end
end"

echo "$tmpl" > nextver.rb

echo "nextver.rb is generated."