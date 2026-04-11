class Bm < Formula
  desc "CLI bookmarks manager"
  homepage "https://github.com/navio/bookmarks"
  url "https://github.com/navio/bookmarks/archive/fba19131a73d09d6a1a5c67e402a33e7687feb07.tar.gz"
  sha256 "84eae8464ca868dfff43e02e28aad251149df2f22689f0948da867e4d3e880da"
  version "0.4.1"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "bm", "./cmd/bm"
    bin.install "bm"
  end

  test do
    system "#{bin}/bm", "--version"
  end
end
