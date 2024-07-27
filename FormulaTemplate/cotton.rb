# 1.1.0
class Cotton < Formula
    desc "Markdown Test Specification Runner"
    homepage "https://github.com/chonla/cotton"
    on_macos do
        on_arm do
            url "https://github.com/chonla/cotton/releases/download/1.1.0/cotton-1.1.0-darwin-arm64.tar.gz"
            sha256 "3fe28a6ee381eaf172f0eef6f64e591428a2bd222942295b18775a9508594c22"
        end
        on_intel do
            url "https://github.com/chonla/cotton/releases/download/1.1.0/cotton-1.1.0-darwin-amd64.tar.gz"
            sha256 "d1872c287a8a2a7a30e705ae28f3a7b3a5f473649bf4f6178fdd5e428d39a65a"
        end
    end
    on_linux do
        on_intel do
            url "https://github.com/chonla/cotton/releases/download/1.1.0/cotton-1.1.0-linux-amd64.tar.gz"
            sha256 "c38a5c92ee1c0ae5cd4eebda6dfd5a81a5030ff014f6ab980e3b79a755df41e0"
        end
    end

    def install
        bin.install "cotton" => "cotton"
    end

    test do
        system "#{bin}/cotton", "-v"
    end
end
