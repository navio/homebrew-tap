class Bm < Formula
  desc "CLI bookmarks manager"
  homepage "https://github.com/navio/bookmarks"
  url "https://github.com/navio/bookmarks/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "0794bba7efa9b0cf00f9b082dc18fc5c8c47ea8492f1e242ddc557892cc83028"
  version "0.3.3"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "bm", "./cmd/bm"
    bin.install "bm"
  end

  test do
    system "#{bin}/bm", "--version"
  end
end
