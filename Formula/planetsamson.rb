class Planetsamson < Formula
  desc "Planet Samson Desktop application"
  homepage "https://github.com/planetsamson/development"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.3/planetsamson-macos-arm64.tar.gz"
      sha256 "6c1727430637e718947da408d875352ec158ba0418618d17f8576f0c3017b37b"

      def install
        prefix.install "planetsamson.app"
        bin.write_exec_script prefix/"planetsamson.app/Contents/MacOS/planetsamson"
      end
    end

    on_intel do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.3/planetsamson-macos-x64.tar.gz"
      sha256 "5afccb745c18631557660515b62e53a4c269f13b5adb5f6ee4d178168142e26b"

      def install
        prefix.install "planetsamson.app"
        bin.write_exec_script prefix/"planetsamson.app/Contents/MacOS/planetsamson"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.3/planetsamson-linux-x64.tar.gz"
      sha256 "625b0fc6f42c2735cee6c25b24f6cad86cfe505af5920382510ae220fd6c2d07"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"bin/planetsamson"
      end
    end

    on_arm do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.3/planetsamson-linux-arm64.tar.gz"
      sha256 "c255ae20088a41a5adebb2069ac86db88ecbb470e2290d8f13ff2762c4d315e4"

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
