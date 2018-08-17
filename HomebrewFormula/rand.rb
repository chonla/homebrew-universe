class Rand < Formula
    desc "Randomizer cli"
    homepage "https://github.com/chonla/rand"
    url "https://github.com/chonla/rand/archive/0.1.1.tar.gz"
    sha256 "0d09bb5c3bf25b9a7ec5f7f60b45238c6737c893fada4ca88f1e7b425ffeac95"
    depends_on "go" => :build

    def install
        system "bash", "build.sh"
        bin.install "/tmp/.gobuild/bin/rand" => "rand"
    end

    test do
        system "#{bin}/rand", "-v"
    end
end
