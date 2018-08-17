class Rand < Formula
    desc "Randomizer cli"
    homepage "https://github.com/chonla/rand"
    url "https://github.com/chonla/rand/archive/0.1.0.tar.gz"
    sha256 "e4cdb443ab58938363b5ee5d2c5d5e19160e48fca52d32ecfbfdec8e42583c7e"
    depends_on "go" => :build

    def install
        system "bash", "build.sh"
        bin.install "/tmp/.gobuild/bin/rand" => "rand"
    end

    test do
        system "#{bin}/rand", "-v"
    end
end
