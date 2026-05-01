# This formula is auto-updated by GoReleaser on each release.
# Manual edits will be overwritten.
class Korva < Formula
  desc "AI ecosystem CLI for enterprise development teams"
  homepage "https://korva.dev"
  license "MIT"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/AlcanDev/korva/releases/download/v1.0.0/korva_1.0.0_darwin_arm64.tar.gz"
      sha256 "fb2731ab41183d25d080ceb8289fe5cb0e86677a6af3e5a6cecb98fe0f4329cf"
    end
    on_intel do
      url "https://github.com/AlcanDev/korva/releases/download/v1.0.0/korva_1.0.0_darwin_amd64.tar.gz"
      sha256 "a5cadc49da4117091c7a6ebe23b6ccc896b8029e8ea340336774d7c1fdb3e36e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AlcanDev/korva/releases/download/v1.0.0/korva_1.0.0_linux_arm64.tar.gz"
      sha256 "b02f4a101b0f1602e8c4b610793ea99fe529e170c8bc790633c6aa2650f866c4"
    end
    on_intel do
      url "https://github.com/AlcanDev/korva/releases/download/v1.0.0/korva_1.0.0_linux_amd64.tar.gz"
      sha256 "10e22e9149b3bf9151f4b7f96c2587a4d9d2164b971c14b3707634d11d5d4e77"
    end
  end

  def install
    bin.install "korva"
    bin.install "korva-vault"
    bin.install "korva-sentinel"
    bash_completion.install "completions/korva.bash" => "korva"
    zsh_completion.install "completions/korva.zsh" => "_korva"
    fish_completion.install "completions/korva.fish"
  end

  test do
    system "#{bin}/korva", "--version"
  end
end
