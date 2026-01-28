class Planetsamson < Formula
  desc "Planet Samson Desktop application"
  homepage "https://github.com/planetsamson/development"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetsamson-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER"

      def install
        prefix.install "planetsamson.app"
        bin.write_exec_script prefix/"planetsamson.app/Contents/MacOS/planetsamson"
      end
    end

    on_intel do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetsamson-macos-x64.tar.gz"
      sha256 "PLACEHOLDER"

      def install
        prefix.install "planetsamson.app"
        bin.write_exec_script prefix/"planetsamson.app/Contents/MacOS/planetsamson"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetsamson-linux-x64.tar.gz"
      sha256 "PLACEHOLDER"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"bin/planetsamson"
      end
    end

    on_arm do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetsamson-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"

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
