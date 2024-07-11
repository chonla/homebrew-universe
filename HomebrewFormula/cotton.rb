# 1.0.0
class Cotton < Formula
    desc "Markdown Test Specification Runner"
    homepage "https://github.com/chonla/cotton"
    on_macos do
        on_arm do
            url "https://github.com/chonla/cotton/releases/download/1.0.0/cotton-1.0.0-darwin-arm64.tar.gz"
            sha256 "a0d8ff747b3981947729fb02fe1f6730e0ba4ee0b3d03501f2687a1bced361c5"
        end
        on_intel do
            url "https://github.com/chonla/cotton/releases/download/1.0.0/cotton-1.0.0-darwin-amd64.tar.gz"
            sha256 "898f39fdb26b69795c0de8b9a2ad8e3618b5db9a9c4c68aff86c5cb99ce3b554"
        end
    end
    on_linux do
        on_intel do
            url "https://github.com/chonla/cotton/releases/download/1.0.0/cotton-1.0.0-linux-amd64.tar.gz"
            sha256 "6a985a9a8ebcf03965366e97540dddb7488d0829d9fa3bfcd27a187ab80321a8"
        end
    end

    def install
        bin.install "cotton" => "cotton"
    end

    test do
        system "#{bin}/cotton", "-v"
    end
end
