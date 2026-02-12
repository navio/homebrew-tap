class Bm < Formula
  desc "CLI bookmarks manager"
  homepage "https://github.com/navio/bookmarks"
  url "https://github.com/navio/bookmarks/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "c1519e7004a56da7f82a6539c2c8ac10374c39caaf19504142c4ddd64127ad7b"
  version "0.2.0"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "bm", "./cmd/bm"
    bin.install "bm"
  end

  test do
    system "#{bin}/bm", "--version"
  end
end
