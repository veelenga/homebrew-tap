class Ameba < Formula
  desc "A static code analysis tool for Crystal"
  homepage "https://github.com/veelenga/ameba"
  url "https://github.com/veelenga/ameba/archive/v0.11.0.tar.gz"
  version "0.11.0"
  sha256 "b402f56a74b7e4cc951be0d5da3ac466e366a1d8b4f3adfe852884375173fa68"
  head "https://github.com/veelenga/ameba.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "bin/ameba"
  end
end
