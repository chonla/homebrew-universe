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
    on_linux do
      on_intel do
        url "https://github.com/chonla/helloworld/releases/download/#{version}/helloworld-#{version}-linux-amd64.tar.gz"
        sha256 "5ddfaac0fea716013604d6a89619d3567b407664e3f20ff29af9c9098f5797fc"
      end
    end
  
    def install
        bin.install "helloworld" => "helloworld"
    end
  
    test do
        system "#{bin}/helloworld"
    end
  end
  