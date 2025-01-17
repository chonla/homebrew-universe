# 1.2.0
class Cotton < Formula
    desc "Markdown Test Specification Runner"
    homepage "https://github.com/chonla/cotton"
    on_macos do
        on_arm do
            url "https://github.com/chonla/cotton/releases/download/1.2.0/cotton-1.2.0-darwin-arm64.tar.gz"
            sha256 "417a949e931a6ca30738493b64876bd7d25c8f84abbf5e1e9088c8ab520d48c5"
        end
        on_intel do
            url "https://github.com/chonla/cotton/releases/download/1.2.0/cotton-1.2.0-darwin-amd64.tar.gz"
            sha256 "4960916a6f8c6e6d77d8f4b8158afdce024b55fe20eee6cde69aeebe7ed273e5"
        end
    end
    on_linux do
        on_intel do
            url "https://github.com/chonla/cotton/releases/download/1.2.0/cotton-1.2.0-linux-amd64.tar.gz"
            sha256 "d7b8bc5ad621498493529418acaf2f17322b4d03ce22540ad8efe5668e9e2668"
        end
    end

    def install
        bin.install "cotton" => "cotton"
    end

    test do
        system "#{bin}/cotton", "-v"
    end
end
