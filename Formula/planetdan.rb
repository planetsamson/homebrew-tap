class Planetdan < Formula
  desc "Planet Dan Desktop application"
  homepage "https://github.com/planetsamson/development"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetdan-macos-arm64.tar.gz"
      sha256 "c858deaed202c8e6868cccca752f81a5dae574cbcfd241702eb0eb3104ab76fb"

      def install
        prefix.install "planetdan.app"
        bin.write_exec_script prefix/"planetdan.app/Contents/MacOS/planetdan"
      end
    end

    on_intel do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetdan-macos-x64.tar.gz"
      sha256 "73be368463552f8ffd15202513cec71f7f35a3b0780b80ef7e37939f2f7c5c8f"

      def install
        prefix.install "planetdan.app"
        bin.write_exec_script prefix/"planetdan.app/Contents/MacOS/planetdan"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetdan-linux-x64.tar.gz"
      sha256 "69086f27d10b261540e8408dc94b236d52202fa45a7eae1e10a84fee79316e11"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"bin/planetdan"
      end
    end

    on_arm do
      url "https://github.com/planetsamson/desktop-releases/releases/download/v1.0.0/planetdan-linux-arm64.tar.gz"
      sha256 "5102ac9c995b3c0588091b653bc358fb5f14e5806c200cd52ede3f6282331ab2"

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
