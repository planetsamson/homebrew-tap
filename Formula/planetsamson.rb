class Planetsamson < Formula
  desc "Planet Samson Desktop application"
  homepage "https://github.com/planetsamson/development"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.1/planetsamson-macos-arm64.tar.gz"
      sha256 "281e39ac47d192bffd00a3dd3670f663d7ba00929fd2996b3615348d0bcbb795"

      def install
        prefix.install "planetsamson.app"
        bin.write_exec_script prefix/"planetsamson.app/Contents/MacOS/planetsamson"
      end
    end

    on_intel do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.1/planetsamson-macos-x64.tar.gz"
      sha256 "e049b5379a3324ebc495b341757f6477407b183214810f6fe11a27e2f80cc679"

      def install
        prefix.install "planetsamson.app"
        bin.write_exec_script prefix/"planetsamson.app/Contents/MacOS/planetsamson"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.1/planetsamson-linux-x64.tar.gz"
      sha256 "62f7b41f475e38b31f59bbf34f0d6deb63161900869e5f80bacd622272b4322f"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"bin/planetsamson"
      end
    end

    on_arm do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.1/planetsamson-linux-arm64.tar.gz"
      sha256 "ea98c770f55b8e6932414d741c94e4c4a05d7aac246a3b2013a69b04c07c2a29"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"bin/planetsamson"
      end
    end
  end

  test do
    assert_predicate bin/"planetsamson", :exist?
  end
end
