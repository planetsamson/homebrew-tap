class Planetdan < Formula
  desc "Planet Dan Desktop application"
  homepage "https://github.com/planetsamson/development"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetdan-macos-arm64.tar.gz"
      sha256 "47293c39223a10610a50637172102420200a3bc5f568a770afede60cd2c3bf86"

      def install
        prefix.install "planetdan.app"
        bin.write_exec_script prefix/"planetdan.app/Contents/MacOS/planetdan"
      end
    end

    on_intel do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetdan-macos-x64.tar.gz"
      sha256 "828e743c94ce9e1af33078006ee68cb9ab86ada8f76c70a378c675328aee1bd9"

      def install
        prefix.install "planetdan.app"
        bin.write_exec_script prefix/"planetdan.app/Contents/MacOS/planetdan"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetdan-linux-x64.tar.gz"
      sha256 "55e056a3a17df07f1805a72c81a4e3c95516d53f0d836245117296cb7b0830c6"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"bin/planetdan"
      end
    end

    on_arm do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetdan-linux-arm64.tar.gz"
      sha256 "e3d94c08d2aa9172b07f3e3630d667172a078849fc0f720005534dfb33859aca"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"bin/planetdan"
      end
    end
  end

  test do
    assert_predicate bin/"planetdan", :exist?
  end
end
