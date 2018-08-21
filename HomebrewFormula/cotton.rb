class Cotton < Formula
    desc "Markdown Test Specification Runner"
    homepage "https://github.com/chonla/cotton"
    url "https://github.com/chonla/cotton/archive/0.2.1.tar.gz"
    sha256 "e24d80bcca3bd9de64414af6e569b3c0d40f38adc67d5e7e41d0631b8d64b9b9"
    depends_on "go" => :build

    def install
        system "bash", "build.sh"
        bin.install "/tmp/.gobuild/bin/cotton" => "cotton"
    end

    test do
        system "#{bin}/cotton", "-v"
    end
end
