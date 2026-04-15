# This formula is auto-updated by GoReleaser on each release.
# Manual edits will be overwritten.
class Korva < Formula
  desc "AI ecosystem CLI for enterprise development teams"
  homepage "https://github.com/AlcanDev/korva"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/AlcanDev/korva/releases/download/v0.1.0/korva_Darwin_arm64.tar.gz"
      sha256 "placeholder_sha256_arm64_macos"
    end
    on_intel do
      url "https://github.com/AlcanDev/korva/releases/download/v0.1.0/korva_Darwin_amd64.tar.gz"
      sha256 "placeholder_sha256_amd64_macos"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AlcanDev/korva/releases/download/v0.1.0/korva_Linux_arm64.tar.gz"
      sha256 "placeholder_sha256_arm64_linux"
    end
    on_intel do
      url "https://github.com/AlcanDev/korva/releases/download/v0.1.0/korva_Linux_amd64.tar.gz"
      sha256 "placeholder_sha256_amd64_linux"
    end
  end

  def install
    bin.install "korva"
    bin.install "korva-vault"
    bin.install "korva-sentinel"
  end

  test do
    system "#{bin}/korva", "--help"
    system "#{bin}/korva-vault", "--help"
    system "#{bin}/korva-sentinel", "--help"
  end
end
