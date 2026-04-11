class Bm < Formula
  desc "CLI bookmarks manager"
  homepage "https://github.com/navio/bookmarks"
  url "https://github.com/navio/bookmarks/archive/bcb8f917c82488f1c40340c4702b6f4cfbf2f70e.tar.gz"
  sha256 "837e3db897d23bcdc0cd30b79e2a70d626195ad807db7ebf8e142e858da0d02e"
  version "0.4.2"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "bm", "./cmd/bm"
    bin.install "bm"
  end

  def caveats
    <<~EOS
      Enable shell integration (recommended) to make `bm go`, `bm find`, and `bm table` jump directly:
        echo 'eval "$(bm init zsh)"' >> ~/.zshrc
        source ~/.zshrc

      Bash users can use:
        echo 'eval "$(bm init bash)"' >> ~/.bashrc
        source ~/.bashrc
    EOS
  end

  test do
    system "#{bin}/bm", "--version"
  end
end
