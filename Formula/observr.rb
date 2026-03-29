class Observr < Formula
  desc "Zero-config local observability collector for AI agents and developers"
  homepage "https://github.com/ydking0911/observr"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ydking0911/observr/releases/download/v#{version}/observrd-darwin-arm64"
      sha256 "182c76e1ae219d9f4f96accf317f3f8ef4f12d0b26382e4342273e77f9550726"
    end
    on_intel do
      url "https://github.com/ydking0911/observr/releases/download/v#{version}/observrd-darwin-amd64"
      sha256 "c55d092bfd9693ed52066c5d853e50b620f6d6eb52564442903486075e3d7330"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ydking0911/observr/releases/download/v#{version}/observrd-linux-arm64"
      sha256 "4f9badcdadba6b7f850823039f7a471fd8a593b8e76bb35a09b28f3e1d44c960"
    end
    on_intel do
      url "https://github.com/ydking0911/observr/releases/download/v#{version}/observrd-linux-amd64"
      sha256 "d9831022aaa2b81401dceca39aff84f5eac0d9e657b474aba39229de01d3f5b5"
    end
  end

  def install
    bin.install stable.url.split("/").last => "observrd"
  end

  test do
    assert_match "observrd", shell_output("#{bin}/observrd --help 2>&1", 2)
  end
end
