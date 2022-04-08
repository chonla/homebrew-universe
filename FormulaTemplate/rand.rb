# v0.2.2
class Rand < Formula
    desc "Randomizer cli"
    homepage "https://github.com/chonla/rand"
    url "https://github.com/chonla/rand/archive/v0.2.2.tar.gz"
    sha256 "8cfc2453b326490d793add29282c9b9ef0a5b1b9c2c8448e8bb73acff0ba94ff"
    depends_on "go" => :build

    def install
        system "bash", "build.sh"
        bin.install "/tmp/.gobuild/bin/rand" => "rand"
    end

    test do
        system "#{bin}/rand", "-v"
    end
end
