class Ameba < Formula
  desc "A static code analysis tool for Crystal"
  homepage "https://github.com/veelenga/ameba"
  url "https://github.com/veelenga/ameba/archive/v0.8.1.tar.gz"
  version "0.8.1"
  sha256 "26c9bd643efc15747d073ceefd6d932ca9fa00c4bc7624ecb8897e014410e9dc"
  head "https://github.com/veelenga/ameba.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "bin/ameba"
  end
end
