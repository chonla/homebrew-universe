# 2.0.0
class Cotton < Formula
    desc "Markdown Test Specification Runner"
    homepage "https://github.com/chonla/cotton"
    on_macos do
        on_arm do
            url "https://github.com/chonla/cotton/releases/download/2.0.0/cotton-2.0.0-darwin-arm64.tar.gz"
            sha256 "2c88c0bbf24878c0d866ca53971fe15ecde4e31c236de4f3cc98403516811d9b"
        end
        on_intel do
            url "https://github.com/chonla/cotton/releases/download/2.0.0/cotton-2.0.0-darwin-amd64.tar.gz"
            sha256 "c44e702785be3d0c47ce98ca1e3d9bf27111b33c639217de7fc1e85f30b9b104"
        end
    end
    on_linux do
        on_intel do
            url "https://github.com/chonla/cotton/releases/download/2.0.0/cotton-2.0.0-linux-amd64.tar.gz"
            sha256 "2e7521a5a116e2be22baa72bfa65aeec2fc996eca1c36746bb2c6b6dfdfd2191"
        end
    end

    def install
        bin.install "cotton" => "cotton"
    end

    test do
        system "#{bin}/cotton", "-v"
    end
end
