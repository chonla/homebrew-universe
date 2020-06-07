#!/usr/bin/env bash

# rand.sh <version>

VERSION=$1
URL="https://github.com/chonla/rand/archive/${VERSION}.tar.gz"
CHECKSUM=$(curl -sL ${URL} | shasum -a 256 | awk '{print $1;}')

tmpl="# ${VERSION}
class Rand < Formula
    desc \"Randomizer cli\"
    homepage \"https://github.com/chonla/rand\"
    url \"${URL}\"
    sha256 \"${CHECKSUM}\"
    depends_on \"go\" => :build

    def install
        system \"bash\", \"build.sh\"
        bin.install \"/tmp/.gobuild/bin/rand\" => \"rand\"
    end

    test do
        system \"#{bin}/rand\", \"-v\"
    end
end"

echo "$tmpl" > rand.rb