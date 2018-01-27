class Ameba < Formula
  desc "A static code analysis tool for Crystal"
  homepage "https://github.com/veelenga/ameba"
  url "https://github.com/veelenga/ameba/archive/v0.4.2.tar.gz"
  version "0.4.2"
  sha256 "e755ce18ac9046d1f0e7a32c775b5673c8b8a6011145663cd3473b8760657d78"
  head "https://github.com/veelenga/ameba.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "bin/ameba"
  end
end
