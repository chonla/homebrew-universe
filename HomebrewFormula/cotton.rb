# 1.1.1
class Cotton < Formula
    desc "Markdown Test Specification Runner"
    homepage "https://github.com/chonla/cotton"
    on_macos do
        on_arm do
            url "https://github.com/chonla/cotton/releases/download/1.1.1/cotton-1.1.1-darwin-arm64.tar.gz"
            sha256 "c9d65c7157c8fc4cb285edcb48ae28e24b8952d5714e34ee70d678e7e4f3f94b"
        end
        on_intel do
            url "https://github.com/chonla/cotton/releases/download/1.1.1/cotton-1.1.1-darwin-amd64.tar.gz"
            sha256 "e005fca36ae32cf83b5761246b59a5fffcd92034f9017a6e8232a2a4240230d6"
        end
    end
    on_linux do
        on_intel do
            url "https://github.com/chonla/cotton/releases/download/1.1.1/cotton-1.1.1-linux-amd64.tar.gz"
            sha256 "c7bfc3548d5d6061900d4f7551d70cb6ab4c686a620b15d24bb87fa203335029"
        end
    end

    def install
        bin.install "cotton" => "cotton"
    end

    test do
        system "#{bin}/cotton", "-v"
    end
end
