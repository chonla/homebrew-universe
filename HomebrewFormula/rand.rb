# 0.1.1
class Rand < Formula
    desc "Randomizer cli"
    homepage "https://github.com/chonla/rand"
    url "https://github.com/chonla/rand/archive/v0.2.1.tar.gz"
    sha256 "7e4fb562c6942f754afbb9ee1d1a04a46f90389ae3c3f80848093a2883d4f083"
    depends_on "go" => :build

    def install
        system "bash", "build.sh"
        bin.install "/tmp/.gobuild/bin/rand" => "rand"
    end

    test do
        system "#{bin}/rand", "-v"
    end
end
