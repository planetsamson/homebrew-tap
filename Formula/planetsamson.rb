class Planetsamson < Formula
  desc "Planet Samson Desktop application"
  homepage "https://github.com/planetsamson/development"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetsamson-macos-arm64.tar.gz"
      sha256 "ea231d04bfec82dade94cc7fb95492bbef2f29100f09ebb1dce6ea059cf660f3"

      def install
        prefix.install "planetsamson.app"
        bin.write_exec_script prefix/"planetsamson.app/Contents/MacOS/planetsamson"
      end
    end

    on_intel do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetsamson-macos-x64.tar.gz"
      sha256 "abf9ce62bfb910b0c5c660e035461129a14a726c672dd9b7b6f354a7ff51e074"

      def install
        prefix.install "planetsamson.app"
        bin.write_exec_script prefix/"planetsamson.app/Contents/MacOS/planetsamson"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetsamson-linux-x64.tar.gz"
      sha256 "9a322393a3dd9be74c36125873dcbf2335b38de04e27ef96d96c73c890eec959"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"bin/planetsamson"
      end
    end

    on_arm do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetsamson-linux-arm64.tar.gz"
      sha256 "13c8928fc1b2bb054dc8c374f6428b939b8db72883b8ca99a2a2a13a2cb5945d"

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
