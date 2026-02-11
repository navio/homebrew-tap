class Bm < Formula
  desc "CLI bookmarks manager"
  homepage "https://github.com/navio/bookmarks"
  url "https://github.com/navio/bookmarks/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8fc4a1af0592caf105e77dac7282bf0e6606d04ee7fa9a620147c903a798cbc0"
  version "0.1.0"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "bm", "./cmd/bm"
    bin.install "bm"
  end

  test do
    system "#{bin}/bm", "--version"
  end
end
