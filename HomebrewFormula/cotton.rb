class Cotton < Formula
    desc "Markdown Test Specification Runner"
    homepage "https://github.com/chonla/cotton"
    url "https://github.com/chonla/cotton/archive/0.3.6.tar.gz"
    sha256 "987864eca79d979834778953867f91e34d3abdf7540b0760f99429e5508fce55"
    depends_on "go" => :build

    def install
        system "bash", "build.sh"
        bin.install "/tmp/.gobuild/bin/cotton" => "cotton"
    end

    test do
        system "#{bin}/cotton", "-v"
    end
end
