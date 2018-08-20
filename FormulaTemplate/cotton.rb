class Cotton < Formula
    desc "Markdown Test Specification Runner"
    homepage "https://github.com/chonla/cotton"
    url "https://github.com/chonla/cotton/archive/0.1.29.tar.gz"
    sha256 "805f286f471e276e4f5a36abf6f99e089f5df4930a45f86e21de536d821f8658"
    depends_on "go" => :build

    def install
        system "bash", "build.sh"
        bin.install "/tmp/.gobuild/bin/cotton" => "cotton"
    end

    test do
        system "#{bin}/cotton", "-v"
    end
end
