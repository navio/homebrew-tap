class Bm < Formula
  desc "CLI bookmarks manager"
  homepage "https://github.com/navio/bookmarks"
  url "https://github.com/navio/bookmarks/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "5d0de4c9553d790fd6e1f1d213ebe513084abb6df28865d7421d1c9cd4356c8e"
  version "0.3.0"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "bm", "./cmd/bm"
    bin.install "bm"
  end

  test do
    system "#{bin}/bm", "--version"
  end
end
