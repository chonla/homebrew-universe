# v0.2.1
class Rand < Formula
    desc "Randomizer cli"
    homepage "https://github.com/chonla/rand"
    url "https://github.com/chonla/rand/archive/v0.2.1.tar.gz"
    sha256 "484e1a8a24566e5c849009f9a4b301d2c920a95f33e67dc5f2916ef2bbd3b08b"
    depends_on "go" => :build

    def install
        system "bash", "build.sh"
        bin.install "/tmp/.gobuild/bin/rand" => "rand"
    end

    test do
        system "#{bin}/rand", "-v"
    end
end
