class Helloworld < Formula
    desc "Hello world test application"
    homepage "https://github.com/chonla/helloworld"
    version "v0.0.9"
    on_macos do
        on_arm do
            url "https://github.com/chonla/helloworld/releases/download/#{version}/helloworld-#{version}-darwin-arm64.tar.gz"
            sha256 "58920d773c4ba06cc286ac4adb808e1ba9a9b867c9e0a0d2818d5b351bee715f"
        end
        on_intel do
            url "https://github.com/chonla/helloworld/releases/download/#{version}/helloworld-#{version}-darwin-amd64.tar.gz"
            sha256 "7441c24b076d40a3735643371c0e6422fa78542d78fd962ff738e45470d53b6c"
        end
    end

    def install
        bin.install "/tmp/.gobuild/bin/cotton" => "cotton"
    end

    test do
        system "#{bin}/helloworld"
    end
end
