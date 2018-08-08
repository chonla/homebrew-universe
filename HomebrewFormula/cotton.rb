class Cotton < Formula
    desc "Markdown Test Specification Runner"
    homepage "https://github.com/chonla/cotton"
    url "https://github.com/chonla/cotton/archive/0.1.27.tar.gz"
    sha256 "72feef7ef7cd1e677879b4c05138b44c4bacfa6b648b9e8d9fec1b4756b8d134"
    depends_on "go" => :build

    def install
        system "bash", "build.sh"
        bin.install "/tmp/.gobuild/bin/cotton" => "cotton"
    end

    test do
        system "#{bin}/cotton", "-v"
    end
end
