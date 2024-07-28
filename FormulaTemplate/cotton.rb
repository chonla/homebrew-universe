# 1.1.2
class Cotton < Formula
    desc "Markdown Test Specification Runner"
    homepage "https://github.com/chonla/cotton"
    on_macos do
        on_arm do
            url "https://github.com/chonla/cotton/releases/download/1.1.2/cotton-1.1.2-darwin-arm64.tar.gz"
            sha256 "9d5be886489074f9447682cb9ac793001c588843c895a7b69896f1a0ca38f548"
        end
        on_intel do
            url "https://github.com/chonla/cotton/releases/download/1.1.2/cotton-1.1.2-darwin-amd64.tar.gz"
            sha256 "0accc021f6c10abf2a8cc3c0cb66ed72c86ce9b462d43c1b520cf010a4814523"
        end
    end
    on_linux do
        on_intel do
            url "https://github.com/chonla/cotton/releases/download/1.1.2/cotton-1.1.2-linux-amd64.tar.gz"
            sha256 "234540dc13ddd2da7841c2745e497b09e61ecc380676b3fc9a1077a59c6b12ff"
        end
    end

    def install
        bin.install "cotton" => "cotton"
    end

    test do
        system "#{bin}/cotton", "-v"
    end
end
