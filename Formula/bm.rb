class Bm < Formula
  desc "CLI bookmarks manager"
  homepage "https://github.com/navio/bookmarks"
  url "https://github.com/navio/bookmarks/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "ad88ee5580d8f565c7cc1d8d6511d66a654b0355725d85b165a29060f50ab535"
  version "0.3.1"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "bm", "./cmd/bm"
    bin.install "bm"
  end

  test do
    system "#{bin}/bm", "--version"
  end
end
