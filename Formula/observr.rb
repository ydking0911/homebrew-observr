class Observr < Formula
  desc "Zero-config local observability collector for AI agents and developers"
  homepage "https://github.com/ydking0911/observr"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ydking0911/observr/releases/download/v#{version}/observrd-darwin-arm64"
      sha256 "e5288597b1aed9a9d47ed19232db6c48718e8c049031d5ab8241aa37bae71f79"
    end
    on_intel do
      url "https://github.com/ydking0911/observr/releases/download/v#{version}/observrd-darwin-amd64"
      sha256 "68b523b2c8f08ed81c0e9a0442361b6d814fc214e0ab021e801c9788e3c31006"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ydking0911/observr/releases/download/v#{version}/observrd-linux-arm64"
      sha256 "0934bd5d026d88db07bd5d172c8297b117e24e179ce63379637a806e04abf4db"
    end
    on_intel do
      url "https://github.com/ydking0911/observr/releases/download/v#{version}/observrd-linux-amd64"
      sha256 "3f418f8afa0fb68d9450fbe7989db4cb7c96b3e0535e2fa652cfea4f0091cafb"
    end
  end

  def install
    bin.install stable.url.split("/").last => "observrd"
  end

  test do
    assert_match "observrd", shell_output("#{bin}/observrd --help 2>&1", 2)
  end
end
