# v1.0.0
class Nextver < Formula
    desc "Conventional-commit-based next version number evaluator."
    homepage "https://github.com/chonla/nextver"
    on_macos do
        on_arm do
            url "https://github.com/chonla/nextver/releases/download/v1.0.0/nextver-v1.0.0-darwin-arm64.tar.gz"
            sha256 "c47e4351eab2724f490a567925f1f1f2bae3a0053fbe5f1df8c1cb42af4996ea"
        end
        on_intel do
            url "https://github.com/chonla/nextver/releases/download/v1.0.0/nextver-v1.0.0-darwin-amd64.tar.gz"
            sha256 "09429495ffd55282e9634d50a1537c5da3ecf46eb11a8854429b0e4d096f6ed2"
        end
    end
    on_linux do
        on_arm do
            url "https://github.com/chonla/nextver/releases/download/v1.0.0/nextver-v1.0.0-linux-arm64.tar.gz"
            sha256 "0fd4fa07397a04c86f6524116a56115cab0f2ce07c0e4254085c8d6349084634"
        end
        on_intel do
            url "https://github.com/chonla/nextver/releases/download/v1.0.0/nextver-v1.0.0-linux-amd64.tar.gz"
            sha256 "9e601b65611ba6f20729e2b2ab5a6f15c8df27e947b98c42b9a3e6f2c9568a7d"
        end
    end

    def install
        bin.install "nextver" => "nextver"
    end

    test do
        system "#{bin}/nextver", "-v"
    end
end
