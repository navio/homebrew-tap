class Bm < Formula
  desc "CLI bookmarks manager"
  homepage "https://github.com/navio/bookmarks"
  url "https://github.com/navio/bookmarks/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "90b51ab2ce56fab4eec28d2bb1a83c1bf1e75ca0c7af6f396ae33fd6db2df553"
  version "0.2.1"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "bm", "./cmd/bm"
    bin.install "bm"
  end

  test do
    system "#{bin}/bm", "--version"
  end
end
