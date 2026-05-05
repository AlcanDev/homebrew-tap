# This formula is auto-updated by GoReleaser on each release.
# Manual edits will be overwritten.
class Korva < Formula
  desc "AI ecosystem CLI for enterprise development teams"
  homepage "https://korva.dev"
  license "MIT"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/AlcanDev/korva/releases/download/v1.1.0/korva_1.1.0_darwin_arm64.tar.gz"
      sha256 "1bd39db9dbf1efdc0a076df44e66ed962130daf859571ad08efb711d9b5a87e2"
    end
    on_intel do
      url "https://github.com/AlcanDev/korva/releases/download/v1.1.0/korva_1.1.0_darwin_amd64.tar.gz"
      sha256 "5a4e016cba628607c87ac43c4c80fee1e974b8cfe40a52d08b698adf3cb50ffa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AlcanDev/korva/releases/download/v1.1.0/korva_1.1.0_linux_arm64.tar.gz"
      sha256 "ae0641b6c5bbefc0d1083cd185806d0eac793967526e90ab760c955d37743759"
    end
    on_intel do
      url "https://github.com/AlcanDev/korva/releases/download/v1.1.0/korva_1.1.0_linux_amd64.tar.gz"
      sha256 "00153e3bcd3f2c5a6e799603abfc957662e445a6a8b15595589f21ed1b4ec1ff"
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
