#!/usr/bin/env bash

# cotton.sh <version>

VERSION=$1
URL="https://github.com/chonla/cotton/archive/${VERSION}.tar.gz"
CHECKSUM=$(curl -sL ${URL} | shasum -a 256 | awk '{print $1;}')

tmpl="# ${VERSION}
class Cotton < Formula
    desc \"Markdown Test Specification Runner\"
    homepage \"https://github.com/chonla/cotton\"
    url \"${URL}\"
    sha256 \"${CHECKSUM}\"
    depends_on \"go\" => :build

    def install
        system \"bash\", \"build.sh\"
        bin.install \"/tmp/.gobuild/bin/cotton\" => \"cotton\"
    end

    test do
        system \"#{bin}/cotton\", \"-v\"
    end
end"

echo "$tmpl" > cotton.rb