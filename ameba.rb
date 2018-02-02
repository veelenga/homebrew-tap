class Ameba < Formula
  desc "A static code analysis tool for Crystal"
  homepage "https://github.com/veelenga/ameba"
  url "https://github.com/veelenga/ameba/archive/v0.5.0.tar.gz"
  version "0.5.0"
  sha256 "fd8dcd53345ab816d1c46bdeea2b63e41cdb248db218a89128237aecc5b4020c"
  head "https://github.com/veelenga/ameba.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "bin/ameba"
  end
end
