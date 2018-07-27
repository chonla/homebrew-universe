class Cotton < Formula
    desc "Markdown Test Specification Runner"
    homepage "https://github.com/chonla/cotton"
    url "https://github.com/chonla/cotton/archive/0.1.20.tar.gz"
    sha256 "1a12a6b50a097d91b28427cc4b11ef09c1694973b2f700f6f0ea65011ca95e81"
    depends_on "go" => :build

    def install
        system "bash", "build.sh"
        bin.install "/tmp/.gobuild/bin/cotton" => "cotton"
    end

    test do
        system "#{bin}/cotton", "-v"
    end
end
