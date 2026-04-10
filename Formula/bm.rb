class Bm < Formula
  desc "CLI bookmarks manager"
  homepage "https://github.com/navio/bookmarks"
  url "https://github.com/navio/bookmarks/archive/9231b6ad1253877618a825fa646f8fe98446022a.tar.gz"
  sha256 "43f83087294c90e0f1f0ae83029e3817b46f59192d1e8bee4b4cbd575dd51cdf"
  version "0.3.3"
  revision 1

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "bm", "./cmd/bm"
    bin.install "bm"
  end

  test do
    system "#{bin}/bm", "--version"
  end
end
